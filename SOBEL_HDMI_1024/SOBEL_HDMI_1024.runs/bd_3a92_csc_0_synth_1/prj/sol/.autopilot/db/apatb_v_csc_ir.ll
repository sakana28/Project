; ModuleID = '/home/benchmarker/FPGAProject/SOBEL_HDMI_1024/SOBEL_HDMI_1024.runs/bd_3a92_csc_0_synth_1/prj/sol/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<10>" = type { %"struct.ap_int_base<10, true>" }
%"struct.ap_int_base<10, true>" = type { %"struct.ssdm_int<10, true>" }
%"struct.ssdm_int<10, true>" = type { i10 }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
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

; Function Attrs: noinline
define void @apatb_v_csc_ir(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias nonnull dereferenceable(12) %s_axis_video, i8* noalias nocapture nonnull readonly dereferenceable(1) %InVideoFormat, i8* noalias nocapture nonnull readonly dereferenceable(1) %OutVideoFormat, i16* noalias nocapture nonnull readonly dereferenceable(2) %width, i16* noalias nocapture nonnull readonly dereferenceable(2) %height, i16* noalias nocapture nonnull readonly dereferenceable(2) %ColStart, i16* noalias nocapture nonnull readonly dereferenceable(2) %ColEnd, i16* noalias nocapture nonnull readonly dereferenceable(2) %RowStart, i16* noalias nocapture nonnull readonly dereferenceable(2) %RowEnd, i16* noalias nocapture nonnull readonly dereferenceable(2) %K11, i16* noalias nocapture nonnull readonly dereferenceable(2) %K12, i16* noalias nocapture nonnull readonly dereferenceable(2) %K13, i16* noalias nocapture nonnull readonly dereferenceable(2) %K21, i16* noalias nocapture nonnull readonly dereferenceable(2) %K22, i16* noalias nocapture nonnull readonly dereferenceable(2) %K23, i16* noalias nocapture nonnull readonly dereferenceable(2) %K31, i16* noalias nocapture nonnull readonly dereferenceable(2) %K32, i16* noalias nocapture nonnull readonly dereferenceable(2) %K33, %"struct.ap_int<10>"* noalias nocapture nonnull readonly dereferenceable(2) %ROffset, %"struct.ap_int<10>"* noalias nocapture nonnull readonly dereferenceable(2) %GOffset, %"struct.ap_int<10>"* noalias nocapture nonnull readonly dereferenceable(2) %BOffset, %"struct.ap_uint<8>"* noalias nocapture nonnull readonly dereferenceable(1) %ClampMin, %"struct.ap_uint<8>"* noalias nocapture nonnull readonly dereferenceable(1) %ClipMax, i16* noalias nocapture nonnull readonly dereferenceable(2) %K11_2, i16* noalias nocapture nonnull readonly dereferenceable(2) %K12_2, i16* noalias nocapture nonnull readonly dereferenceable(2) %K13_2, i16* noalias nocapture nonnull readonly dereferenceable(2) %K21_2, i16* noalias nocapture nonnull readonly dereferenceable(2) %K22_2, i16* noalias nocapture nonnull readonly dereferenceable(2) %K23_2, i16* noalias nocapture nonnull readonly dereferenceable(2) %K31_2, i16* noalias nocapture nonnull readonly dereferenceable(2) %K32_2, i16* noalias nocapture nonnull readonly dereferenceable(2) %K33_2, %"struct.ap_int<10>"* noalias nocapture nonnull readonly dereferenceable(2) %ROffset_2, %"struct.ap_int<10>"* noalias nocapture nonnull readonly dereferenceable(2) %GOffset_2, %"struct.ap_int<10>"* noalias nocapture nonnull readonly dereferenceable(2) %BOffset_2, %"struct.ap_uint<8>"* noalias nocapture nonnull readonly dereferenceable(1) %ClampMin_2, %"struct.ap_uint<8>"* noalias nocapture nonnull readonly dereferenceable(1) %ClipMax_2, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias nonnull dereferenceable(12) %m_axis_video) local_unnamed_addr #0 {
entry:
  %s_axis_video_copy.data = alloca i24
  %s_axis_video_copy.keep = alloca i3
  %s_axis_video_copy.strb = alloca i3
  %s_axis_video_copy.user = alloca i1
  %s_axis_video_copy.last = alloca i1
  %s_axis_video_copy.id = alloca i1
  %s_axis_video_copy.dest = alloca i1
  %InVideoFormat_copy = alloca i8, align 512
  %OutVideoFormat_copy = alloca i8, align 512
  %width_copy = alloca i16, align 512
  %height_copy = alloca i16, align 512
  %ColStart_copy = alloca i16, align 512
  %ColEnd_copy = alloca i16, align 512
  %RowStart_copy = alloca i16, align 512
  %RowEnd_copy = alloca i16, align 512
  %K11_copy = alloca i16, align 512
  %K12_copy = alloca i16, align 512
  %K13_copy = alloca i16, align 512
  %K21_copy = alloca i16, align 512
  %K22_copy = alloca i16, align 512
  %K23_copy = alloca i16, align 512
  %K31_copy = alloca i16, align 512
  %K32_copy = alloca i16, align 512
  %K33_copy = alloca i16, align 512
  %ROffset_copy = alloca %"struct.ap_int<10>", align 512
  %GOffset_copy = alloca %"struct.ap_int<10>", align 512
  %BOffset_copy = alloca %"struct.ap_int<10>", align 512
  %ClampMin_copy = alloca %"struct.ap_uint<8>", align 512
  %ClipMax_copy = alloca %"struct.ap_uint<8>", align 512
  %K11_2_copy = alloca i16, align 512
  %K12_2_copy = alloca i16, align 512
  %K13_2_copy = alloca i16, align 512
  %K21_2_copy = alloca i16, align 512
  %K22_2_copy = alloca i16, align 512
  %K23_2_copy = alloca i16, align 512
  %K31_2_copy = alloca i16, align 512
  %K32_2_copy = alloca i16, align 512
  %K33_2_copy = alloca i16, align 512
  %ROffset_2_copy = alloca %"struct.ap_int<10>", align 512
  %GOffset_2_copy = alloca %"struct.ap_int<10>", align 512
  %BOffset_2_copy = alloca %"struct.ap_int<10>", align 512
  %ClampMin_2_copy = alloca %"struct.ap_uint<8>", align 512
  %ClipMax_2_copy = alloca %"struct.ap_uint<8>", align 512
  %m_axis_video_copy.data = alloca i24
  %m_axis_video_copy.keep = alloca i3
  %m_axis_video_copy.strb = alloca i3
  %m_axis_video_copy.user = alloca i1
  %m_axis_video_copy.last = alloca i1
  %m_axis_video_copy.id = alloca i1
  %m_axis_video_copy.dest = alloca i1
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* nonnull %s_axis_video, i24* %s_axis_video_copy.data, i3* %s_axis_video_copy.keep, i3* %s_axis_video_copy.strb, i1* %s_axis_video_copy.user, i1* %s_axis_video_copy.last, i1* %s_axis_video_copy.id, i1* %s_axis_video_copy.dest, i8* nonnull %InVideoFormat, i8* nonnull align 512 %InVideoFormat_copy, i8* nonnull %OutVideoFormat, i8* nonnull align 512 %OutVideoFormat_copy, i16* nonnull %width, i16* nonnull align 512 %width_copy, i16* nonnull %height, i16* nonnull align 512 %height_copy, i16* nonnull %ColStart, i16* nonnull align 512 %ColStart_copy, i16* nonnull %ColEnd, i16* nonnull align 512 %ColEnd_copy, i16* nonnull %RowStart, i16* nonnull align 512 %RowStart_copy, i16* nonnull %RowEnd, i16* nonnull align 512 %RowEnd_copy, i16* nonnull %K11, i16* nonnull align 512 %K11_copy, i16* nonnull %K12, i16* nonnull align 512 %K12_copy, i16* nonnull %K13, i16* nonnull align 512 %K13_copy, i16* nonnull %K21, i16* nonnull align 512 %K21_copy, i16* nonnull %K22, i16* nonnull align 512 %K22_copy, i16* nonnull %K23, i16* nonnull align 512 %K23_copy, i16* nonnull %K31, i16* nonnull align 512 %K31_copy, i16* nonnull %K32, i16* nonnull align 512 %K32_copy, i16* nonnull %K33, i16* nonnull align 512 %K33_copy, %"struct.ap_int<10>"* nonnull %ROffset, %"struct.ap_int<10>"* nonnull align 512 %ROffset_copy, %"struct.ap_int<10>"* nonnull %GOffset, %"struct.ap_int<10>"* nonnull align 512 %GOffset_copy, %"struct.ap_int<10>"* nonnull %BOffset, %"struct.ap_int<10>"* nonnull align 512 %BOffset_copy, %"struct.ap_uint<8>"* nonnull %ClampMin, %"struct.ap_uint<8>"* nonnull align 512 %ClampMin_copy, %"struct.ap_uint<8>"* nonnull %ClipMax, %"struct.ap_uint<8>"* nonnull align 512 %ClipMax_copy, i16* nonnull %K11_2, i16* nonnull align 512 %K11_2_copy, i16* nonnull %K12_2, i16* nonnull align 512 %K12_2_copy, i16* nonnull %K13_2, i16* nonnull align 512 %K13_2_copy, i16* nonnull %K21_2, i16* nonnull align 512 %K21_2_copy, i16* nonnull %K22_2, i16* nonnull align 512 %K22_2_copy, i16* nonnull %K23_2, i16* nonnull align 512 %K23_2_copy, i16* nonnull %K31_2, i16* nonnull align 512 %K31_2_copy, i16* nonnull %K32_2, i16* nonnull align 512 %K32_2_copy, i16* nonnull %K33_2, i16* nonnull align 512 %K33_2_copy, %"struct.ap_int<10>"* nonnull %ROffset_2, %"struct.ap_int<10>"* nonnull align 512 %ROffset_2_copy, %"struct.ap_int<10>"* nonnull %GOffset_2, %"struct.ap_int<10>"* nonnull align 512 %GOffset_2_copy, %"struct.ap_int<10>"* nonnull %BOffset_2, %"struct.ap_int<10>"* nonnull align 512 %BOffset_2_copy, %"struct.ap_uint<8>"* nonnull %ClampMin_2, %"struct.ap_uint<8>"* nonnull align 512 %ClampMin_2_copy, %"struct.ap_uint<8>"* nonnull %ClipMax_2, %"struct.ap_uint<8>"* nonnull align 512 %ClipMax_2_copy, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* nonnull %m_axis_video, i24* %m_axis_video_copy.data, i3* %m_axis_video_copy.keep, i3* %m_axis_video_copy.strb, i1* %m_axis_video_copy.user, i1* %m_axis_video_copy.last, i1* %m_axis_video_copy.id, i1* %m_axis_video_copy.dest)
  call void @apatb_v_csc_hw(i24* %s_axis_video_copy.data, i3* %s_axis_video_copy.keep, i3* %s_axis_video_copy.strb, i1* %s_axis_video_copy.user, i1* %s_axis_video_copy.last, i1* %s_axis_video_copy.id, i1* %s_axis_video_copy.dest, i8* %InVideoFormat_copy, i8* %OutVideoFormat_copy, i16* %width_copy, i16* %height_copy, i16* %ColStart_copy, i16* %ColEnd_copy, i16* %RowStart_copy, i16* %RowEnd_copy, i16* %K11_copy, i16* %K12_copy, i16* %K13_copy, i16* %K21_copy, i16* %K22_copy, i16* %K23_copy, i16* %K31_copy, i16* %K32_copy, i16* %K33_copy, %"struct.ap_int<10>"* %ROffset_copy, %"struct.ap_int<10>"* %GOffset_copy, %"struct.ap_int<10>"* %BOffset_copy, %"struct.ap_uint<8>"* %ClampMin_copy, %"struct.ap_uint<8>"* %ClipMax_copy, i16* %K11_2_copy, i16* %K12_2_copy, i16* %K13_2_copy, i16* %K21_2_copy, i16* %K22_2_copy, i16* %K23_2_copy, i16* %K31_2_copy, i16* %K32_2_copy, i16* %K33_2_copy, %"struct.ap_int<10>"* %ROffset_2_copy, %"struct.ap_int<10>"* %GOffset_2_copy, %"struct.ap_int<10>"* %BOffset_2_copy, %"struct.ap_uint<8>"* %ClampMin_2_copy, %"struct.ap_uint<8>"* %ClipMax_2_copy, i24* %m_axis_video_copy.data, i3* %m_axis_video_copy.keep, i3* %m_axis_video_copy.strb, i1* %m_axis_video_copy.user, i1* %m_axis_video_copy.last, i1* %m_axis_video_copy.id, i1* %m_axis_video_copy.dest)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %s_axis_video, i24* %s_axis_video_copy.data, i3* %s_axis_video_copy.keep, i3* %s_axis_video_copy.strb, i1* %s_axis_video_copy.user, i1* %s_axis_video_copy.last, i1* %s_axis_video_copy.id, i1* %s_axis_video_copy.dest, i8* %InVideoFormat, i8* %InVideoFormat_copy, i8* %OutVideoFormat, i8* %OutVideoFormat_copy, i16* %width, i16* %width_copy, i16* %height, i16* %height_copy, i16* %ColStart, i16* %ColStart_copy, i16* %ColEnd, i16* %ColEnd_copy, i16* %RowStart, i16* %RowStart_copy, i16* %RowEnd, i16* %RowEnd_copy, i16* %K11, i16* %K11_copy, i16* %K12, i16* %K12_copy, i16* %K13, i16* %K13_copy, i16* %K21, i16* %K21_copy, i16* %K22, i16* %K22_copy, i16* %K23, i16* %K23_copy, i16* %K31, i16* %K31_copy, i16* %K32, i16* %K32_copy, i16* %K33, i16* %K33_copy, %"struct.ap_int<10>"* %ROffset, %"struct.ap_int<10>"* %ROffset_copy, %"struct.ap_int<10>"* %GOffset, %"struct.ap_int<10>"* %GOffset_copy, %"struct.ap_int<10>"* %BOffset, %"struct.ap_int<10>"* %BOffset_copy, %"struct.ap_uint<8>"* %ClampMin, %"struct.ap_uint<8>"* %ClampMin_copy, %"struct.ap_uint<8>"* %ClipMax, %"struct.ap_uint<8>"* %ClipMax_copy, i16* %K11_2, i16* %K11_2_copy, i16* %K12_2, i16* %K12_2_copy, i16* %K13_2, i16* %K13_2_copy, i16* %K21_2, i16* %K21_2_copy, i16* %K22_2, i16* %K22_2_copy, i16* %K23_2, i16* %K23_2_copy, i16* %K31_2, i16* %K31_2_copy, i16* %K32_2, i16* %K32_2_copy, i16* %K33_2, i16* %K33_2_copy, %"struct.ap_int<10>"* %ROffset_2, %"struct.ap_int<10>"* %ROffset_2_copy, %"struct.ap_int<10>"* %GOffset_2, %"struct.ap_int<10>"* %GOffset_2_copy, %"struct.ap_int<10>"* %BOffset_2, %"struct.ap_int<10>"* %BOffset_2_copy, %"struct.ap_uint<8>"* %ClampMin_2, %"struct.ap_uint<8>"* %ClampMin_2_copy, %"struct.ap_uint<8>"* %ClipMax_2, %"struct.ap_uint<8>"* %ClipMax_2_copy, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %m_axis_video, i24* %m_axis_video_copy.data, i3* %m_axis_video_copy.keep, i3* %m_axis_video_copy.strb, i1* %m_axis_video_copy.user, i1* %m_axis_video_copy.last, i1* %m_axis_video_copy.id, i1* %m_axis_video_copy.dest)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias, i24* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V, i8* noalias readonly, i8* noalias align 512, i8* noalias readonly, i8* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, %"struct.ap_int<10>"* noalias readonly, %"struct.ap_int<10>"* noalias align 512, %"struct.ap_int<10>"* noalias readonly, %"struct.ap_int<10>"* noalias align 512, %"struct.ap_int<10>"* noalias readonly, %"struct.ap_int<10>"* noalias align 512, %"struct.ap_uint<8>"* noalias readonly, %"struct.ap_uint<8>"* noalias align 512, %"struct.ap_uint<8>"* noalias readonly, %"struct.ap_uint<8>"* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, %"struct.ap_int<10>"* noalias readonly, %"struct.ap_int<10>"* noalias align 512, %"struct.ap_int<10>"* noalias readonly, %"struct.ap_int<10>"* noalias align 512, %"struct.ap_int<10>"* noalias readonly, %"struct.ap_int<10>"* noalias align 512, %"struct.ap_uint<8>"* noalias readonly, %"struct.ap_uint<8>"* noalias align 512, %"struct.ap_uint<8>"* noalias readonly, %"struct.ap_uint<8>"* noalias align 512, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias, i24* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.0" %_V_data_V1, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.1" %_V_keep_V2, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.4" %_V_last_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.5" %_V_id_V6, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.6" %_V_dest_V7) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>.55"(i24* %_V_data_V, i3* %_V_keep_V, i3* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %0)
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %2, i8* %1)
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %4, i8* %3)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %6, i16* %5)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %8, i16* %7)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %10, i16* %9)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %12, i16* %11)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %14, i16* %13)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %16, i16* %15)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %18, i16* %17)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %20, i16* %19)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %22, i16* %21)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %24, i16* %23)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %26, i16* %25)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %28, i16* %27)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %30, i16* %29)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %32, i16* %31)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %34, i16* %33)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>"(%"struct.ap_int<10>"* align 512 %36, %"struct.ap_int<10>"* %35)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>"(%"struct.ap_int<10>"* align 512 %38, %"struct.ap_int<10>"* %37)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>"(%"struct.ap_int<10>"* align 512 %40, %"struct.ap_int<10>"* %39)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* align 512 %42, %"struct.ap_uint<8>"* %41)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* align 512 %44, %"struct.ap_uint<8>"* %43)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %46, i16* %45)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %48, i16* %47)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %50, i16* %49)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %52, i16* %51)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %54, i16* %53)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %56, i16* %55)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %58, i16* %57)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %60, i16* %59)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %62, i16* %61)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>"(%"struct.ap_int<10>"* align 512 %64, %"struct.ap_int<10>"* %63)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>"(%"struct.ap_int<10>"* align 512 %66, %"struct.ap_int<10>"* %65)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>"(%"struct.ap_int<10>"* align 512 %68, %"struct.ap_int<10>"* %67)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* align 512 %70, %"struct.ap_uint<8>"* %69)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* align 512 %72, %"struct.ap_uint<8>"* %71)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>.55"(i24* %_V_data_V1, i3* %_V_keep_V2, i3* %_V_strb_V3, i1* %_V_user_V4, i1* %_V_last_V5, i1* %_V_id_V6, i1* %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %73)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i8(i8* noalias align 512, i8* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i8* %0, null
  %3 = icmp eq i8* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load i8, i8* %1, align 1
  store i8 %5, i8* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i16(i16* noalias align 512, i16* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i16* %0, null
  %3 = icmp eq i16* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load i16, i16* %1, align 2
  store i16 %5, i16* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>"(%"struct.ap_int<10>"* noalias align 512, %"struct.ap_int<10>"* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq %"struct.ap_int<10>"* %0, null
  %3 = icmp eq %"struct.ap_int<10>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_int<10>", %"struct.ap_int<10>"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"struct.ap_int<10>", %"struct.ap_int<10>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = bitcast i10* %.0.0.04 to i16*
  %6 = load i16, i16* %5
  %7 = trunc i16 %6 to i10
  store i10 %7, i10* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* noalias align 512, %"struct.ap_uint<8>"* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq %"struct.ap_uint<8>"* %0, null
  %3 = icmp eq %"struct.ap_uint<8>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_uint<8>", %"struct.ap_uint<8>"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"struct.ap_uint<8>", %"struct.ap_uint<8>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = load i8, i8* %.0.0.04, align 1
  store i8 %5, i8* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias, i24* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V, i8* noalias, i8* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, %"struct.ap_int<10>"* noalias, %"struct.ap_int<10>"* noalias readonly align 512, %"struct.ap_int<10>"* noalias, %"struct.ap_int<10>"* noalias readonly align 512, %"struct.ap_int<10>"* noalias, %"struct.ap_int<10>"* noalias readonly align 512, %"struct.ap_uint<8>"* noalias, %"struct.ap_uint<8>"* noalias readonly align 512, %"struct.ap_uint<8>"* noalias, %"struct.ap_uint<8>"* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, %"struct.ap_int<10>"* noalias, %"struct.ap_int<10>"* noalias readonly align 512, %"struct.ap_int<10>"* noalias, %"struct.ap_int<10>"* noalias readonly align 512, %"struct.ap_int<10>"* noalias, %"struct.ap_int<10>"* noalias readonly align 512, %"struct.ap_uint<8>"* noalias, %"struct.ap_uint<8>"* noalias readonly align 512, %"struct.ap_uint<8>"* noalias, %"struct.ap_uint<8>"* noalias readonly align 512, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias, i24* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.0" %_V_data_V1, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.1" %_V_keep_V2, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.4" %_V_last_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.5" %_V_id_V6, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.6" %_V_dest_V7) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %0, i24* %_V_data_V, i3* %_V_keep_V, i3* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %1, i8* align 512 %2)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %3, i8* align 512 %4)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %5, i16* align 512 %6)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %7, i16* align 512 %8)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %9, i16* align 512 %10)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %11, i16* align 512 %12)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %13, i16* align 512 %14)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %15, i16* align 512 %16)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %17, i16* align 512 %18)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %19, i16* align 512 %20)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %21, i16* align 512 %22)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %23, i16* align 512 %24)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %25, i16* align 512 %26)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %27, i16* align 512 %28)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %29, i16* align 512 %30)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %31, i16* align 512 %32)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %33, i16* align 512 %34)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>"(%"struct.ap_int<10>"* %35, %"struct.ap_int<10>"* align 512 %36)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>"(%"struct.ap_int<10>"* %37, %"struct.ap_int<10>"* align 512 %38)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>"(%"struct.ap_int<10>"* %39, %"struct.ap_int<10>"* align 512 %40)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* %41, %"struct.ap_uint<8>"* align 512 %42)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* %43, %"struct.ap_uint<8>"* align 512 %44)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %45, i16* align 512 %46)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %47, i16* align 512 %48)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %49, i16* align 512 %50)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %51, i16* align 512 %52)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %53, i16* align 512 %54)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %55, i16* align 512 %56)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %57, i16* align 512 %58)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %59, i16* align 512 %60)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %61, i16* align 512 %62)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>"(%"struct.ap_int<10>"* %63, %"struct.ap_int<10>"* align 512 %64)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>"(%"struct.ap_int<10>"* %65, %"struct.ap_int<10>"* align 512 %66)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>"(%"struct.ap_int<10>"* %67, %"struct.ap_int<10>"* align 512 %68)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* %69, %"struct.ap_uint<8>"* align 512 %70)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* %71, %"struct.ap_uint<8>"* align 512 %72)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %73, i24* %_V_data_V1, i3* %_V_keep_V2, i3* %_V_strb_V3, i1* %_V_user_V4, i1* %_V_last_V5, i1* %_V_id_V6, i1* %_V_dest_V7)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i24* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V) unnamed_addr #4 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>.49"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* nonnull align 512 %0, i24* %_V_data_V, i3* %_V_keep_V, i3* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>.49"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i24* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i3* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i3* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V) unnamed_addr #5 {
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
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>.55"(i24* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>.58"(i24* %_V_data_V, i3* %_V_keep_V, i3* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>.58"(i24* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i3* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i3* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.5" %_V_id_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
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

declare void @apatb_v_csc_hw(i24*, i3*, i3*, i1*, i1*, i1*, i1*, i8*, i8*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, %"struct.ap_int<10>"*, %"struct.ap_int<10>"*, %"struct.ap_int<10>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, %"struct.ap_int<10>"*, %"struct.ap_int<10>"*, %"struct.ap_int<10>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, i24*, i3*, i3*, i1*, i1*, i1*, i1*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias, i24* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V, i8* noalias, i8* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, %"struct.ap_int<10>"* noalias, %"struct.ap_int<10>"* noalias readonly align 512, %"struct.ap_int<10>"* noalias, %"struct.ap_int<10>"* noalias readonly align 512, %"struct.ap_int<10>"* noalias, %"struct.ap_int<10>"* noalias readonly align 512, %"struct.ap_uint<8>"* noalias, %"struct.ap_uint<8>"* noalias readonly align 512, %"struct.ap_uint<8>"* noalias, %"struct.ap_uint<8>"* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, %"struct.ap_int<10>"* noalias, %"struct.ap_int<10>"* noalias readonly align 512, %"struct.ap_int<10>"* noalias, %"struct.ap_int<10>"* noalias readonly align 512, %"struct.ap_int<10>"* noalias, %"struct.ap_int<10>"* noalias readonly align 512, %"struct.ap_uint<8>"* noalias, %"struct.ap_uint<8>"* noalias readonly align 512, %"struct.ap_uint<8>"* noalias, %"struct.ap_uint<8>"* noalias readonly align 512, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias, i24* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.0" %_V_data_V1, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.1" %_V_keep_V2, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.4" %_V_last_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.5" %_V_id_V6, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="75.6" %_V_dest_V7) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %0, i24* %_V_data_V, i3* %_V_keep_V, i3* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %73, i24* %_V_data_V1, i3* %_V_keep_V2, i3* %_V_strb_V3, i1* %_V_user_V4, i1* %_V_last_V5, i1* %_V_id_V6, i1* %_V_dest_V7)
  ret void
}

