package utils;

use File::Compare;
use File::Basename;
use strict;
use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

$VERSION = 1.00;
@ISA     = qw(Exporter);
@EXPORT  = qw(execute info passInfo failInfo display );
@EXPORT_OK =
  qw(generate_binary_from_source generate_cfg extract_bc_from_cfg generate_linked_binary run_compare cleanup split_filename);

sub generate_binary_from_source {
    my $outdir      = shift @_;
    my $basename    = shift @_;
    my $suffix      = shift @_;
    my $ext         = shift @_;
    my $file        = shift @_;
    my $CC          = shift @_;
    my $CC_OPTIONS  = shift @_;
    my $CXX         = shift @_;
    my $CXX_OPTIONS = shift @_;
    my $arch        = shift @_;

    my $GCC_ARCH = "-m64";
    if ( $arch eq "32" ) {
        $GCC_ARCH = "-m32";
    }

    info("Generate source binary");
    execute(
"rm -rf ${outdir}${basename}.${suffix}.o ${outdir}${basename}.${suffix}.objdump"
    );

    if ( "asm" eq $ext ) {
        execute("nasm -f elf64 -o ${outdir}${basename}.${suffix}.o $file ;");
    }

    if ( "c" eq $ext ) {
        execute(
"${CC}  -O0 ${CC_OPTIONS}  $file ${GCC_ARCH}  -c   -o ${outdir}${basename}.${suffix}.o"
        );
    }

    if ( "cpp" eq $ext ) {
        execute(
"${CXX} -O0 ${CXX_OPTIONS}  $file ${GCC_ARCH}  -c   -o ${outdir}${basename}.${suffix}.o"
        );
    }

    if ( "o" eq $ext ) {
        execute("cp  $file  ${outdir}${basename}.${suffix}.o");
    }

    if ( "ll" eq $ext ) {
        execute(
"${CXX} -O0 ${CXX_OPTIONS}  $file ${GCC_ARCH}  -c   -o ${outdir}${basename}.${suffix}.o"
        );
    }

    execute(
"objdump -d ${outdir}${basename}.${suffix}.o 1>${outdir}${basename}.${suffix}.objdump 2>&1"
    );
}

## Generate cfg from binary
sub generate_cfg {
    my $outdir      = shift @_;
    my $basename    = shift @_;
    my $suffix      = shift @_;
    my $cfgext      = shift @_;
    my $master      = shift @_;
    my $map         = shift @_;
    my $entry       = shift @_;
    my $MCSEMA_HOME = shift @_;
    my $IDA         = shift @_;

    info("Generate cfg [$cfgext]");

    execute(
"rm -rf ${outdir}${basename}.${suffix}.i64 ${outdir}${basename}.${suffix}${cfgext}.cfg ${outdir}${basename}.${suffix}${cfgext}.log ${outdir}${basename}.${suffix}${cfgext}.tool.log"
    );

    my $BIN_DESCEND_PATH = "${MCSEMA_HOME}/mc-sema/bin_descend";
    if ( "" eq $master ) {
        execute(
"idal64 -B \"-S${BIN_DESCEND_PATH}/get_cfg.py --std-defs ${map} --batch --entry-symbol ${entry} --output ${outdir}${basename}.${suffix}${cfgext}.cfg --debug --debug_output ${outdir}${basename}.${suffix}.ida.log  --stack-vars\" -L${outdir}${basename}.${suffix}.ida.tool.log  ${outdir}${basename}.${suffix}.o "
        );
    }
    else {
        execute(
"$MCSEMA_HOME/bin/mcsema-disass --disassembler ${IDA} ${map} --arch amd64 --os linux --entrypoint ${entry} --binary  ${outdir}${basename}.${suffix}.o --output  ${outdir}${basename}.${suffix}${cfgext}.cfg --log_file ${outdir}${basename}.${suffix}.ida.log"
        );
    }

    if (   !( -e "${outdir}${basename}.${suffix}${cfgext}.cfg" )
        || !( -s "${outdir}${basename}.${suffix}${cfgext}.cfg" ) )
    {
        failInfo("${basename}: cfg generation: Failed");
        return;
    }
}

