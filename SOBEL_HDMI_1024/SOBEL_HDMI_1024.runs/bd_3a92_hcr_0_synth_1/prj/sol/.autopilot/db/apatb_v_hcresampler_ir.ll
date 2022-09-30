; ModuleID = '/home/benchmarker/FPGAProject/SOBEL_HDMI_1024/SOBEL_HDMI_1024.runs/bd_3a92_hcr_0_synth_1/prj/sol/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>" = type { %"struct.hls::axis<ap_uint<24>, 1, 1, 1>" }
%"struct.hls::axis<ap_uint<24>, 1, 1, 1>" = type { %"struct.ap_uint<24>", %"struct.ap_uint<3>", %"struct.ap_uint<3>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<24>" = type { %"struct.ap_int_base<24, false>" }
%"struct.ap_int_base<24, false>" = type { %"struct.ssdm_int<24, false>" }
%"struct.ssdm_int<24, false>" = type { i24 }
%"struct.ap_uint<3>" = type { %"struct.ap_int_base<3, false>" }
%"struct.ap_int_base<3, false>" = type { %"struct.ssdm_int<3, false>" }
%"struct.ssdm_int<3, false>" = type { i3 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: nounwind
declare void @llvm.assume(i1) #0

; Function Attrs: noinline
define void @apatb_v_hcresampler_ir(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias nonnull dereferenceable(12) %s_axis_video, i16 zeroext %width, i16 zeroext %height, i8 zeroext %input_video_format, i8 zeroext %output_video_format, [4 x i16]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2" %coefs, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias nonnull dereferenceable(12) %m_axis_video) local_unnamed_addr #1 {
entry:
  %s_axis_video_copy.data = alloca i24
  %s_axis_video_copy.keep = alloca i3
  %s_axis_video_copy.strb = alloca i3
  %s_axis_video_copy.user = alloca i1
  %s_axis_video_copy.last = alloca i1
  %s_axis_video_copy.id = alloca i1
  %s_axis_video_copy.dest = alloca i1
  %coefs_copy_0_0 = alloca i16, align 512
  %coefs_copy_0_1 = alloca i16, align 512
  %coefs_copy_0_2 = alloca i16, align 512
  %coefs_copy_0_3 = alloca i16, align 512
  %coefs_copy_1_0 = alloca i16, align 512
  %coefs_copy_1_1 = alloca i16, align 512
  %coefs_copy_1_2 = alloca i16, align 512
  %coefs_copy_1_3 = alloca i16, align 512
  %m_axis_video_copy.data = alloca i24
  %m_axis_video_copy.keep = alloca i3
  %m_axis_video_copy.strb = alloca i3
  %m_axis_video_copy.user = alloca i1
  %m_axis_video_copy.last = alloca i1
  %m_axis_video_copy.id = alloca i1
  %m_axis_video_copy.dest = alloca i1
  %0 = bitcast [4 x i16]* %coefs to [2 x [4 x i16]]*
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* nonnull %s_axis_video, i24* %s_axis_video_copy.data, i3* %s_axis_video_copy.keep, i3* %s_axis_video_copy.strb, i1* %s_axis_video_copy.user, i1* %s_axis_video_copy.last, i1* %s_axis_video_copy.id, i1* %s_axis_video_copy.dest, [2 x [4 x i16]]* nonnull %0, i16* nonnull align 512 %coefs_copy_0_0, i16* nonnull align 512 %coefs_copy_0_1, i16* nonnull align 512 %coefs_copy_0_2, i16* nonnull align 512 %coefs_copy_0_3, i16* nonnull align 512 %coefs_copy_1_0, i16* nonnull align 512 %coefs_copy_1_1, i16* nonnull align 512 %coefs_copy_1_2, i16* nonnull align 512 %coefs_copy_1_3, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* nonnull %m_axis_video, i24* %m_axis_video_copy.data, i3* %m_axis_video_copy.keep, i3* %m_axis_video_copy.strb, i1* %m_axis_video_copy.user, i1* %m_axis_video_copy.last, i1* %m_axis_video_copy.id, i1* %m_axis_video_copy.dest)
  call void @apatb_v_hcresampler_hw(i24* %s_axis_video_copy.data, i3* %s_axis_video_copy.keep, i3* %s_axis_video_copy.strb, i1* %s_axis_video_copy.user, i1* %s_axis_video_copy.last, i1* %s_axis_video_copy.id, i1* %s_axis_video_copy.dest, i16 %width, i16 %height, i8 %input_video_format, i8 %output_video_format, i16* %coefs_copy_0_0, i16* %coefs_copy_0_1, i16* %coefs_copy_0_2, i16* %coefs_copy_0_3, i16* %coefs_copy_1_0, i16* %coefs_copy_1_1, i16* %coefs_copy_1_2, i16* %coefs_copy_1_3, i24* %m_axis_video_copy.data, i3* %m_axis_video_copy.keep, i3* %m_axis_video_copy.strb, i1* %m_axis_video_copy.user, i1* %m_axis_video_copy.last, i1* %m_axis_video_copy.id, i1* %m_axis_video_copy.dest)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %s_axis_video, i24* %s_axis_video_copy.data, i3* %s_axis_video_copy.keep, i3* %s_axis_video_copy.strb, i1* %s_axis_video_copy.user, i1* %s_axis_video_copy.last, i1* %s_axis_video_copy.id, i1* %s_axis_video_copy.dest, [2 x [4 x i16]]* %0, i16* %coefs_copy_0_0, i16* %coefs_copy_0_1, i16* %coefs_copy_0_2, i16* %coefs_copy_0_3, i16* %coefs_copy_1_0, i16* %coefs_copy_1_1, i16* %coefs_copy_1_2, i16* %coefs_copy_1_3, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %m_axis_video, i24* %m_axis_video_copy.data, i3* %m_axis_video_copy.keep, i3* %m_axis_video_copy.strb, i1* %m_axis_video_copy.user, i1* %m_axis_video_copy.last, i1* %m_axis_video_copy.id, i1* %m_axis_video_copy.dest)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a2a4i16.7.8(i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0_3, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1_3, [2 x [4 x i16]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq i16* %_0_0, null
  %2 = icmp eq [2 x [4 x i16]]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %4 = trunc i64 %for.loop.idx10 to i1
  %cond = icmp eq i1 %4, false
  br label %for.loop2

for.loop2:                                        ; preds = %dst.addr57.exit, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %dst.addr57.exit ]
  %src.addr68 = getelementptr [2 x [4 x i16]], [2 x [4 x i16]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load i16, i16* %src.addr68, align 2
  %6 = trunc i64 %for.loop.idx39 to i2
  br i1 %cond, label %dst.addr57.case.0, label %dst.addr57.case.1

dst.addr57.case.0:                                ; preds = %for.loop2
  switch i2 %6, label %dst.addr57.case.3 [
    i2 0, label %dst.addr57.case.03
    i2 1, label %dst.addr57.case.14
    i2 -2, label %dst.addr57.case.2
  ]

dst.addr57.case.03:                               ; preds = %dst.addr57.case.0
  store i16 %5, i16* %_0_0, align 512
  br label %dst.addr57.exit2

dst.addr57.case.14:                               ; preds = %dst.addr57.case.0
  store i16 %5, i16* %_0_1, align 512
  br label %dst.addr57.exit2

dst.addr57.case.2:                                ; preds = %dst.addr57.case.0
  store i16 %5, i16* %_0_2, align 512
  br label %dst.addr57.exit2

dst.addr57.case.3:                                ; preds = %dst.addr57.case.0
  store i16 %5, i16* %_0_3, align 512
  br label %dst.addr57.exit2

dst.addr57.exit2:                                 ; preds = %dst.addr57.case.3, %dst.addr57.case.2, %dst.addr57.case.14, %dst.addr57.case.03
  br label %dst.addr57.exit

dst.addr57.case.1:                                ; preds = %for.loop2
  call void @llvm.assume(i1 %4)
  switch i2 %6, label %dst.addr57.case.310 [
    i2 0, label %dst.addr57.case.07
    i2 1, label %dst.addr57.case.18
    i2 -2, label %dst.addr57.case.29
  ]

dst.addr57.case.07:                               ; preds = %dst.addr57.case.1
  store i16 %5, i16* %_1_0, align 512
  br label %dst.addr57.exit6

dst.addr57.case.18:                               ; preds = %dst.addr57.case.1
  store i16 %5, i16* %_1_1, align 512
  br label %dst.addr57.exit6

dst.addr57.case.29:                               ; preds = %dst.addr57.case.1
  store i16 %5, i16* %_1_2, align 512
  br label %dst.addr57.exit6

dst.addr57.case.310:                              ; preds = %dst.addr57.case.1
  store i16 %5, i16* %_1_3, align 512
  br label %dst.addr57.exit6

dst.addr57.exit6:                                 ; preds = %dst.addr57.case.310, %dst.addr57.case.29, %dst.addr57.case.18, %dst.addr57.case.07
  br label %dst.addr57.exit

dst.addr57.exit:                                  ; preds = %dst.addr57.exit6, %dst.addr57.exit2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %dst.addr57.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 2
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_in(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias "orig.arg.no"="0", i24* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_V_data_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_V_keep_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6" %_V_dest_V, [2 x [4 x i16]]* noalias readonly "orig.arg.no"="2", i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_3, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_3, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias "orig.arg.no"="4", i24* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.0" %_V_data_V1, i3* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.1" %_V_keep_V2, i3* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.4" %_V_last_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.5" %_V_id_V6, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.6" %_V_dest_V7) #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>.34"(i24* %_V_data_V, i3* %_V_keep_V, i3* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %0)
  call void @onebyonecpy_hls.p0a2a4i16.7.8(i16* align 512 %_0_0, i16* align 512 %_0_1, i16* align 512 %_0_2, i16* align 512 %_0_3, i16* align 512 %_1_0, i16* align 512 %_1_1, i16* align 512 %_1_2, i16* align 512 %_1_3, [2 x [4 x i16]]* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>.34"(i24* %_V_data_V1, i3* %_V_keep_V2, i3* %_V_strb_V3, i1* %_V_user_V4, i1* %_V_last_V5, i1* %_V_id_V6, i1* %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a2a4i16.15.16([2 x [4 x i16]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_3) #2 {
entry:
  %1 = icmp eq [2 x [4 x i16]]* %0, null
  %2 = icmp eq i16* %_0_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %4 = trunc i64 %for.loop.idx10 to i1
  %cond = icmp eq i1 %4, false
  br label %for.loop2

for.loop2:                                        ; preds = %src.addr68.exit, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %src.addr68.exit ]
  %dst.addr57 = getelementptr [2 x [4 x i16]], [2 x [4 x i16]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = trunc i64 %for.loop.idx39 to i2
  br i1 %cond, label %src.addr68.case.0, label %src.addr68.case.1

src.addr68.case.0:                                ; preds = %for.loop2
  switch i2 %5, label %src.addr68.case.3 [
    i2 0, label %src.addr68.case.03
    i2 1, label %src.addr68.case.14
    i2 -2, label %src.addr68.case.2
  ]

src.addr68.case.03:                               ; preds = %src.addr68.case.0
  %_0_05 = load i16, i16* %_0_0, align 512
  br label %src.addr68.exit

src.addr68.case.14:                               ; preds = %src.addr68.case.0
  %_0_16 = load i16, i16* %_0_1, align 512
  br label %src.addr68.exit

src.addr68.case.2:                                ; preds = %src.addr68.case.0
  %_0_27 = load i16, i16* %_0_2, align 512
  br label %src.addr68.exit

src.addr68.case.3:                                ; preds = %src.addr68.case.0
  %_0_38 = load i16, i16* %_0_3, align 512
  br label %src.addr68.exit

src.addr68.case.1:                                ; preds = %for.loop2
  call void @llvm.assume(i1 %4)
  switch i2 %5, label %src.addr68.case.314 [
    i2 0, label %src.addr68.case.011
    i2 1, label %src.addr68.case.112
    i2 -2, label %src.addr68.case.213
  ]

src.addr68.case.011:                              ; preds = %src.addr68.case.1
  %_1_015 = load i16, i16* %_1_0, align 512
  br label %src.addr68.exit

src.addr68.case.112:                              ; preds = %src.addr68.case.1
  %_1_116 = load i16, i16* %_1_1, align 512
  br label %src.addr68.exit

src.addr68.case.213:                              ; preds = %src.addr68.case.1
  %_1_217 = load i16, i16* %_1_2, align 512
  br label %src.addr68.exit

src.addr68.case.314:                              ; preds = %src.addr68.case.1
  %_1_318 = load i16, i16* %_1_3, align 512
  br label %src.addr68.exit

src.addr68.exit:                                  ; preds = %src.addr68.case.314, %src.addr68.case.213, %src.addr68.case.112, %src.addr68.case.011, %src.addr68.case.3, %src.addr68.case.2, %src.addr68.case.14, %src.addr68.case.03
  %6 = phi i16 [ %_0_05, %src.addr68.case.03 ], [ %_0_16, %src.addr68.case.14 ], [ %_0_27, %src.addr68.case.2 ], [ %_0_38, %src.addr68.case.3 ], [ %_1_015, %src.addr68.case.011 ], [ %_1_116, %src.addr68.case.112 ], [ %_1_217, %src.addr68.case.213 ], [ %_1_318, %src.addr68.case.314 ]
  store i16 %6, i16* %dst.addr57, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %src.addr68.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 2
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_out(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias "orig.arg.no"="0", i24* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_V_data_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_V_keep_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6" %_V_dest_V, [2 x [4 x i16]]* noalias "orig.arg.no"="2", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_3, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias "orig.arg.no"="4", i24* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.0" %_V_data_V1, i3* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.1" %_V_keep_V2, i3* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.4" %_V_last_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.5" %_V_id_V6, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.6" %_V_dest_V7) #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %0, i24* %_V_data_V, i3* %_V_keep_V, i3* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  call void @onebyonecpy_hls.p0a2a4i16.15.16([2 x [4 x i16]]* %1, i16* align 512 %_0_0, i16* align 512 %_0_1, i16* align 512 %_0_2, i16* align 512 %_0_3, i16* align 512 %_1_0, i16* align 512 %_1_1, i16* align 512 %_1_2, i16* align 512 %_1_3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %2, i24* %_V_data_V1, i3* %_V_keep_V2, i3* %_V_strb_V3, i1* %_V_user_V4, i1* %_V_last_V5, i1* %_V_id_V6, i1* %_V_dest_V7)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i24* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V) unnamed_addr #5 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>.28"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* nonnull align 512 %0, i24* %_V_data_V, i3* %_V_keep_V, i3* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>.28"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i24* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i3* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i3* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V) unnamed_addr #6 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"
  %2 = alloca i24
  %3 = alloca i3
  %4 = alloca i3
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast i24* %_V_data_V to i8*
  %10 = call i1 @fpga_fifo_not_empty_4(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast i24* %2 to i8*
  %12 = bitcast i24* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %11, i8* %12)
  %13 = load volatile i24, i24* %2
  %14 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 0
  %15 = bitcast %"struct.ap_uint<24>"* %14 to i24*
  store i24 %13, i24* %15
  %16 = bitcast i3* %4 to i8*
  %17 = bitcast i3* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %16, i8* %17)
  %18 = bitcast i3* %4 to i8*
  %19 = load i8, i8* %18
  %20 = trunc i8 %19 to i3
  %21 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 1
  %22 = bitcast %"struct.ap_uint<3>"* %21 to i3*
  store i3 %20, i3* %22
  %23 = bitcast i3* %3 to i8*
  %24 = bitcast i3* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %23, i8* %24)
  %25 = bitcast i3* %3 to i8*
  %26 = load i8, i8* %25
  %27 = trunc i8 %26 to i3
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 2
  %29 = bitcast %"struct.ap_uint<3>"* %28 to i3*
  store i3 %27, i3* %29
  %30 = bitcast i1* %8 to i8*
  %31 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_pop_1(i8* %30, i8* %31)
  %32 = bitcast i1* %8 to i8*
  %33 = load i8, i8* %32
  %34 = trunc i8 %33 to i1
  %35 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 3
  %36 = bitcast %"struct.ap_uint<1>"* %35 to i1*
  store i1 %34, i1* %36
  %37 = bitcast i1* %7 to i8*
  %38 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %37, i8* %38)
  %39 = bitcast i1* %7 to i8*
  %40 = load i8, i8* %39
  %41 = trunc i8 %40 to i1
  %42 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 4
  %43 = bitcast %"struct.ap_uint<1>"* %42 to i1*
  store i1 %41, i1* %43
  %44 = bitcast i1* %6 to i8*
  %45 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_pop_1(i8* %44, i8* %45)
  %46 = bitcast i1* %6 to i8*
  %47 = load i8, i8* %46
  %48 = trunc i8 %47 to i1
  %49 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 5
  %50 = bitcast %"struct.ap_uint<1>"* %49 to i1*
  store i1 %48, i1* %50
  %51 = bitcast i1* %5 to i8*
  %52 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %51, i8* %52)
  %53 = bitcast i1* %5 to i8*
  %54 = load i8, i8* %53
  %55 = trunc i8 %54 to i1
  %56 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 6
  %57 = bitcast %"struct.ap_uint<1>"* %56 to i1*
  store i1 %55, i1* %57
  %58 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1 to i8*
  %59 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %58, i8* %59)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>.34"(i24* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>.37"(i24* %_V_data_V, i3* %_V_keep_V, i3* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>.37"(i24* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i3* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i3* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.5" %_V_id_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #6 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_12(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<24>"* %8 to i24*
  %10 = bitcast i24* %9 to i8*
  %11 = bitcast i24* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<3>"* %12 to i3*
  %14 = bitcast i3* %13 to i8*
  %15 = bitcast i3* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<3>"* %16 to i3*
  %18 = bitcast i3* %17 to i8*
  %19 = bitcast i3* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 3
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  %24 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 4
  %25 = bitcast %"struct.ap_uint<1>"* %24 to i1*
  %26 = bitcast i1* %25 to i8*
  %27 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 5
  %29 = bitcast %"struct.ap_uint<1>"* %28 to i1*
  %30 = bitcast i1* %29 to i8*
  %31 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_push_1(i8* %30, i8* %31)
  %32 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 6
  %33 = bitcast %"struct.ap_uint<1>"* %32 to i1*
  %34 = bitcast i1* %33 to i8*
  %35 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %34, i8* %35)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_v_hcresampler_hw(i24*, i3*, i3*, i1*, i1*, i1*, i1*, i16, i16, i8, i8, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i24*, i3*, i3*, i1*, i1*, i1*, i1*)

