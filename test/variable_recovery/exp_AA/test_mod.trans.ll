; ModuleID = 'Output/test_0.clang.trans.bc'
source_filename = "Output/test_0.clang.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_

  %RDI_val = alloca i64
  %RAX_val = alloca i64
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0
  %foo1 = load i64, i64* %RAX
  store i64 %foo1, i64* %RAX_val

  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_

  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -24
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %foo83 = ptrtoint i64* %_allin_new_bt_2 to i64
  store i64 %foo83, i64* %RAX_val

  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -24
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %foo90 = load i64, i64* %RAX_val
  store i64 %foo90, i64* %_allin_new_bt_7




  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -24
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %foo94 = load i64, i64* %_allin_new_bt_10
  store i64 %foo94, i64* %RAX_val

  %foo95 = inttoptr i64 %foo94 to i64*
  %foo96 = bitcast i64* %foo95 to i32*
  store i32 1, i32* %foo96

  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -24
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %foo100 = load i64, i64* %_allin_new_bt_13
  store i64 %foo100, i64* %RAX_val

  %foo101 = add i64 %foo100, 4
  %foo102 = inttoptr i64 %foo101 to i64*
  %foo103 = bitcast i64* %foo102 to i32*
  store i32 2, i32* %foo103

  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -24
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %foo107 = load i64, i64* %_allin_new_bt_16
  store i64 %foo107, i64* %RAX_val
  %foo108 = add i64 %foo107, 4
  %foo109 = inttoptr i64 %foo108 to i64*
  %foo110 = bitcast i64* %foo109 to i32*
  %foo111 = load i32, i32* %foo110
  %foo112 = zext i32 %foo111 to i64
  store i64 %foo112, i64* %RAX_val
  %_load_rsp_ptr_17 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_18 = bitcast i8* %_load_rsp_ptr_17 to i64*
  %foo115 = load i64, i64* %_allin_new_bt_18
  %_new_int2ptr_ = inttoptr i64 %foo115 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  %_new_gep_19 = getelementptr i8, i8* %_load_rsp_ptr_17, i64 16
  store volatile i8* %_new_gep_19, i8** %_RSP_ptr_

  %foo117 = load i64, i64* %RAX_val
  store i64 %foo117, i64* %RAX
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 0
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 0
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}

attributes #0 = { argmemonly nounwind }