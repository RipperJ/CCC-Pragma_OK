; ModuleID = '/home/lduac/Projects/CCC-Pragma_OK/problems/sort1/insert_sort.prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream" = type { i32 }
%"class.hls::stream.0" = type { i1 }

; Function Attrs: noinline
define void @apatb_hls_db_insert_sort_function_ir(%"class.hls::stream"* %din_strm, %"class.hls::stream"* %kin_strm, %"class.hls::stream.0"* %strm_in_end, %"class.hls::stream"* %dout_strm, %"class.hls::stream"* %kout_strm, %"class.hls::stream.0"* %strm_out_end, i1 %sign) local_unnamed_addr #0 {
entry:
  %din_strm_copy1 = alloca %"class.hls::stream", align 512
  %kin_strm_copy2 = alloca %"class.hls::stream", align 512
  %strm_in_end_copy3 = alloca %"class.hls::stream.0", align 512
  %dout_strm_copy4 = alloca %"class.hls::stream", align 512
  %kout_strm_copy5 = alloca %"class.hls::stream", align 512
  %strm_out_end_copy6 = alloca %"class.hls::stream.0", align 512
  call fastcc void @copy_in(%"class.hls::stream"* %din_strm, %"class.hls::stream"* nonnull align 512 %din_strm_copy1, %"class.hls::stream"* %kin_strm, %"class.hls::stream"* nonnull align 512 %kin_strm_copy2, %"class.hls::stream.0"* %strm_in_end, %"class.hls::stream.0"* nonnull align 512 %strm_in_end_copy3, %"class.hls::stream"* %dout_strm, %"class.hls::stream"* nonnull align 512 %dout_strm_copy4, %"class.hls::stream"* %kout_strm, %"class.hls::stream"* nonnull align 512 %kout_strm_copy5, %"class.hls::stream.0"* %strm_out_end, %"class.hls::stream.0"* nonnull align 512 %strm_out_end_copy6)
  call void @apatb_hls_db_insert_sort_function_hw(%"class.hls::stream"* %din_strm_copy1, %"class.hls::stream"* %kin_strm_copy2, %"class.hls::stream.0"* %strm_in_end_copy3, %"class.hls::stream"* %dout_strm_copy4, %"class.hls::stream"* %kout_strm_copy5, %"class.hls::stream.0"* %strm_out_end_copy6, i1 %sign)
  call fastcc void @copy_out(%"class.hls::stream"* %din_strm, %"class.hls::stream"* nonnull align 512 %din_strm_copy1, %"class.hls::stream"* %kin_strm, %"class.hls::stream"* nonnull align 512 %kin_strm_copy2, %"class.hls::stream.0"* %strm_in_end, %"class.hls::stream.0"* nonnull align 512 %strm_in_end_copy3, %"class.hls::stream"* %dout_strm, %"class.hls::stream"* nonnull align 512 %dout_strm_copy4, %"class.hls::stream"* %kout_strm, %"class.hls::stream"* nonnull align 512 %kout_strm_copy5, %"class.hls::stream.0"* %strm_out_end, %"class.hls::stream.0"* nonnull align 512 %strm_out_end_copy6)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_in(%"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.0"*, %"class.hls::stream.0"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.0"*, %"class.hls::stream.0"* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* align 512 %1, %"class.hls::stream"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* align 512 %3, %"class.hls::stream"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.0"(%"class.hls::stream.0"* align 512 %5, %"class.hls::stream.0"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* align 512 %7, %"class.hls::stream"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* align 512 %9, %"class.hls::stream"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.0"(%"class.hls::stream.0"* align 512 %11, %"class.hls::stream.0"* %10)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* noalias align 512, %"class.hls::stream"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream"* %0, null
  %3 = icmp eq %"class.hls::stream"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream"(%"class.hls::stream"* nonnull align 512 %0, %"class.hls::stream"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %9 = bitcast %"class.hls::stream"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %5, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %8, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_4(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream"(%"class.hls::stream"* noalias nocapture align 512, %"class.hls::stream"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream"* %2 to i8*
  %6 = bitcast %"class.hls::stream"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream", %"class.hls::stream"* %2
  %8 = bitcast %"class.hls::stream"* %2 to i8*
  %9 = bitcast %"class.hls::stream"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream"* %1 to i8*
  %11 = bitcast %"class.hls::stream"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.0"(%"class.hls::stream.0"* noalias align 512, %"class.hls::stream.0"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.0"* %0, null
  %3 = icmp eq %"class.hls::stream.0"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.0"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_1(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.0"(%"class.hls::stream.0"* nonnull align 512 %0, %"class.hls::stream.0"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %9 = bitcast %"class.hls::stream.0"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %5, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %8, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_1(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.0"(%"class.hls::stream.0"* noalias nocapture align 512, %"class.hls::stream.0"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.0"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.0"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.0"* %2 to i8*
  %6 = bitcast %"class.hls::stream.0"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.0", %"class.hls::stream.0"* %2
  %8 = bitcast %"class.hls::stream.0"* %2 to i8*
  %9 = bitcast %"class.hls::stream.0"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.0"* %1 to i8*
  %11 = bitcast %"class.hls::stream.0"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_out(%"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.0"*, %"class.hls::stream.0"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.0"*, %"class.hls::stream.0"* noalias align 512) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %0, %"class.hls::stream"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %2, %"class.hls::stream"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.0"(%"class.hls::stream.0"* %4, %"class.hls::stream.0"* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %6, %"class.hls::stream"* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %8, %"class.hls::stream"* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.0"(%"class.hls::stream.0"* %10, %"class.hls::stream.0"* align 512 %11)
  ret void
}

declare void @apatb_hls_db_insert_sort_function_hw(%"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream.0"*, %"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream.0"*, i1)

define void @hls_db_insert_sort_function_hw_stub_wrapper(%"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream.0"*, %"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream.0"*, i1) #6 {
entry:
  call void @copy_out(%"class.hls::stream"* null, %"class.hls::stream"* %0, %"class.hls::stream"* null, %"class.hls::stream"* %1, %"class.hls::stream.0"* null, %"class.hls::stream.0"* %2, %"class.hls::stream"* null, %"class.hls::stream"* %3, %"class.hls::stream"* null, %"class.hls::stream"* %4, %"class.hls::stream.0"* null, %"class.hls::stream.0"* %5)
  call void @hls_db_insert_sort_function_hw_stub(%"class.hls::stream"* %0, %"class.hls::stream"* %1, %"class.hls::stream.0"* %2, %"class.hls::stream"* %3, %"class.hls::stream"* %4, %"class.hls::stream.0"* %5, i1 %6)
  call void @copy_in(%"class.hls::stream"* null, %"class.hls::stream"* %0, %"class.hls::stream"* null, %"class.hls::stream"* %1, %"class.hls::stream.0"* null, %"class.hls::stream.0"* %2, %"class.hls::stream"* null, %"class.hls::stream"* %3, %"class.hls::stream"* null, %"class.hls::stream"* %4, %"class.hls::stream.0"* null, %"class.hls::stream.0"* %5)
  ret void
}

declare void @hls_db_insert_sort_function_hw_stub(%"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream.0"*, %"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream.0"*, i1)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}