###  Generate BC from CFG
sub extract_bc_from_cfg {
    my $outdir      = shift @_;
    my $basename    = shift @_;
    my $suffix      = shift @_;
    my $cfgext      = shift @_;
    my $master      = shift @_;
    my $arch        = shift @_;
    my $MCSEMA_HOME = shift @_;
    my $entry       = shift @_;
    my $LLVMDIS     = shift @_;

    info("Running cfg to bc");
    my $CFG_TO_BC_PATH = "${MCSEMA_HOME}/mc-sema/bitcode_from_cfg/";
    my $GCC_ARCH       = "-m64";
    my $BIN_ARCH       = "-march=x86-64";
    my $CFGBC_ARCH     = "-mtriple=x86_64-unknown-linux-gnu";
    if ( $arch eq "32" ) {
        $GCC_ARCH   = "-m32";
        $BIN_ARCH   = "-march=x86";
        $CFGBC_ARCH = "-mtriple=i686-pc-linux-gnu";
    }

    if ( -e "${outdir}${basename}.${suffix}${cfgext}.cfg" ) {
        execute(
"rm -rf ${outdir}${basename}.${suffix}.lifted.bc ${outdir}${basename}.${suffix}.lifted.ll"
        );

        if ( "" eq $master ) {
            execute(
"${CFG_TO_BC_PATH}/cfg_to_bc ${CFGBC_ARCH}  -i ${outdir}${basename}.${suffix}${cfgext}.cfg  -o ${outdir}${basename}.${suffix}.lifted.bc  -entrypoint=${entry} 1> ${outdir}${basename}.${suffix}.cfg2bc.log 2>&1"
            );
        }
        else {
            execute(
"$MCSEMA_HOME/bin/mcsema-lift -ignore-unsupported  --arch amd64 --os linux --entrypoint ${entry} --cfg ${outdir}${basename}.${suffix}${cfgext}.cfg --output ${outdir}${basename}.${suffix}.lifted.bc  1> ${outdir}${basename}.${suffix}.cfg2bc.log 2>&1"
            );
        }

        if ( !( -e "${outdir}${basename}.${suffix}.lifted.bc" ) ) {
            failInfo("${basename}: bc generation: Failed");
            return;
        }

        execute(
"${LLVMDIS}   ${outdir}${basename}.${suffix}.lifted.bc -o=${outdir}${basename}.${suffix}.lifted.ll"
        );
    }
    else {
        info("CFG Missing : ${outdir}${basename}.${suffix}${cfgext}.cfg");
        exit(1);
    }
}

sub generate_linked_binary {
    my $inputbc          = shift @_;
    my $outputexe        = shift @_;
    my $outdir           = shift @_;
    my $ext              = shift @_;
    my $master           = shift @_;
    my $CC               = shift @_;
    my $CXX              = shift @_;
    my $CXX_OPTIONS      = shift @_;
    my $arch             = shift @_;
    my $incdir           = shift @_;
    my $include_regstate = shift @_;
    my $driver           = shift @_;
    my $MCSEMA_HOME      = shift @_;

    my $GCC_ARCH = "-m64";
    if ( $arch eq "32" ) {
        $GCC_ARCH = "-m32";
    }

    info("Generate lifted binary [ $inputbc to $outputexe]");
    execute("rm -rf ${outputexe}");

    if ( "asm" eq $ext ) {
        print("Skipped for asm file\n");
        return;
    }

    if ( "" eq $master ) {
        execute(
"${CC} -O3 ${GCC_ARCH} -I${incdir} ${driver} $inputbc ${incdir}/ELF_64_linux.ll   -o $outputexe"
        );
    }
    else {
        execute(
"${CXX}  ${CXX_OPTIONS} ${GCC_ARCH}  -O3 ${include_regstate}  $inputbc ${driver} ${MCSEMA_HOME}/lib/libmcsema_rt64.a   -o $outputexe"
        );
    }
}