; Function Attrs: argmemonly noinline
define internal void @copy_back(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias "orig.arg.no"="0", i24* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_V_data_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_V_keep_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6" %_V_dest_V, [2 x [4 x i16]]* noalias "orig.arg.no"="2", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_3, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias "orig.arg.no"="4", i24* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.0" %_V_data_V1, i3* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.1" %_V_keep_V2, i3* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.4" %_V_last_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.5" %_V_id_V6, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="12.6" %_V_dest_V7) #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %0, i24* %_V_data_V, i3* %_V_keep_V, i3* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %2, i24* %_V_data_V1, i3* %_V_keep_V2, i3* %_V_strb_V3, i1* %_V_user_V4, i1* %_V_last_V5, i1* %_V_id_V6, i1* %_V_dest_V7)
  ret void
}

define void @v_hcresampler_hw_stub_wrapper(i24*, i3*, i3*, i1*, i1*, i1*, i1*, i16, i16, i8, i8, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i24*, i3*, i3*, i1*, i1*, i1*, i1*) #7 {
entry:
  %26 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"
  %27 = alloca [2 x [4 x i16]]
  %28 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %26, i24* %0, i3* %1, i3* %2, i1* %3, i1* %4, i1* %5, i1* %6, [2 x [4 x i16]]* %27, i16* %11, i16* %12, i16* %13, i16* %14, i16* %15, i16* %16, i16* %17, i16* %18, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %28, i24* %19, i3* %20, i3* %21, i1* %22, i1* %23, i1* %24, i1* %25)
  %29 = bitcast [2 x [4 x i16]]* %27 to [4 x i16]*
  call void @v_hcresampler_hw_stub(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %26, i16 %7, i16 %8, i8 %9, i8 %10, [4 x i16]* %29, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %28)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %26, i24* %0, i3* %1, i3* %2, i1* %3, i1* %4, i1* %5, i1* %6, [2 x [4 x i16]]* %27, i16* %11, i16* %12, i16* %13, i16* %14, i16* %15, i16* %16, i16* %17, i16* %18, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %28, i24* %19, i3* %20, i3* %21, i1* %22, i1* %23, i1* %24, i1* %25)
  ret void
}

declare void @v_hcresampler_hw_stub(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"*, i16, i16, i8, i8, [4 x i16]*, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"*)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #6 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #7 = { "fpga.wrapper.func"="stub" }

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
