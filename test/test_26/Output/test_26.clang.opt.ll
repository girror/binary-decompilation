; ModuleID = 'Output/test_26.clang.opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %STi_val.i.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !3
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %1 = load i64* %RBX.i, align 8, !mcsema_real_eip !3
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %2 = load i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %3 = load i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %4 = bitcast i64* %R10.i to <2 x i64>*
  %5 = load <2 x i64>* %4, align 8
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %6 = bitcast i64* %R12.i to <2 x i64>*
  %7 = load <2 x i64>* %6, align 8
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %8 = bitcast i64* %R14.i to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %10 = load i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %11 = load i1* %DF.i, align 1, !mcsema_real_eip !3
  %12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %13 = bitcast x86_fp80* %12 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %14 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %15 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %16 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %17 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %18 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %19 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %20 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %21 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %22 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %23 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %24 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %25 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %26 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %27 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %28 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %29 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %30 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %31 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %32 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %33 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %34 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %35 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %36 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %37 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %38 = bitcast i8* %37 to i64*
  %39 = load i64* %38, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %40 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %41 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %42 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %43 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %44 = load i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %45 = load i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %46 = load i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %47 = load i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %48 = load i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %49 = load i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %50 = load i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %51 = load i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %52 = load i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %53 = load i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %54 = load i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %55 = load i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %56 = load i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %57 = load i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %58 = load i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %59 = load i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %60 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %61 = load <2 x i64>* %60, align 8
  %62 = add i64 %2, -8
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !3
  store i64 %3, i64* %63, align 8, !mcsema_real_eip !3
  %64 = add i64 %2, -136
  %65 = xor i64 %64, %62, !mcsema_real_eip !4
  %66 = and i64 %65, 16, !mcsema_real_eip !4
  %67 = icmp ne i64 %66, 0, !mcsema_real_eip !4
  %68 = trunc i64 %64 to i8, !mcsema_real_eip !4
  %69 = tail call i8 @llvm.ctpop.i8(i8 %68), !mcsema_real_eip !4
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  %72 = icmp eq i64 %64, 0, !mcsema_real_eip !4
  %73 = icmp slt i64 %64, 0
  %74 = icmp ult i64 %62, 128, !mcsema_real_eip !4
  %75 = and i64 %65, %62, !mcsema_real_eip !4
  %76 = icmp slt i64 %75, 0
  %77 = add i64 %2, -12, !mcsema_real_eip !5
  %78 = inttoptr i64 %77 to i32*
  store i32 0, i32* %78, align 4, !mcsema_real_eip !5
  %79 = add i64 %2, -24, !mcsema_real_eip !6
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !6
  store i64 42949672970, i64* %80, align 8, !mcsema_real_eip !6
  %81 = add i64 %2, -16, !mcsema_real_eip !7
  %82 = inttoptr i64 %81 to i32*
  store i32 10, i32* %82, align 4, !mcsema_real_eip !7
  %83 = tail call x86_64_sysvcc i64 @malloc(i64 24), !mcsema_real_eip !8
  %84 = add i64 %2, -32, !mcsema_real_eip !9
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !9
  store i64 %83, i64* %85, align 8, !mcsema_real_eip !9
  %86 = inttoptr i64 %83 to i32*
  store i32 5, i32* %86, align 4, !mcsema_real_eip !10
  %87 = load i64* %85, align 8, !mcsema_real_eip !11
  %88 = add i64 %87, 4, !mcsema_real_eip !12
  %89 = inttoptr i64 %88 to i32*
  store i32 5, i32* %89, align 4, !mcsema_real_eip !12
  %90 = load i64* %85, align 8, !mcsema_real_eip !13
  %91 = add i64 %90, 8, !mcsema_real_eip !14
  %92 = inttoptr i64 %91 to i32*
  store i32 5, i32* %92, align 4, !mcsema_real_eip !14
  %93 = load i64* %85, align 8, !mcsema_real_eip !15
  %94 = load i32* %82, align 4, !mcsema_real_eip !16
  %95 = add i64 %2, -56, !mcsema_real_eip !17
  %96 = inttoptr i64 %95 to i32*
  store i32 %94, i32* %96, align 4, !mcsema_real_eip !17
  %97 = load i64* %80, align 8, !mcsema_real_eip !18
  %98 = add i64 %2, -64, !mcsema_real_eip !19
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !19
  store i64 %97, i64* %99, align 8, !mcsema_real_eip !19
  %100 = load i32* %96, align 4, !mcsema_real_eip !20
  %101 = zext i32 %100 to i64, !mcsema_real_eip !20
  %102 = load i32* %82, align 4, !mcsema_real_eip !21
  %103 = add i64 %2, -120, !mcsema_real_eip !22
  %104 = inttoptr i64 %103 to i32*
  store i32 %102, i32* %104, align 4, !mcsema_real_eip !22
  %105 = load i64* %80, align 8, !mcsema_real_eip !23
  %106 = add i64 %2, -128, !mcsema_real_eip !24
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !24
  store i64 %105, i64* %107, align 8, !mcsema_real_eip !24
  %108 = add i64 %2, -104, !mcsema_real_eip !25
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !25
  store i64 %93, i64* %109, align 8, !mcsema_real_eip !25
  %110 = add i64 %2, -112, !mcsema_real_eip !26
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !26
  store i64 %79, i64* %111, align 8, !mcsema_real_eip !26
  %112 = inttoptr i64 %64 to i32*
  store i32 3, i32* %112, align 4, !mcsema_real_eip !27
  %113 = add i64 %2, -84, !mcsema_real_eip !28
  %114 = inttoptr i64 %113 to i32*
  store i32 1, i32* %114, align 4, !mcsema_real_eip !28
  %115 = add i64 %2, -144
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !29
  store i64 -4981261766360305936, i64* %116, align 8, !mcsema_real_eip !29
  store i64 %93, i64* %RAX.i, align 8, !mcsema_real_eip !29
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !29
  store i64 %93, i64* %RCX.i, align 8, !mcsema_real_eip !29
  store i64 %79, i64* %RDX.i, align 8, !mcsema_real_eip !29
  store i64 %101, i64* %RSI.i, align 8, !mcsema_real_eip !29
  store i64 %97, i64* %RDI.i, align 8, !mcsema_real_eip !29
  store i64 %115, i64* %RSP.i, align 8, !mcsema_real_eip !29
  store i64 %62, i64* %RBP.i, align 8, !mcsema_real_eip !29
  store i64 1, i64* %R8.i, align 8, !mcsema_real_eip !29
  store i64 2, i64* %R9.i, align 8, !mcsema_real_eip !29
  store <2 x i64> %5, <2 x i64>* %4, align 8
  store <2 x i64> %7, <2 x i64>* %6, align 8
  store <2 x i64> %9, <2 x i64>* %8, align 8
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !29
  store i1 %74, i1* %CF.i, align 1, !mcsema_real_eip !29
  store i1 %71, i1* %PF.i, align 1, !mcsema_real_eip !29
  store i1 %67, i1* %AF.i, align 1, !mcsema_real_eip !29
  store i1 %72, i1* %ZF.i, align 1, !mcsema_real_eip !29
  store i1 %73, i1* %SF.i, align 1, !mcsema_real_eip !29
  store i1 %76, i1* %OF.i, align 1, !mcsema_real_eip !29
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !29
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !29
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !29
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !29
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !29
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !29
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !29
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !29
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !29
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !29
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !29
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !29
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !29
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !29
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !29
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !29
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !29
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !29
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !29
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !29
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !29
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !29
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !29
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !29
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !29
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !29
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !29
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !29
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !29
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !29
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !29
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !29
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !29
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !29
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !29
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !29
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !29
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !29
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !29
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !29
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !29
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !29
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !29
  store <2 x i64> %61, <2 x i64>* %60, align 1
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast.i, i8* %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  %117 = add i64 %2, -152
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !2
  store i64 %62, i64* %118, align 8, !mcsema_real_eip !2
  %119 = add i64 %2, -160
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !30
  store i64 %1, i64* %120, align 8, !mcsema_real_eip !30
  %121 = load i64* %109, align 8, !mcsema_real_eip !31
  %122 = load i64* %111, align 8, !mcsema_real_eip !32
  %123 = load i32* %112, align 4, !mcsema_real_eip !33
  %124 = add i64 %2, -208, !mcsema_real_eip !34
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !34
  store i64 %97, i64* %125, align 8, !mcsema_real_eip !34
  %126 = add i64 %2, -200, !mcsema_real_eip !35
  %127 = inttoptr i64 %126 to i32*
  store i32 %100, i32* %127, align 4, !mcsema_real_eip !35
  %128 = add i64 %2, -184, !mcsema_real_eip !36
  %129 = inttoptr i64 %128 to i32*
  store i32 %100, i32* %129, align 4, !mcsema_real_eip !36
  %130 = load i64* %125, align 8, !mcsema_real_eip !37
  %131 = add i64 %2, -192, !mcsema_real_eip !38
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !38
  store i64 %130, i64* %132, align 8, !mcsema_real_eip !38
  %133 = add i64 %2, -216, !mcsema_real_eip !39
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !39
  store i64 %79, i64* %134, align 8, !mcsema_real_eip !39
  %135 = add i64 %2, -224, !mcsema_real_eip !40
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !40
  store i64 %93, i64* %136, align 8, !mcsema_real_eip !40
  %137 = add i64 %2, -228, !mcsema_real_eip !41
  %138 = inttoptr i64 %137 to i32*
  store i32 1, i32* %138, align 4, !mcsema_real_eip !41
  %139 = add i64 %2, -232, !mcsema_real_eip !42
  %140 = inttoptr i64 %139 to i32*
  store i32 2, i32* %140, align 4, !mcsema_real_eip !42
  %141 = add i64 %2, -236, !mcsema_real_eip !43
  %142 = inttoptr i64 %141 to i32*
  store i32 %123, i32* %142, align 4, !mcsema_real_eip !43
  %143 = add i64 %2, -248, !mcsema_real_eip !44
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !44
  store i64 %122, i64* %144, align 8, !mcsema_real_eip !44
  %145 = add i64 %2, -256, !mcsema_real_eip !45
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !45
  store i64 %121, i64* %146, align 8, !mcsema_real_eip !45
  %147 = inttoptr i64 %131 to i32*
  %148 = load i32* %147, align 4, !mcsema_real_eip !46
  %149 = load i64* %134, align 8, !mcsema_real_eip !47
  %150 = inttoptr i64 %149 to i32*
  %151 = load i32* %150, align 4, !mcsema_real_eip !48
  %152 = add i32 %151, %148
  %153 = load i64* %136, align 8, !mcsema_real_eip !49
  %154 = inttoptr i64 %153 to i32*
  %155 = load i32* %154, align 4, !mcsema_real_eip !50
  %156 = add i32 %152, %155
  %157 = inttoptr i64 %106 to i32*
  %158 = load i32* %157, align 4, !mcsema_real_eip !51
  %159 = load i64* %144, align 8, !mcsema_real_eip !52
  %160 = inttoptr i64 %159 to i32*
  %161 = load i32* %160, align 4, !mcsema_real_eip !53
  %162 = inttoptr i64 %121 to i32*
  %163 = load i32* %162, align 4, !mcsema_real_eip !54
  %164 = add i32 %156, %158
  %165 = add i32 %164, %161
  %166 = add i32 %165, %163
  %167 = add i64 %2, -272, !mcsema_real_eip !55
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !55
  %169 = inttoptr i64 %167 to i32*
  store i32 %166, i32* %169, align 4, !mcsema_real_eip !55
  %170 = add i64 %2, -188, !mcsema_real_eip !56
  %171 = inttoptr i64 %170 to i32*
  %172 = load i32* %171, align 4, !mcsema_real_eip !56
  %173 = load i64* %134, align 8, !mcsema_real_eip !57
  %174 = add i64 %173, 4, !mcsema_real_eip !58
  %175 = inttoptr i64 %174 to i32*
  %176 = load i32* %175, align 4, !mcsema_real_eip !58
  %177 = add i32 %176, %172
  %178 = load i64* %136, align 8, !mcsema_real_eip !59
  %179 = add i64 %178, 4, !mcsema_real_eip !60
  %180 = inttoptr i64 %179 to i32*
  %181 = load i32* %180, align 4, !mcsema_real_eip !60
  %182 = add i32 %177, %181
  %183 = add i64 %2, -124, !mcsema_real_eip !61
  %184 = inttoptr i64 %183 to i32*
  %185 = load i32* %184, align 4, !mcsema_real_eip !61
  %186 = load i64* %144, align 8, !mcsema_real_eip !62
  %187 = add i64 %186, 4, !mcsema_real_eip !63
  %188 = inttoptr i64 %187 to i32*
  %189 = load i32* %188, align 4, !mcsema_real_eip !63
  %190 = load i64* %146, align 8, !mcsema_real_eip !64
  %191 = add i64 %190, 4, !mcsema_real_eip !65
  %192 = inttoptr i64 %191 to i32*
  %193 = load i32* %192, align 4, !mcsema_real_eip !65
  %194 = add i32 %182, %185
  %195 = add i32 %194, %189
  %196 = add i32 %195, %193
  %197 = add i64 %2, -268, !mcsema_real_eip !66
  %198 = inttoptr i64 %197 to i32*
  store i32 %196, i32* %198, align 4, !mcsema_real_eip !66
  %199 = load i32* %129, align 4, !mcsema_real_eip !67
  %200 = load i64* %134, align 8, !mcsema_real_eip !68
  %201 = add i64 %200, 8, !mcsema_real_eip !69
  %202 = inttoptr i64 %201 to i32*
  %203 = load i32* %202, align 4, !mcsema_real_eip !69
  %204 = add i32 %203, %199
  %205 = load i64* %136, align 8, !mcsema_real_eip !70
  %206 = add i64 %205, 8, !mcsema_real_eip !71
  %207 = inttoptr i64 %206 to i32*
  %208 = load i32* %207, align 4, !mcsema_real_eip !71
  %209 = add i32 %204, %208
  %210 = load i32* %104, align 4, !mcsema_real_eip !72
  %211 = load i64* %144, align 8, !mcsema_real_eip !73
  %212 = add i64 %211, 8, !mcsema_real_eip !74
  %213 = inttoptr i64 %212 to i32*
  %214 = load i32* %213, align 4, !mcsema_real_eip !74
  %215 = add i32 %214, %210
  %216 = load i64* %146, align 8, !mcsema_real_eip !75
  %217 = add i64 %216, 8, !mcsema_real_eip !76
  %218 = inttoptr i64 %217 to i32*
  %219 = load i32* %218, align 4, !mcsema_real_eip !76
  %220 = zext i32 %219 to i64, !mcsema_real_eip !76
  %221 = add i32 %215, %219
  %222 = zext i32 %221 to i64, !mcsema_real_eip !77
  %uadd83.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %221, i32 %209) #0
  %223 = extractvalue { i32, i1 } %uadd83.i.i, 0
  %224 = xor i32 %223, %209, !mcsema_real_eip !78
  %225 = xor i32 %224, %221, !mcsema_real_eip !78
  %226 = and i32 %225, 16, !mcsema_real_eip !78
  %227 = icmp ne i32 %226, 0, !mcsema_real_eip !78
  %228 = icmp slt i32 %223, 0
  %229 = icmp eq i32 %223, 0, !mcsema_real_eip !78
  %230 = xor i32 %209, -2147483648, !mcsema_real_eip !78
  %231 = xor i32 %230, %221, !mcsema_real_eip !78
  %232 = and i32 %224, %231, !mcsema_real_eip !78
  %233 = icmp slt i32 %232, 0
  %234 = trunc i32 %223 to i8, !mcsema_real_eip !78
  %235 = tail call i8 @llvm.ctpop.i8(i8 %234) #0, !mcsema_real_eip !78
  %236 = and i8 %235, 1
  %237 = icmp eq i8 %236, 0
  %238 = extractvalue { i32, i1 } %uadd83.i.i, 1
  %239 = add i64 %2, -264, !mcsema_real_eip !79
  %240 = inttoptr i64 %239 to i32*
  store i32 %223, i32* %240, align 4, !mcsema_real_eip !79
  %241 = add i64 %2, -168, !mcsema_real_eip !80
  %242 = inttoptr i64 %241 to i32*
  store i32 %223, i32* %242, align 4, !mcsema_real_eip !80
  %243 = load i64* %168, align 8, !mcsema_real_eip !81
  %244 = add i64 %2, -176, !mcsema_real_eip !82
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !82
  store i64 %243, i64* %245, align 8, !mcsema_real_eip !82
  %246 = load i32* %242, align 4, !mcsema_real_eip !83
  %247 = zext i32 %246 to i64, !mcsema_real_eip !83
  %248 = add i64 %2, -280, !mcsema_real_eip !84
  %249 = inttoptr i64 %248 to i32*
  store i32 %246, i32* %249, align 4, !mcsema_real_eip !84
  %250 = load i64* %245, align 8, !mcsema_real_eip !85
  %251 = add i64 %2, -288, !mcsema_real_eip !86
  %252 = inttoptr i64 %251 to i64*, !mcsema_real_eip !86
  store i64 %250, i64* %252, align 8, !mcsema_real_eip !86
  %253 = load i32* %249, align 4, !mcsema_real_eip !87
  %254 = zext i32 %253 to i64, !mcsema_real_eip !87
  %255 = load i64* %120, align 8, !mcsema_real_eip !88
  %256 = load i64* %118, align 8, !mcsema_real_eip !89
  store i64 %250, i64* %RAX.i, align 8, !mcsema_real_eip !90
  store i64 %255, i64* %RBX.i, align 8, !mcsema_real_eip !90
  store i64 %159, i64* %RCX.i, align 8, !mcsema_real_eip !90
  store i64 %254, i64* %RDX.i, align 8, !mcsema_real_eip !90
  store i64 %247, i64* %RSI.i, align 8, !mcsema_real_eip !90
  store i64 %130, i64* %RDI.i, align 8, !mcsema_real_eip !90
  store i64 %64, i64* %RSP.i, align 8, !mcsema_real_eip !90
  store i64 %256, i64* %RBP.i, align 8, !mcsema_real_eip !90
  store i64 %222, i64* %R8.i, align 8, !mcsema_real_eip !90
  store i64 %220, i64* %R9.i, align 8, !mcsema_real_eip !90
  store i64 %122, i64* %R10.i, align 8, !mcsema_real_eip !90
  store i64 %106, i64* %R11.i, align 8, !mcsema_real_eip !90
  store <2 x i64> %7, <2 x i64>* %6, align 8
  store <2 x i64> %9, <2 x i64>* %8, align 8
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !90
  store i1 %238, i1* %CF.i, align 1, !mcsema_real_eip !90
  store i1 %237, i1* %PF.i, align 1, !mcsema_real_eip !90
  store i1 %227, i1* %AF.i, align 1, !mcsema_real_eip !90
  store i1 %229, i1* %ZF.i, align 1, !mcsema_real_eip !90
  store i1 %228, i1* %SF.i, align 1, !mcsema_real_eip !90
  store i1 %233, i1* %OF.i, align 1, !mcsema_real_eip !90
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !90
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !90
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !90
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !90
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !90
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !90
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !90
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !90
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !90
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !90
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !90
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !90
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !90
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !90
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !90
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !90
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !90
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !90
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !90
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !90
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !90
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !90
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !90
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !90
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !90
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !90
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !90
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !90
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !90
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !90
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !90
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !90
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !90
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !90
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !90
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !90
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !90
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !90
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !90
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !90
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !90
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !90
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !90
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !90
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !90
  store <2 x i64> %61, <2 x i64>* %60, align 1
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  %257 = bitcast <2 x i64> %7 to i128
  %trunc.i = trunc i128 %257 to i64
  %258 = lshr i128 %257, 64
  %259 = trunc i128 %258 to i64
  %260 = bitcast <2 x i64> %9 to i128
  %trunc111.i = trunc i128 %260 to i64
  %261 = lshr i128 %260, 64
  %262 = trunc i128 %261 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !29
  %263 = bitcast <2 x i64> %61 to i128
  %trunc112.i = trunc i128 %263 to i64
  %264 = lshr i128 %263, 64
  %265 = trunc i128 %264 to i64
  %266 = add i64 %256, -64, !mcsema_real_eip !91
  %267 = inttoptr i64 %266 to i32*
  store i32 %253, i32* %267, align 4, !mcsema_real_eip !91
  %268 = add i64 %256, -72, !mcsema_real_eip !92
  %269 = inttoptr i64 %268 to i64*, !mcsema_real_eip !92
  store i64 %250, i64* %269, align 8, !mcsema_real_eip !92
  %270 = add i64 %256, -40, !mcsema_real_eip !93
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !93
  store i64 %250, i64* %271, align 8, !mcsema_real_eip !93
  %272 = load i32* %267, align 4, !mcsema_real_eip !94
  %273 = add i64 %256, -32, !mcsema_real_eip !95
  %274 = inttoptr i64 %273 to i32*
  store i32 %272, i32* %274, align 4, !mcsema_real_eip !95
  %275 = inttoptr i64 %270 to i32*
  %276 = load i32* %275, align 4, !mcsema_real_eip !96
  %277 = add i64 %256, -36, !mcsema_real_eip !97
  %278 = inttoptr i64 %277 to i32*
  %279 = load i32* %278, align 4, !mcsema_real_eip !97
  %280 = add i32 %276, %272
  %281 = add i32 %280, %279
  %282 = zext i32 %281 to i64, !mcsema_real_eip !98
  %uadd210.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %64, i64 128)
  %283 = extractvalue { i64, i1 } %uadd210.i, 0
  %284 = xor i64 %283, %64, !mcsema_real_eip !99
  %285 = and i64 %284, 16, !mcsema_real_eip !99
  %286 = icmp ne i64 %285, 0, !mcsema_real_eip !99
  %287 = icmp slt i64 %283, 0
  %288 = icmp eq i64 %283, 0, !mcsema_real_eip !99
  %289 = add i64 %2, 9223372036854775672
  %290 = and i64 %284, %289, !mcsema_real_eip !99
  %291 = icmp slt i64 %290, 0
  %292 = trunc i64 %283 to i8, !mcsema_real_eip !99
  %293 = tail call i8 @llvm.ctpop.i8(i8 %292), !mcsema_real_eip !99
  %294 = and i8 %293, 1
  %295 = icmp eq i8 %294, 0
  %296 = extractvalue { i64, i1 } %uadd210.i, 1
  %297 = inttoptr i64 %283 to i64*, !mcsema_real_eip !100
  %298 = load i64* %297, align 8, !mcsema_real_eip !100
  %299 = add i64 %283, 16, !mcsema_real_eip !101
  store i64 %282, i64* %RAX.i, align 8, !mcsema_real_eip !101
  store i64 %255, i64* %RBX.i, align 8, !mcsema_real_eip !101
  store i64 %159, i64* %RCX.i, align 8, !mcsema_real_eip !101
  store i64 %282, i64* %RDX.i, align 8, !mcsema_real_eip !101
  store i64 %247, i64* %RSI.i, align 8, !mcsema_real_eip !101
  store i64 %130, i64* %RDI.i, align 8, !mcsema_real_eip !101
  store i64 %299, i64* %RSP.i, align 8, !mcsema_real_eip !101
  store i64 %298, i64* %RBP.i, align 8, !mcsema_real_eip !101
  store i64 %222, i64* %R8.i, align 8, !mcsema_real_eip !101
  store i64 %220, i64* %R9.i, align 8, !mcsema_real_eip !101
  store i64 %122, i64* %R10.i, align 8, !mcsema_real_eip !101
  store i64 %106, i64* %R11.i, align 8, !mcsema_real_eip !101
  store i64 %trunc.i, i64* %R12.i, align 8, !mcsema_real_eip !101
  store i64 %259, i64* %R13.i, align 8, !mcsema_real_eip !101
  store i64 %trunc111.i, i64* %R14.i, align 8, !mcsema_real_eip !101
  store i64 %262, i64* %R15.i, align 8, !mcsema_real_eip !101
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !101
  store i1 %296, i1* %CF.i, align 1, !mcsema_real_eip !101
  store i1 %295, i1* %PF.i, align 1, !mcsema_real_eip !101
  store i1 %286, i1* %AF.i, align 1, !mcsema_real_eip !101
  store i1 %288, i1* %ZF.i, align 1, !mcsema_real_eip !101
  store i1 %287, i1* %SF.i, align 1, !mcsema_real_eip !101
  store i1 %291, i1* %OF.i, align 1, !mcsema_real_eip !101
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !101
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !101
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !101
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !101
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !101
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !101
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !101
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !101
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !101
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !101
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !101
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !101
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !101
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !101
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !101
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !101
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !101
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !101
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !101
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !101
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !101
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !101
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !101
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !101
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !101
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !101
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !101
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !101
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !101
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !101
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !101
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !101
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !101
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !101
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !101
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !101
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !101
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !101
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !101
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !101
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !101
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !101
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !101
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !101
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !101
  store i64 %trunc112.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !101
  store i64 %265, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !101
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 272, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 276, [17 x i8] c"\09subq\09$128, %rsp\00"}
!5 = metadata !{i64 283, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = metadata !{i64 300, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!7 = metadata !{i64 304, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!8 = metadata !{i64 318, [9 x i8] c"\09callq\090\00"}
!9 = metadata !{i64 323, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!10 = metadata !{i64 327, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!11 = metadata !{i64 333, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!12 = metadata !{i64 337, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!13 = metadata !{i64 344, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!14 = metadata !{i64 348, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!15 = metadata !{i64 355, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!16 = metadata !{i64 359, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!17 = metadata !{i64 362, [22 x i8] c"\09movl\09%ecx, -48(%rbp)\00"}
!18 = metadata !{i64 365, [22 x i8] c"\09movq\09-16(%rbp), %rdi\00"}
!19 = metadata !{i64 369, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!20 = metadata !{i64 377, [22 x i8] c"\09movl\09-48(%rbp), %esi\00"}
!21 = metadata !{i64 380, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!22 = metadata !{i64 386, [21 x i8] c"\09movl\09%ecx, 16(%rdx)\00"}
!23 = metadata !{i64 389, [21 x i8] c"\09movq\09-16(%rbp), %r8\00"}
!24 = metadata !{i64 393, [19 x i8] c"\09movq\09%r8, 8(%rdx)\00"}
!25 = metadata !{i64 397, [21 x i8] c"\09movq\09%rax, 32(%rdx)\00"}
!26 = metadata !{i64 405, [20 x i8] c"\09movq\09%r8, 24(%rdx)\00"}
!27 = metadata !{i64 409, [17 x i8] c"\09movl\09$3, (%rdx)\00"}
!28 = metadata !{i64 429, [22 x i8] c"\09movl\09%ecx, -76(%rbp)\00"}
!29 = metadata !{i64 439, [12 x i8] c"\09callq\09-444\00"}
!30 = metadata !{i64 4, [12 x i8] c"\09pushq\09%rbx\00"}
!31 = metadata !{i64 5, [21 x i8] c"\09movq\0948(%rbp), %rax\00"}
!32 = metadata !{i64 9, [21 x i8] c"\09movq\0940(%rbp), %r10\00"}
!33 = metadata !{i64 17, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!34 = metadata !{i64 20, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!35 = metadata !{i64 24, [22 x i8] c"\09movl\09%esi, -48(%rbp)\00"}
!36 = metadata !{i64 27, [22 x i8] c"\09movl\09%esi, -32(%rbp)\00"}
!37 = metadata !{i64 30, [22 x i8] c"\09movq\09-56(%rbp), %rdi\00"}
!38 = metadata !{i64 34, [22 x i8] c"\09movq\09%rdi, -40(%rbp)\00"}
!39 = metadata !{i64 38, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!40 = metadata !{i64 42, [22 x i8] c"\09movq\09%rcx, -72(%rbp)\00"}
!41 = metadata !{i64 46, [22 x i8] c"\09movl\09%r8d, -76(%rbp)\00"}
!42 = metadata !{i64 50, [22 x i8] c"\09movl\09%r9d, -80(%rbp)\00"}
!43 = metadata !{i64 54, [22 x i8] c"\09movl\09%ebx, -84(%rbp)\00"}
!44 = metadata !{i64 57, [22 x i8] c"\09movq\09%r10, -96(%rbp)\00"}
!45 = metadata !{i64 61, [23 x i8] c"\09movq\09%rax, -104(%rbp)\00"}
!46 = metadata !{i64 65, [22 x i8] c"\09movl\09-40(%rbp), %esi\00"}
!47 = metadata !{i64 68, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!48 = metadata !{i64 72, [19 x i8] c"\09movl\09(%rcx), %r8d\00"}
!49 = metadata !{i64 78, [22 x i8] c"\09movq\09-72(%rbp), %rcx\00"}
!50 = metadata !{i64 82, [19 x i8] c"\09movl\09(%rcx), %r8d\00"}
!51 = metadata !{i64 88, [19 x i8] c"\09movl\09(%r11), %r8d\00"}
!52 = metadata !{i64 91, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!53 = metadata !{i64 95, [19 x i8] c"\09movl\09(%rcx), %r9d\00"}
!54 = metadata !{i64 101, [19 x i8] c"\09movl\09(%rax), %r9d\00"}
!55 = metadata !{i64 110, [23 x i8] c"\09movl\09%esi, -120(%rbp)\00"}
!56 = metadata !{i64 113, [22 x i8] c"\09movl\09-36(%rbp), %esi\00"}
!57 = metadata !{i64 116, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!58 = metadata !{i64 120, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!59 = metadata !{i64 127, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!60 = metadata !{i64 131, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!61 = metadata !{i64 138, [20 x i8] c"\09movl\094(%r11), %r8d\00"}
!62 = metadata !{i64 142, [22 x i8] c"\09movq\09-96(%rbp), %rax\00"}
!63 = metadata !{i64 146, [20 x i8] c"\09movl\094(%rax), %r9d\00"}
!64 = metadata !{i64 153, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!65 = metadata !{i64 157, [20 x i8] c"\09movl\094(%rax), %r9d\00"}
!66 = metadata !{i64 167, [23 x i8] c"\09movl\09%esi, -116(%rbp)\00"}
!67 = metadata !{i64 170, [22 x i8] c"\09movl\09-32(%rbp), %esi\00"}
!68 = metadata !{i64 173, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!69 = metadata !{i64 177, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!70 = metadata !{i64 184, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!71 = metadata !{i64 188, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!72 = metadata !{i64 195, [20 x i8] c"\09movl\098(%r11), %r8d\00"}
!73 = metadata !{i64 199, [22 x i8] c"\09movq\09-96(%rbp), %rax\00"}
!74 = metadata !{i64 203, [20 x i8] c"\09movl\098(%rax), %r9d\00"}
!75 = metadata !{i64 210, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!76 = metadata !{i64 214, [20 x i8] c"\09movl\098(%rax), %r9d\00"}
!77 = metadata !{i64 218, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!78 = metadata !{i64 221, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!79 = metadata !{i64 224, [23 x i8] c"\09movl\09%esi, -112(%rbp)\00"}
!80 = metadata !{i64 227, [22 x i8] c"\09movl\09%esi, -16(%rbp)\00"}
!81 = metadata !{i64 230, [23 x i8] c"\09movq\09-120(%rbp), %rax\00"}
!82 = metadata !{i64 234, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!83 = metadata !{i64 238, [22 x i8] c"\09movl\09-16(%rbp), %esi\00"}
!84 = metadata !{i64 241, [23 x i8] c"\09movl\09%esi, -128(%rbp)\00"}
!85 = metadata !{i64 244, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!86 = metadata !{i64 248, [23 x i8] c"\09movq\09%rax, -136(%rbp)\00"}
!87 = metadata !{i64 262, [23 x i8] c"\09movl\09-128(%rbp), %edx\00"}
!88 = metadata !{i64 265, [11 x i8] c"\09popq\09%rbx\00"}
!89 = metadata !{i64 266, [11 x i8] c"\09popq\09%rbp\00"}
!90 = metadata !{i64 267, [6 x i8] c"\09retq\00"}
!91 = metadata !{i64 444, [22 x i8] c"\09movl\09%edx, -64(%rbp)\00"}
!92 = metadata !{i64 447, [22 x i8] c"\09movq\09%rax, -72(%rbp)\00"}
!93 = metadata !{i64 455, [22 x i8] c"\09movq\09%rax, -40(%rbp)\00"}
!94 = metadata !{i64 459, [22 x i8] c"\09movl\09-64(%rbp), %edx\00"}
!95 = metadata !{i64 462, [22 x i8] c"\09movl\09%edx, -32(%rbp)\00"}
!96 = metadata !{i64 465, [22 x i8] c"\09movl\09-40(%rbp), %edx\00"}
!97 = metadata !{i64 468, [22 x i8] c"\09addl\09-36(%rbp), %edx\00"}
!98 = metadata !{i64 471, [22 x i8] c"\09addl\09-32(%rbp), %edx\00"}
!99 = metadata !{i64 476, [17 x i8] c"\09addq\09$128, %rsp\00"}
!100 = metadata !{i64 483, [11 x i8] c"\09popq\09%rbp\00"}
!101 = metadata !{i64 484, [6 x i8] c"\09retq\00"}