sub run_compare {
    my $exe_1      = shift @_;
    my $exe_2      = shift @_;
    my $tag        = shift @_;
    my $stdin_args = shift @_;
    my $cmd_args   = shift @_;
    my $outdir     = shift @_;
    my $basename   = shift @_;

    info("Run N Compare");
    execute(
"echo ${stdin_args} | $exe_1 ${cmd_args} 1>${outdir}after.trans.out 2>&1"
    );
    execute(
"echo ${stdin_args} | $exe_2 ${cmd_args} 1>${outdir}before.trans.out 2>&1"
    );

    if ( 0 ==
        compare( "${outdir}before.trans.out", "${outdir}after.trans.out" ) )
    {
        passInfo("${basename} $tag Output Passed");
        execute("rm -rf ${outdir}*.trans.out");
    }
    else {
        failInfo("${basename}: $tag Output Failed\n");
        execute("diff ${outdir}before.trans.out ${outdir}after.trans.out");
    }
}

# Utilities
sub execute {
    my $args = shift @_;
    print "$args \n";
    system("$args");
}

sub info {
    my $args = shift @_;
    system("echo  \e[4m\e[1m\e[34m$args\e[0m");
}

sub passInfo {
    my $args = shift @_;
    system("echo  \e[4m\e[1m\e[92m$args\e[0m");
}

sub failInfo {
    my $args = shift @_;
    system("echo  \e[4m\e[1m\e[91m$args\e[0m");
}

sub display {
    my $args = shift @_;
    print "\t$args \n";
}

