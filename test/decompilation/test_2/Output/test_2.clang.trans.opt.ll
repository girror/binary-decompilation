; ModuleID = 'Output/test_2.clang.trans.opt.bc'
source_filename = "Output/test_2.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: noreturn nounwind
define void @mcsema_main(%struct.regs*) local_unnamed_addr #2 {
driverBlockRaw:
  %_RSP_ptr_.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_85.i = alloca [48 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_85.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 48, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_85.i, i64 0, i64 48
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %3 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %4 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %5 = bitcast i64* %R11.i to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %7 = bitcast i64* %R13.i to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %9 = bitcast i64* %R15.i to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %11 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %13 = bitcast x86_fp80* %12 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false) #3, !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %14 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %15 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %16 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %29 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %30 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %37 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %38 = bitcast i8* %37 to i64*
  %39 = load i64, i64* %38, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %40 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %41 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %42 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %43 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %44 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %45 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %46 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %60 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %61 = load <2 x i64>, <2 x i64>* %60, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_86.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %62 = bitcast i64* %_RSP_ptr_.sroa.0.i to i8**
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_94.i1 = load i8*, i8** %62, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_94.i1, i64 -8
  %63 = add i64 %4, -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_86.i, i64* %_allin_new_bt_.i, align 8
  %64 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_94.i1, i64 -40
  %65 = add i64 %4, -40
  %66 = xor i64 %65, %63, !mcsema_real_eip !3
  %67 = and i64 %66, 16, !mcsema_real_eip !3
  %68 = icmp ne i64 %67, 0, !mcsema_real_eip !3
  %69 = trunc i64 %65 to i8, !mcsema_real_eip !3
  %70 = tail call i8 @llvm.ctpop.i8(i8 %69) #3, !mcsema_real_eip !3
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  %73 = icmp eq i64 %65, 0, !mcsema_real_eip !3
  %74 = icmp slt i64 %65, 0
  %75 = icmp ult i64 %63, 32, !mcsema_real_eip !3
  %76 = and i64 %66, %63, !mcsema_real_eip !3
  %77 = icmp slt i64 %76, 0
  %78 = ptrtoint i8* %_new_gep_1.i to i64
  store volatile i64 %78, i64* %_RSP_ptr_.sroa.0.i, align 8
  %_new_gep_3.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_94.i1, i64 -12
  %79 = bitcast i8* %_new_gep_3.i to i32*
  store i32 0, i32* %79, align 4, !mcsema_real_eip !4
  %80 = bitcast i64* %_RSP_ptr_.sroa.0.i to i32**
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_5878896.i2 = load i32*, i32** %80, align 8
  store i32 70, i32* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_5878896.i2, align 4, !mcsema_real_eip !5
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_797.i3 = load i8*, i8** %62, align 8
  %_new_gep_8.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_797.i3, i64 8
  %81 = bitcast i8* %_new_gep_8.i to i32*
  store i32 80, i32* %81, align 4, !mcsema_real_eip !6
  %82 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_1098.i4 = load i8*, i8** %82, align 8
  %_new_gep_11.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_1098.i4, i64 -12
  %83 = bitcast i8* %_new_gep_11.i to i32*
  store i32 80, i32* %83, align 4, !mcsema_real_eip !7
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_1399.i5 = load i8*, i8** %82, align 8
  %_new_gep_14.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_1399.i5, i64 -16
  %84 = bitcast i8* %_new_gep_14.i to i32*
  store i32 70, i32* %84, align 4, !mcsema_real_eip !8
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_16100.i6 = load i8*, i8** %62, align 8
  %_new_gep_17.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_16100.i6, i64 -8
  %_allin_new_bt_18.i = bitcast i8* %_new_gep_17.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18.i, align 8, !mcsema_real_eip !9
  %85 = ptrtoint i8* %_new_gep_17.i to i64
  store volatile i64 %85, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 70, i64* %RAX.i, align 8, !mcsema_real_eip !9
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !9
  %86 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 40, i64 30>, <2 x i64>* %86, align 8
  %87 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 20, i64 10>, <2 x i64>* %87, align 8
  store volatile i64 %85, i64* %RSP.i, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2190.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2190.i, i64* %RBP.i, align 8
  %88 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 50, i64 60>, <2 x i64>* %88, align 8
  store i64 80, i64* %R10.i, align 8, !mcsema_real_eip !9
  %89 = bitcast i64* %R11.i to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %89, align 8
  %90 = bitcast i64* %R13.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %90, align 8
  %91 = bitcast i64* %R15.i to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %91, align 8
  store i1 %75, i1* %CF.i, align 1, !mcsema_real_eip !9
  store i1 %72, i1* %PF.i, align 1, !mcsema_real_eip !9
  store i1 %68, i1* %AF.i, align 1, !mcsema_real_eip !9
  store i1 %73, i1* %ZF.i, align 1, !mcsema_real_eip !9
  store i1 %74, i1* %SF.i, align 1, !mcsema_real_eip !9
  store i1 %77, i1* %OF.i, align 1, !mcsema_real_eip !9
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #3, !mcsema_real_eip !9
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !9
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !9
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !9
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !9
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !9
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !9
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !9
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !9
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !9
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !9
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !9
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !9
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !9
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !9
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !9
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !9
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !9
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !9
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !9
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !9
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !9
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !9
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !9
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !9
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !9
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !9
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !9
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !9
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !9
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !9
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !9
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !9
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !9
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !9
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !9
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !9
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !9
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !9
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !9
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !9
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !9
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !9
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !9
  %92 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %61, <2 x i64>* %92, align 1
  call void @llvm.trap() #3
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 112, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 116, [16 x i8] c"\09subq\09$32, %rsp\00"}
!4 = !{i64 163, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!5 = !{i64 170, [18 x i8] c"\09movl\09$70, (%rsp)\00"}
!6 = !{i64 177, [19 x i8] c"\09movl\09$80, 8(%rsp)\00"}
!7 = !{i64 185, [23 x i8] c"\09movl\09%r10d, -12(%rbp)\00"}
!8 = !{i64 189, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!9 = !{i64 192, [12 x i8] c"\09callq\09-197\00"}