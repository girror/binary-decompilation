; ModuleID = 'Output/test_26.clang.trans.opt.bc'
source_filename = "Output/test_26.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @malloc(i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: noreturn
define void @mcsema_main(%struct.regs*) local_unnamed_addr #2 {
driverBlockRaw:
  %_RSP_ptr_111.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_112.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_113.i = alloca [144 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %RDX_val.i = alloca i64, align 8, !mcsema_real_eip !2
  %_RSP_ptr_111.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_111.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_111.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_112.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_112.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_112.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_113.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 144, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %RDX_val.i.0..sroa_cast = bitcast i64* %RDX_val.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %RDX_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_113.i, i64 0, i64 144
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_111.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %3 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %4 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !2
  store i64 %4, i64* %RDX_val.i, align 8
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %5 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %6 = bitcast i64* %R10.i to <2 x i64>*
  %7 = load <2 x i64>, <2 x i64>* %6, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %8 = bitcast i64* %R12.i to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %10 = bitcast i64* %R14.i to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %12 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %13 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %15 = bitcast x86_fp80* %14 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %15, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %16 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %18 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %31 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %32 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %39 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %40 = bitcast i8* %39 to i64*
  %41 = load i64, i64* %40, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %42 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %43 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %44 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %45 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %46 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %62 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %63 = load <2 x i64>, <2 x i64>* %62, align 8
  %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_114.i = load i64, i64* %_RBP_ptr_112.sroa.0.i, align 8
  %64 = bitcast i64* %_RSP_ptr_111.sroa.0.i to i8**
  %_RSP_ptr_111.sroa.0.i.0._RSP_ptr_111.sroa.0.0._RSP_ptr_111.sroa.0.0._load_rsp_ptr_121.i1 = load i8*, i8** %64, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_111.sroa.0.i.0._RSP_ptr_111.sroa.0.0._RSP_ptr_111.sroa.0.0._load_rsp_ptr_121.i1, i64 -8
  %65 = add i64 %5, -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_114.i, i64* %_allin_new_bt_.i, align 8
  %66 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %66, i64* %_RBP_ptr_112.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_111.sroa.0.i.0._RSP_ptr_111.sroa.0.0._RSP_ptr_111.sroa.0.0._load_rsp_ptr_121.i1, i64 -136
  %67 = add i64 %5, -136
  %68 = xor i64 %67, %65, !mcsema_real_eip !3
  %69 = and i64 %68, 16, !mcsema_real_eip !3
  %70 = icmp ne i64 %69, 0, !mcsema_real_eip !3
  %71 = trunc i64 %67 to i8, !mcsema_real_eip !3
  %72 = tail call i8 @llvm.ctpop.i8(i8 %71), !mcsema_real_eip !3
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  %75 = icmp eq i64 %67, 0, !mcsema_real_eip !3
  %76 = icmp slt i64 %67, 0
  %77 = icmp ult i64 %65, 128, !mcsema_real_eip !3
  %78 = and i64 %68, %65, !mcsema_real_eip !3
  %79 = icmp slt i64 %78, 0
  %80 = ptrtoint i8* %_new_gep_1.i to i64
  store volatile i64 %80, i64* %_RSP_ptr_111.sroa.0.i, align 8
  %_new_gep_3.i = getelementptr i8, i8* %_RSP_ptr_111.sroa.0.i.0._RSP_ptr_111.sroa.0.0._RSP_ptr_111.sroa.0.0._load_rsp_ptr_121.i1, i64 -12
  %81 = bitcast i8* %_new_gep_3.i to i32*
  store i32 0, i32* %81, align 4, !mcsema_real_eip !4
  %82 = bitcast i64* %_RBP_ptr_112.sroa.0.i to i8**
  %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_5123.i2 = load i8*, i8** %82, align 8
  %_new_gep_6.i = getelementptr i8, i8* %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_5123.i2, i64 -16
  %83 = bitcast i8* %_new_gep_6.i to i32*
  store i32 10, i32* %83, align 4, !mcsema_real_eip !5
  %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_8124.i3 = load i8*, i8** %82, align 8
  %_new_gep_9.i = getelementptr i8, i8* %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_8124.i3, i64 -12
  %84 = bitcast i8* %_new_gep_9.i to i32*
  store i32 10, i32* %84, align 4, !mcsema_real_eip !6
  %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_11125.i4 = load i8*, i8** %82, align 8
  %_new_gep_12.i = getelementptr i8, i8* %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_11125.i4, i64 -8
  %85 = bitcast i8* %_new_gep_12.i to i32*
  store i32 10, i32* %85, align 4, !mcsema_real_eip !7
  %86 = tail call x86_64_sysvcc i64 @malloc(i64 24), !mcsema_real_eip !8
  %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_14126.i5 = load i8*, i8** %82, align 8
  %_new_gep_15.i = getelementptr i8, i8* %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_14126.i5, i64 -24
  %_allin_new_bt_16.i = bitcast i8* %_new_gep_15.i to i64*
  store i64 %86, i64* %_allin_new_bt_16.i, align 8, !mcsema_real_eip !9
  %87 = inttoptr i64 %86 to i32*
  store i32 5, i32* %87, align 4, !mcsema_real_eip !10
  %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_17127.i6 = load i8*, i8** %82, align 8
  %_new_gep_18.i = getelementptr i8, i8* %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_17127.i6, i64 -24
  %_allin_new_bt_19.i = bitcast i8* %_new_gep_18.i to i64*
  %88 = load i64, i64* %_allin_new_bt_19.i, align 8, !mcsema_real_eip !11
  %89 = add i64 %88, 4, !mcsema_real_eip !12
  %90 = inttoptr i64 %89 to i32*
  store i32 5, i32* %90, align 4, !mcsema_real_eip !12
  %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_20128.i7 = load i8*, i8** %82, align 8
  %_new_gep_21.i = getelementptr i8, i8* %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_20128.i7, i64 -24
  %_allin_new_bt_22.i = bitcast i8* %_new_gep_21.i to i64*
  %91 = load i64, i64* %_allin_new_bt_22.i, align 8, !mcsema_real_eip !13
  %92 = add i64 %91, 8, !mcsema_real_eip !14
  %93 = inttoptr i64 %92 to i32*
  store i32 5, i32* %93, align 4, !mcsema_real_eip !14
  %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_23129.i8 = load i8*, i8** %82, align 8
  %_new_gep_24.i = getelementptr i8, i8* %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_23129.i8, i64 -24
  %_allin_new_bt_25.i = bitcast i8* %_new_gep_24.i to i64*
  %94 = load i64, i64* %_allin_new_bt_25.i, align 8, !mcsema_real_eip !15
  %_new_gep_26.i = getelementptr i8, i8* %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_23129.i8, i64 -8
  %95 = bitcast i8* %_new_gep_26.i to i32*
  %96 = load i32, i32* %95, align 4, !mcsema_real_eip !16
  %_new_gep_29.i = getelementptr i8, i8* %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_23129.i8, i64 -48
  %97 = bitcast i8* %_new_gep_29.i to i32*
  store i32 %96, i32* %97, align 4, !mcsema_real_eip !17
  %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_31130.i9 = load i8*, i8** %82, align 8
  %_new_gep_32.i = getelementptr i8, i8* %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_31130.i9, i64 -16
  %_allin_new_bt_33.i = bitcast i8* %_new_gep_32.i to i64*
  %98 = load i64, i64* %_allin_new_bt_33.i, align 8, !mcsema_real_eip !18
  %_new_gep_34.i = getelementptr i8, i8* %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_31130.i9, i64 -56
  %_allin_new_bt_35.i = bitcast i8* %_new_gep_34.i to i64*
  store i64 %98, i64* %_allin_new_bt_35.i, align 8, !mcsema_real_eip !19
  %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_36131.i10 = load i8*, i8** %82, align 8
  %_new_gep_37.i = getelementptr i8, i8* %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_36131.i10, i64 -56
  %_allin_new_bt_38.i = bitcast i8* %_new_gep_37.i to i64*
  %99 = load i64, i64* %_allin_new_bt_38.i, align 8, !mcsema_real_eip !20
  %_new_gep_39.i = getelementptr i8, i8* %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_36131.i10, i64 -48
  %100 = bitcast i8* %_new_gep_39.i to i32*
  %101 = load i32, i32* %100, align 4, !mcsema_real_eip !21
  %102 = zext i32 %101 to i64, !mcsema_real_eip !21
  %_new_gep_42.i = getelementptr i8, i8* %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_36131.i10, i64 -8
  %103 = bitcast i8* %_new_gep_42.i to i32*
  %104 = load i32, i32* %103, align 4, !mcsema_real_eip !22
  %_RSP_ptr_111.sroa.0.i.0._RSP_ptr_111.sroa.0.0._RSP_ptr_111.sroa.0.0._load_rsp_ptr_44.i = load i64, i64* %_RSP_ptr_111.sroa.0.i, align 8
  %105 = inttoptr i64 %_RSP_ptr_111.sroa.0.i.0._RSP_ptr_111.sroa.0.0._RSP_ptr_111.sroa.0.0._load_rsp_ptr_44.i to i8*
  store volatile i64 %_RSP_ptr_111.sroa.0.i.0._RSP_ptr_111.sroa.0.0._RSP_ptr_111.sroa.0.0._load_rsp_ptr_44.i, i64* %RDX_val.i, align 8
  %_new_gep_46.i = getelementptr i8, i8* %105, i64 16
  %106 = bitcast i8* %_new_gep_46.i to i32*
  store i32 %104, i32* %106, align 4, !mcsema_real_eip !23
  %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_48132.i11 = load i8*, i8** %82, align 8
  %_new_gep_49.i = getelementptr i8, i8* %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_48132.i11, i64 -16
  %_allin_new_bt_50.i = bitcast i8* %_new_gep_49.i to i64*
  %107 = load i64, i64* %_allin_new_bt_50.i, align 8, !mcsema_real_eip !24
  %RDX_val.i.0.RDX_val.0.RDX_val.0..i = load i64, i64* %RDX_val.i, align 8
  %108 = add i64 %RDX_val.i.0.RDX_val.0.RDX_val.0..i, 8, !mcsema_real_eip !25
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !25
  store i64 %107, i64* %109, align 8, !mcsema_real_eip !25
  %RDX_val.i.0.RDX_val.0.RDX_val.0.9.i = load i64, i64* %RDX_val.i, align 8
  %110 = add i64 %RDX_val.i.0.RDX_val.0.RDX_val.0.9.i, 32, !mcsema_real_eip !26
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !26
  store i64 %94, i64* %111, align 8, !mcsema_real_eip !26
  %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_51133.i12 = load i8*, i8** %82, align 8
  %_new_gep_52.i = getelementptr i8, i8* %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_51133.i12, i64 -16
  %112 = ptrtoint i8* %_new_gep_52.i to i64
  %RDX_val.i.0.RDX_val.0.RDX_val.0.10.i = load i64, i64* %RDX_val.i, align 8
  %113 = add i64 %RDX_val.i.0.RDX_val.0.RDX_val.0.10.i, 24, !mcsema_real_eip !27
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !27
  store i64 %112, i64* %114, align 8, !mcsema_real_eip !27
  %115 = bitcast i64* %RDX_val.i to i32**
  %RDX_val.i.0.RDX_val.0.RDX_val.0.11115116134.i13 = load i32*, i32** %115, align 8
  store i32 3, i32* %RDX_val.i.0.RDX_val.0.RDX_val.0.11115116134.i13, align 4, !mcsema_real_eip !28
  store i64 %112, i64* %RDX_val.i, align 8
  %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_54135.i14 = load i8*, i8** %82, align 8
  %_new_gep_55.i = getelementptr i8, i8* %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_54135.i14, i64 -76
  %116 = bitcast i8* %_new_gep_55.i to i32*
  store i32 1, i32* %116, align 4, !mcsema_real_eip !29
  %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_57136.i15 = load i8*, i8** %82, align 8
  %_new_gep_58.i = getelementptr i8, i8* %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_57136.i15, i64 -76
  %117 = bitcast i8* %_new_gep_58.i to i32*
  %118 = load i32, i32* %117, align 4, !mcsema_real_eip !30
  %119 = zext i32 %118 to i64, !mcsema_real_eip !30
  %_RSP_ptr_111.sroa.0.i.0._RSP_ptr_111.sroa.0.0._RSP_ptr_111.sroa.0.0._load_rsp_ptr_60137.i16 = load i8*, i8** %64, align 8
  %_new_gep_61.i = getelementptr i8, i8* %_RSP_ptr_111.sroa.0.i.0._RSP_ptr_111.sroa.0.0._RSP_ptr_111.sroa.0.0._load_rsp_ptr_60137.i16, i64 -8
  %_allin_new_bt_62.i = bitcast i8* %_new_gep_61.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_62.i, align 8, !mcsema_real_eip !31
  %120 = ptrtoint i8* %_new_gep_61.i to i64
  store volatile i64 %120, i64* %_RSP_ptr_111.sroa.0.i, align 8
  store i64 %94, i64* %RAX.i, align 8, !mcsema_real_eip !31
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !31
  store i64 %94, i64* %RCX.i, align 8, !mcsema_real_eip !31
  %RDX_val.i.0.RDX_val.0.RDX_val.0.12.i = load i64, i64* %RDX_val.i, align 8
  store i64 %RDX_val.i.0.RDX_val.0.RDX_val.0.12.i, i64* %RDX.i, align 8, !mcsema_real_eip !31
  store i64 %102, i64* %RSI.i, align 8, !mcsema_real_eip !31
  store i64 %99, i64* %RDI.i, align 8, !mcsema_real_eip !31
  store volatile i64 %120, i64* %RSP.i, align 8
  %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_65118.i = load i64, i64* %_RBP_ptr_112.sroa.0.i, align 8
  store volatile i64 %_RBP_ptr_112.sroa.0.i.0._RBP_ptr_112.sroa.0.0._RBP_ptr_112.sroa.0.0._load_rbp_ptr_65118.i, i64* %RBP.i, align 8
  store i64 %119, i64* %R8.i, align 8, !mcsema_real_eip !31
  store i64 2, i64* %R9.i, align 8, !mcsema_real_eip !31
  %121 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %7, <2 x i64>* %121, align 8
  %122 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %122, align 8
  %123 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %123, align 8
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !31
  store i1 %77, i1* %CF.i, align 1, !mcsema_real_eip !31
  store i1 %74, i1* %PF.i, align 1, !mcsema_real_eip !31
  store i1 %70, i1* %AF.i, align 1, !mcsema_real_eip !31
  store i1 %75, i1* %ZF.i, align 1, !mcsema_real_eip !31
  store i1 %76, i1* %SF.i, align 1, !mcsema_real_eip !31
  store i1 %79, i1* %OF.i, align 1, !mcsema_real_eip !31
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !31
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !31
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !31
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !31
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !31
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !31
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !31
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !31
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !31
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !31
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !31
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !31
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !31
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !31
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !31
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !31
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !31
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !31
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !31
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !31
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !31
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !31
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !31
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !31
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !31
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !31
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !31
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !31
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !31
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !31
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !31
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !31
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !31
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !31
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !31
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !31
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !31
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !31
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !31
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !31
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !31
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !31
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !31
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !31
  %124 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %63, <2 x i64>* %124, align 1
  call void @llvm.trap()
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 272, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 276, [17 x i8] c"\09subq\09$128, %rsp\00"}
!4 = !{i64 283, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!5 = !{i64 290, [21 x i8] c"\09movl\09$10, -16(%rbp)\00"}
!6 = !{i64 297, [21 x i8] c"\09movl\09$10, -12(%rbp)\00"}
!7 = !{i64 304, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!8 = !{i64 318, [9 x i8] c"\09callq\090\00"}
!9 = !{i64 323, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!10 = !{i64 327, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!11 = !{i64 333, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!12 = !{i64 337, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!13 = !{i64 344, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!14 = !{i64 348, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!15 = !{i64 355, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!16 = !{i64 359, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!17 = !{i64 362, [22 x i8] c"\09movl\09%ecx, -48(%rbp)\00"}
!18 = !{i64 365, [22 x i8] c"\09movq\09-16(%rbp), %rdi\00"}
!19 = !{i64 369, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!20 = !{i64 373, [22 x i8] c"\09movq\09-56(%rbp), %rdi\00"}
!21 = !{i64 377, [22 x i8] c"\09movl\09-48(%rbp), %esi\00"}
!22 = !{i64 380, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!23 = !{i64 386, [21 x i8] c"\09movl\09%ecx, 16(%rdx)\00"}
!24 = !{i64 389, [21 x i8] c"\09movq\09-16(%rbp), %r8\00"}
!25 = !{i64 393, [19 x i8] c"\09movq\09%r8, 8(%rdx)\00"}
!26 = !{i64 397, [21 x i8] c"\09movq\09%rax, 32(%rdx)\00"}
!27 = !{i64 405, [20 x i8] c"\09movq\09%r8, 24(%rdx)\00"}
!28 = !{i64 409, [17 x i8] c"\09movl\09$3, (%rdx)\00"}
!29 = !{i64 429, [22 x i8] c"\09movl\09%ecx, -76(%rbp)\00"}
!30 = !{i64 435, [22 x i8] c"\09movl\09-76(%rbp), %r8d\00"}
!31 = !{i64 439, [12 x i8] c"\09callq\09-444\00"}