define void @v_csc_hw_stub_wrapper(i24*, i3*, i3*, i1*, i1*, i1*, i1*, i8*, i8*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, %"struct.ap_int<10>"*, %"struct.ap_int<10>"*, %"struct.ap_int<10>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, %"struct.ap_int<10>"*, %"struct.ap_int<10>"*, %"struct.ap_int<10>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, i24*, i3*, i3*, i1*, i1*, i1*, i1*) #6 {
entry:
  %50 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"
  %51 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %50, i24* %0, i3* %1, i3* %2, i1* %3, i1* %4, i1* %5, i1* %6, i8* null, i8* %7, i8* null, i8* %8, i16* null, i16* %9, i16* null, i16* %10, i16* null, i16* %11, i16* null, i16* %12, i16* null, i16* %13, i16* null, i16* %14, i16* null, i16* %15, i16* null, i16* %16, i16* null, i16* %17, i16* null, i16* %18, i16* null, i16* %19, i16* null, i16* %20, i16* null, i16* %21, i16* null, i16* %22, i16* null, i16* %23, %"struct.ap_int<10>"* null, %"struct.ap_int<10>"* %24, %"struct.ap_int<10>"* null, %"struct.ap_int<10>"* %25, %"struct.ap_int<10>"* null, %"struct.ap_int<10>"* %26, %"struct.ap_uint<8>"* null, %"struct.ap_uint<8>"* %27, %"struct.ap_uint<8>"* null, %"struct.ap_uint<8>"* %28, i16* null, i16* %29, i16* null, i16* %30, i16* null, i16* %31, i16* null, i16* %32, i16* null, i16* %33, i16* null, i16* %34, i16* null, i16* %35, i16* null, i16* %36, i16* null, i16* %37, %"struct.ap_int<10>"* null, %"struct.ap_int<10>"* %38, %"struct.ap_int<10>"* null, %"struct.ap_int<10>"* %39, %"struct.ap_int<10>"* null, %"struct.ap_int<10>"* %40, %"struct.ap_uint<8>"* null, %"struct.ap_uint<8>"* %41, %"struct.ap_uint<8>"* null, %"struct.ap_uint<8>"* %42, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %51, i24* %43, i3* %44, i3* %45, i1* %46, i1* %47, i1* %48, i1* %49)
  call void @v_csc_hw_stub(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %50, i8* %7, i8* %8, i16* %9, i16* %10, i16* %11, i16* %12, i16* %13, i16* %14, i16* %15, i16* %16, i16* %17, i16* %18, i16* %19, i16* %20, i16* %21, i16* %22, i16* %23, %"struct.ap_int<10>"* %24, %"struct.ap_int<10>"* %25, %"struct.ap_int<10>"* %26, %"struct.ap_uint<8>"* %27, %"struct.ap_uint<8>"* %28, i16* %29, i16* %30, i16* %31, i16* %32, i16* %33, i16* %34, i16* %35, i16* %36, i16* %37, %"struct.ap_int<10>"* %38, %"struct.ap_int<10>"* %39, %"struct.ap_int<10>"* %40, %"struct.ap_uint<8>"* %41, %"struct.ap_uint<8>"* %42, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %51)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %50, i24* %0, i3* %1, i3* %2, i1* %3, i1* %4, i1* %5, i1* %6, i8* null, i8* %7, i8* null, i8* %8, i16* null, i16* %9, i16* null, i16* %10, i16* null, i16* %11, i16* null, i16* %12, i16* null, i16* %13, i16* null, i16* %14, i16* null, i16* %15, i16* null, i16* %16, i16* null, i16* %17, i16* null, i16* %18, i16* null, i16* %19, i16* null, i16* %20, i16* null, i16* %21, i16* null, i16* %22, i16* null, i16* %23, %"struct.ap_int<10>"* null, %"struct.ap_int<10>"* %24, %"struct.ap_int<10>"* null, %"struct.ap_int<10>"* %25, %"struct.ap_int<10>"* null, %"struct.ap_int<10>"* %26, %"struct.ap_uint<8>"* null, %"struct.ap_uint<8>"* %27, %"struct.ap_uint<8>"* null, %"struct.ap_uint<8>"* %28, i16* null, i16* %29, i16* null, i16* %30, i16* null, i16* %31, i16* null, i16* %32, i16* null, i16* %33, i16* null, i16* %34, i16* null, i16* %35, i16* null, i16* %36, i16* null, i16* %37, %"struct.ap_int<10>"* null, %"struct.ap_int<10>"* %38, %"struct.ap_int<10>"* null, %"struct.ap_int<10>"* %39, %"struct.ap_int<10>"* null, %"struct.ap_int<10>"* %40, %"struct.ap_uint<8>"* null, %"struct.ap_uint<8>"* %41, %"struct.ap_uint<8>"* null, %"struct.ap_uint<8>"* %42, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %51, i24* %43, i3* %44, i3* %45, i1* %46, i1* %47, i1* %48, i1* %49)
  ret void
}

declare void @v_csc_hw_stub(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"*, i8*, i8*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, %"struct.ap_int<10>"*, %"struct.ap_int<10>"*, %"struct.ap_int<10>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, %"struct.ap_int<10>"*, %"struct.ap_int<10>"*, %"struct.ap_int<10>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"*)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
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