sub split_filename {
    my $arg = shift @_;

    if ( "" eq $arg ) {
        return ( "", "" );
    }
    my @components = split( /\//, ${arg} );
    my $filename = $components[ @components - 1 ];
    @components = split( /\./, ${filename} );
    my $file = $components[0];
    my $ext  = $components[1];
    return ( $file, $ext );
}

sub cleanup {
    my $outdir   = shift @_;
    my $basename = shift @_;
    my $suffix   = shift @_;
    info("Cleanup");
    execute("rm -rf  ${outdir}${basename}.${suffix}.o");
    execute("rm -rf  ${outdir}${basename}.${suffix}.bc");
    execute("rm -rf  ${outdir}${basename}.${suffix}.lifted.bc");
    execute("rm -rf  ${outdir}${basename}.${suffix}.opt.bc");
    execute("rm -rf  ${outdir}${basename}.${suffix}.native");
    execute("rm -rf  ${outdir}${basename}.${suffix}.exe");
}
1;

=pod
if ( "" ne $runpass ) {
    run_custom_pass();
    exit;
}

if ( "" ne $testallexe ) {
    generate_test_allexe();
    exit;
}



sub update_cfg {

    info("Generate debug Types");
    execute("${DWARF_TYPE_READER} ${outdir}${basename}.${suffix}.o");

    #execute("${DWARF_TYPE_READER} --debug ${outdir}${basename}.${suffix}.o");
    execute(
"${AUGMENT_TYPE}  ${outdir}${basename}.${suffix}.o.debuginfo ${outdir}${basename}.${suffix}${cfgext}.cfg"
    );

}

sub generate_test_allexe {
    print("\nGenerating Allexe \n");
    ## Generate allexe's
    execute("rm -rf 	./${outdir}*.allexe");
    my $driverbc = "";
    if ( "" ne $driver ) {
        execute(
            "${CC} -I${incdir} -emit-llvm -c	$driver -o  ${outdir}driver_64.bc"
        );
        $driverbc = "${outdir}driver_64.bc";
    }
    execute("${LLVMAS} ${incdir}/ELF_64_linux.ll  -o ${outdir}ELF_64_linux.bc");
    execute(
"${BC2ALLVM}  $driverbc ${outdir}${basename}.${suffix}.trans.bc ${outdir}/ELF_64_linux.bc  -o ${outdir}${basename}.${suffix}.trans.allexe"
    );
    execute(
"${ALLTOGETHER} -disable-opt ${outdir}${basename}.${suffix}.trans.allexe -o ${outdir}${basename}.${suffix}.trans.merged.allexe 1>${outdir}alltogether.log 2>&1"
    );

    ## Run and check output of allexe obtained from IR after analysis
    run_compare(
"${ALLEY} --force-static  ${outdir}${basename}.${suffix}.trans.merged.allexe",
        "${outdir}${basename}.${suffix}.lifted.exe", "Allexe"
    );
}

### Run my passes
sub run_custom_pass {
    print("\nRunning custom passes\n");

    execute(
"rm -rf ${outdir}${basename}.${suffix}.trans.bc ${outdir}${basename}.${suffix}.trans.opt.bc ${outdir}${basename}.${suffix}.trans.ll ${outdir}${basename}.${suffix}.trans.opt.ll"
    );

    ## Finding entryfunc called by the inline asm driver
    my $entryfunc = "";
    if ( -e "${outdir}${basename}.${suffix}.cfg2bc.log" ) {
        open( my $fp, "<", "${outdir}${basename}.${suffix}.cfg2bc.log" )
          or die "cannot open ${outdir}${basename}.${suffix}.cfg2bc.log: $!";
        my @lines = <$fp>;
        close($fp);
        foreach my $line (@lines) {
            chomp($line);
            if ( $line =~ m/${entry} is implemented by (.*)/ ) {
                $entryfunc = $1;
            }
        }
    }
    else {
        print
"Missing : ${outdir}${basename}.${suffix}.cfg2bc.log (Required for extracting the entry function)\n\n";
        exit(1);
    }

    if ( "" eq $entryfunc ) {
        print "Could not extract entry function\n\n";
        exit(1);
    }

    execute(
"${OPT} -load=${loadso} ${OPTSWITCH} -mcsema_main ${entryfunc} ${outdir}${basename}.${suffix}.ll  -o ${outdir}${basename}.${suffix}.trans.bc  2>  ${outdir}${basename}.${suffix}.pass.log"
    );

#${ALLIN} ${outdir}${basename}.${ext}.ll -o ${outdir}${basename}.${ext}.trans.bc 2>  ${outdir}${basename}.${ext}.pass.log
    execute(
"${OPT} -O3  ${outdir}${basename}.${suffix}.trans.bc -o=${outdir}${basename}.${suffix}.trans.opt.bc"
    );
    execute(
"${LLVMDIS} ${outdir}${basename}.${suffix}.trans.bc -o ${outdir}${basename}.${suffix}.trans.ll"
    );

    print("\nRunning checks on pass \n");
    if (
        compare(
            "${outdir}${basename}.${suffix}.pass.log",
            "${outdir}${basename}.${suffix}.pass.log.gold"
        ) == 0
      )
    {
        print("\t${basename}: Transformations Passed\n");
        execute("rm -rf ${outdir}${basename}.${suffix}.pass.log");
    }
    else {
        print("\t${basename}: Transformations Failed\n");
        execute(
"diff ${outdir}${basename}.${suffix}.pass.log ${outdir}${basename}.${suffix}.pass.log.gold"
        );
    }

    ## Run and check output between before and after analysis
    generate_linked_binary(
        "${outdir}${basename}.${suffix}.trans.opt.bc",
        "${outdir}${basename}.${suffix}.trans.lifted.exe"
    );
    run_compare(
        "${outdir}${basename}.${suffix}.trans.lifted.exe",
        "${outdir}${basename}.${suffix}.lifted.exe",
        "Native"
    );
}
=cut
