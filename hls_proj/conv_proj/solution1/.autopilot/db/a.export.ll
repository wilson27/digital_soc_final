; ModuleID = 'C:/Users/Wilson/Desktop/classic_cnn/hls_proj/conv_proj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@conv_layer_str = internal unnamed_addr constant [11 x i8] c"conv_layer\00"
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @conv_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %b, i32 %od, i32 %ox, i32 %oy, i32 %id, i32 %ix, i32 %iy, i32 %s, i32 %k) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %mem) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %input_offset) nounwind, !map !18
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %output_offset) nounwind, !map !24
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b) nounwind, !map !28
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %od) nounwind, !map !32
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ox) nounwind, !map !36
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %oy) nounwind, !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %id) nounwind, !map !44
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ix) nounwind, !map !48
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %iy) nounwind, !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %s) nounwind, !map !56
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %k) nounwind, !map !60
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @conv_layer_str) nounwind
  %k_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %k) nounwind
  %s_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %s) nounwind
  %iy_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %iy) nounwind
  %ix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ix) nounwind
  %id_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %id) nounwind
  %oy_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %oy) nounwind
  %ox_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ox) nounwind
  %od_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %od) nounwind
  %b_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %b) nounwind
  %output_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %output_offset) nounwind
  %input_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %input_offset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 2147483648, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %b, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %od, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ox, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %oy, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %id, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ix, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %iy, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %s, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %k, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp = mul i32 %od_read, %k_read
  %tmp6 = mul i32 %id_read, %k_read
  %num_weights = mul i32 %tmp6, %tmp
  %tmp_2 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %input_offset_read, i32 2, i32 31)
  %tmp_7 = zext i30 %tmp_2 to i32
  %tmp_3 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %output_offset_read, i32 2, i32 31)
  %tmp_8 = zext i30 %tmp_3 to i32
  %tmp3 = add i32 %tmp_7, %od_read
  %cast1 = zext i32 %oy_read to i64
  %cast2 = zext i32 %ox_read to i64
  %bound1 = mul i64 %cast2, %cast1
  %cast3 = zext i32 %od_read to i96
  %cast4 = zext i64 %bound1 to i96
  %bound2 = mul i96 %cast4, %cast3
  %cast5 = zext i32 %b_read to i128
  %cast6 = zext i96 %bound2 to i128
  %bound3 = mul i128 %cast6, %cast5
  %p_mid = icmp sgt i32 %k_read, 0
  %smax16_mid = select i1 %p_mid, i32 %k_read, i32 0
  %tmp_10_mid = icmp sgt i32 %ox_read, 0
  %exitcond_flatten72_m = icmp eq i64 %bound1, 0
  %cast7 = zext i32 %id_read to i96
  br label %.preheader

.preheader:                                       ; preds = %0, %4
  %indvar_flatten1 = phi i128 [ 0, %0 ], [ %indvar_flatten_next3, %4 ]
  %b_s = phi i31 [ 0, %0 ], [ %tmp_5_mid2_v, %4 ]
  %indvar_flatten2 = phi i96 [ 0, %0 ], [ %indvar_flatten_next2, %4 ]
  %o_d = phi i31 [ 0, %0 ], [ %o_d_mid2, %4 ]
  %indvar_flatten3 = phi i64 [ 0, %0 ], [ %indvar_flatten_next1, %4 ]
  %indvars_iv = phi i32 [ 0, %0 ], [ %indvars_iv17_mid2, %4 ]
  %indvars_iv1 = phi i32 [ 0, %0 ], [ %indvars_iv14_mid2, %4 ]
  %indvars_iv2 = phi i32 [ %k_read, %0 ], [ %indvars_iv12_mid2, %4 ]
  %o_y = phi i31 [ 0, %0 ], [ %o_y_mid2, %4 ]
  %indvars_iv3 = phi i32 [ 0, %0 ], [ %indvars_iv_next5, %4 ]
  %indvars_iv4 = phi i32 [ 0, %0 ], [ %indvars_iv_next4, %4 ]
  %indvars_iv5 = phi i32 [ %k_read, %0 ], [ %indvars_iv_next3, %4 ]
  %o_x = phi i31 [ 0, %0 ], [ %o_x_1, %4 ]
  %b_cast_mid1 = zext i31 %b_s to i32
  %tmp_6 = mul i32 %od_read, %b_cast_mid1
  %o_d_cast_mid1 = zext i31 %o_d to i32
  %tmp8 = add i32 %o_d_cast_mid1, %tmp_7
  %tmp_s = mul i32 %id_read, %o_d_cast_mid1
  %tmp1 = add i32 %tmp_6, %o_d_cast_mid1
  %tmp2 = mul i32 %oy_read, %tmp1
  %o_y_cast_mid1 = zext i31 %o_y to i32
  %i_y = mul nsw i32 %s_read, %o_y_cast_mid1
  %tmp7 = add i32 %tmp2, %o_y_cast_mid1
  %o_x_cast = zext i31 %o_x to i32
  %tmp_1 = icmp slt i32 %o_x_cast, %ox_read
  %exitcond_flatten3 = icmp eq i128 %indvar_flatten1, %bound3
  %indvar_flatten_next3 = add i128 %indvar_flatten1, 1
  br i1 %exitcond_flatten3, label %5, label %.preheader2.preheader

; <label>:1                                       ; preds = %.preheader2.preheader, %._crit_edge
  %indvar_flatten4 = phi i96 [ 0, %.preheader2.preheader ], [ %indvar_flatten_next4, %._crit_edge ]
  %i_d = phi i31 [ 0, %.preheader2.preheader ], [ %i_d_mid2, %._crit_edge ]
  %indvar_flatten = phi i64 [ 0, %.preheader2.preheader ], [ %indvar_flatten_next, %._crit_edge ]
  %i_y1 = phi i32 [ %i_y_mid2, %.preheader2.preheader ], [ %i_y1_mid2, %._crit_edge ]
  %iiy = phi i32 [ 0, %.preheader2.preheader ], [ %iiy_mid2, %._crit_edge ]
  %output_element_2 = phi float [ %output_element, %.preheader2.preheader ], [ %output_element_4, %._crit_edge ]
  %i_x1 = phi i32 [ %i_x, %.preheader2.preheader ], [ %i_x_1, %._crit_edge ]
  %iix = phi i32 [ 0, %.preheader2.preheader ], [ %iix_1, %._crit_edge ]
  %i_d_cast_mid1 = zext i31 %i_d to i32
  %tmp4 = add i32 %i_d_cast_mid1, %tmp_5_mid2
  %tmp5 = mul i32 %tmp4, %iy_read
  %tmp9 = add i32 %i_d_cast_mid1, %tmp_mid2
  %tmp10 = mul i32 %tmp9, %k_read
  %exitcond_flatten4 = icmp eq i96 %indvar_flatten4, %bound4
  %indvar_flatten_next4 = add i96 %indvar_flatten4, 1
  br i1 %exitcond_flatten4, label %4, label %.reset31

; <label>:2                                       ; preds = %.reset31
  %tmp20 = add i32 %tmp_7, %iix_mid2
  %tmp_18 = add i32 %tmp20, %tmp11_mid2
  %mem_addr_3 = getelementptr inbounds float* %mem, i32 %tmp_18
  %weight_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_3, i32 1) nounwind
  %weight_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_3) nounwind
  %weight_element_to_in = bitcast float %weight_element to i32
  %tmp_19 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %weight_element_to_in, i32 23, i32 30)
  %tmp_28 = trunc i32 %weight_element_to_in to i23
  %notlhs1 = icmp ne i8 %tmp_19, -1
  %notrhs1 = icmp eq i23 %tmp_28, 0
  %tmp_21 = or i1 %notrhs1, %notlhs1
  %tmp_22 = fcmp oeq float %weight_element, 0.000000e+00
  %tmp_23 = and i1 %tmp_21, %tmp_22
  br i1 %tmp_23, label %._crit_edge, label %3

; <label>:3                                       ; preds = %2
  %tmp_24 = fmul float %input_element, %weight_element
  %output_element_1 = fadd float %output_element_2, %tmp_24
  br label %._crit_edge

._crit_edge:                                      ; preds = %3, %2, %.reset31
  %output_element_4 = phi float [ %output_element_1, %3 ], [ %output_element_2, %.reset31 ], [ %output_element_2, %2 ]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_10) nounwind
  %i_x_1 = add nsw i32 %i_x1_mid2, 1
  %iix_1 = add nsw i32 %iix_mid2, 1
  %indvar_flatten_op = add i64 %indvar_flatten, 1
  %indvar_flatten_next = select i1 %exitcond_flatten2, i64 1, i64 %indvar_flatten_op
  br label %1

.reset31:                                         ; preds = %1
  %i_d_s = add i31 1, %i_d
  %i_d_cast = zext i31 %i_d_s to i32
  %exitcond_flatten2 = icmp eq i64 %indvar_flatten, %bound
  %i_y1_mid = select i1 %exitcond_flatten2, i32 %i_y_mid2, i32 %i_y1
  %iiy_mid = select i1 %exitcond_flatten2, i32 0, i32 %iiy
  %i_x1_mid = select i1 %exitcond_flatten2, i32 %i_x, i32 %i_x1
  %iix_mid = select i1 %exitcond_flatten2, i32 0, i32 %iix
  %tmp4_mid1 = add i32 %i_d_cast, %tmp_5_mid2
  %tmp5_mid1 = mul i32 %iy_read, %tmp4_mid1
  %tmp5_mid2 = select i1 %exitcond_flatten2, i32 %tmp5_mid1, i32 %tmp5
  %tmp9_mid1 = add i32 %i_d_cast, %tmp_mid2
  %tmp10_mid1 = mul i32 %k_read, %tmp9_mid1
  %tmp10_mid2 = select i1 %exitcond_flatten2, i32 %tmp10_mid1, i32 %tmp10
  %tmp3_mid = add i32 %i_y_mid2, %tmp5_mid1
  %tmp12 = add i32 %tmp5, %i_y1
  %tmp6_mid241_v = select i1 %exitcond_flatten2, i32 %tmp3_mid, i32 %tmp12
  %tmp13 = add i32 %tmp10, %iiy
  %tmp11_mid245_v = select i1 %exitcond_flatten2, i32 %tmp10_mid1, i32 %tmp13
  %tmp_26 = icmp slt i32 %i_x1, %tmp_4
  %tmp_15_mid = select i1 %exitcond_flatten2, i1 %p_mid, i1 %tmp_26
  %i_d_mid2 = select i1 %exitcond_flatten2, i31 %i_d_s, i31 %i_d
  %i_y_1 = add nsw i32 1, %i_y1_mid
  %iiy_1 = add nsw i32 1, %iiy_mid
  %i_x1_mid2 = select i1 %tmp_15_mid, i32 %i_x1_mid, i32 %i_x
  %iix_mid2 = select i1 %tmp_15_mid, i32 %iix_mid, i32 0
  %tmp3_mid1 = add i32 %i_y_1, %tmp5_mid2
  %tmp6_mid2_v = select i1 %tmp_15_mid, i32 %tmp6_mid241_v, i32 %tmp3_mid1
  %tmp6_mid2 = mul i32 %ix_read, %tmp6_mid2_v
  %tmp8_mid1 = add i32 %iiy_1, %tmp10_mid2
  %tmp11_mid2_v = select i1 %tmp_15_mid, i32 %tmp11_mid245_v, i32 %tmp8_mid1
  %tmp11_mid2 = mul i32 %k_read, %tmp11_mid2_v
  %i_y1_mid2 = select i1 %tmp_15_mid, i32 %i_y1_mid, i32 %i_y_1
  %iiy_mid2 = select i1 %tmp_15_mid, i32 %iiy_mid, i32 %iiy_1
  %tmp_10 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp14 = add i32 %tmp6_mid2, %i_x1_mid2
  %tmp15 = add i32 %tmp14, %num_weights
  %tmp_11 = add i32 %tmp15, %tmp3
  %mem_addr_2 = getelementptr inbounds float* %mem, i32 %tmp_11
  %input_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_2, i32 1) nounwind
  %input_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_2) nounwind
  %input_element_to_int = bitcast float %input_element to i32
  %tmp_12 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_element_to_int, i32 23, i32 30)
  %tmp_27 = trunc i32 %input_element_to_int to i23
  %notlhs = icmp ne i8 %tmp_12, -1
  %notrhs = icmp eq i23 %tmp_27, 0
  %tmp_15 = or i1 %notrhs, %notlhs
  %tmp_16 = fcmp oeq float %input_element, 0.000000e+00
  %tmp_17 = and i1 %tmp_15, %tmp_16
  br i1 %tmp_17, label %._crit_edge, label %2

; <label>:4                                       ; preds = %1
  %tmp11 = add i32 %o_x_cast_mid2_cast, %tmp_8
  %tmp_9 = add i32 %tmp12_mid2, %tmp11
  %mem_addr_1 = getelementptr inbounds float* %mem, i32 %tmp_9
  %mem_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr_1, i32 1) nounwind
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr_1, float %output_element_2, i4 -1) nounwind
  %mem_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr_1) nounwind
  %o_x_op = add i31 %o_x, 1
  %o_x_mid293_op = select i1 %tmp_14, i31 1, i31 %o_x_op
  %o_x_1 = select i1 %tmp_10_mid2, i31 %o_x_mid293_op, i31 1
  %indvars_iv_next3 = add i32 %indvars_iv19_mid2, %s_read
  %indvars_iv_next4 = add i32 %indvars_iv21_mid2, %s_read
  %indvars_iv_next5 = sub i32 %indvars_iv24_mid2, %s_read
  %indvar_flatten70_op = add i64 %indvar_flatten3, 1
  %indvar_flatten_next1 = select i1 %tmp_14, i64 1, i64 %indvar_flatten70_op
  %indvar_flatten123_op = add i96 %indvar_flatten2, 1
  %indvar_flatten_next2 = select i1 %exitcond_flatten, i96 1, i96 %indvar_flatten123_op
  br label %.preheader

.preheader2.preheader:                            ; preds = %.preheader
  %b_s_4 = add i31 %b_s, 1
  %b_cast = zext i31 %b_s_4 to i32
  %exitcond_flatten = icmp eq i96 %indvar_flatten2, %bound2
  %o_d_mid = select i1 %exitcond_flatten, i31 0, i31 %o_d
  %indvars_iv12_mid = select i1 %exitcond_flatten, i32 %k_read, i32 %indvars_iv2
  %indvars_iv19_mid = select i1 %exitcond_flatten, i32 %k_read, i32 %indvars_iv5
  %tmp_5_mid2_v = select i1 %exitcond_flatten, i31 %b_s_4, i31 %b_s
  %tmp_5_mid2_v_cast = zext i31 %tmp_5_mid2_v to i32
  %tmp_5_mid2 = mul i32 %id_read, %tmp_5_mid2_v_cast
  %tmp_6_mid1 = mul i32 %od_read, %b_cast
  %tmp_6_mid2 = select i1 %exitcond_flatten, i32 %tmp_6_mid1, i32 %tmp_6
  %tmp_9_mid2155_v = select i1 %exitcond_flatten, i32 %tmp_7, i32 %tmp8
  %tmp_mid = select i1 %exitcond_flatten, i32 0, i32 %tmp_s
  %tmp2_mid = mul i32 %oy_read, %tmp_6_mid1
  %tmp2_mid3 = select i1 %exitcond_flatten, i32 %tmp2_mid, i32 %tmp2
  %tmp_5 = icmp sgt i32 %indvars_iv2, %indvars_iv1
  %smax = select i1 %tmp_5, i32 %indvars_iv2, i32 %indvars_iv1
  %tmp_13 = add i32 %smax, %indvars_iv
  %p_mid1 = select i1 %exitcond_flatten, i32 %smax16_mid, i32 %tmp_13
  %tmp12_mid2187_v = select i1 %exitcond_flatten, i32 %tmp2_mid, i32 %tmp7
  %tmp_10_mid1 = select i1 %exitcond_flatten, i1 %tmp_10_mid, i1 %tmp_1
  %exitcond_flatten1 = icmp eq i64 %indvar_flatten3, %bound1
  %exitcond_flatten72_m_1 = select i1 %exitcond_flatten, i1 %exitcond_flatten72_m, i1 %exitcond_flatten1
  %o_d_1 = add i31 %o_d_mid, 1
  %o_d_cast = zext i31 %o_d_1 to i32
  %tmp_14 = or i1 %exitcond_flatten72_m_1, %exitcond_flatten
  %indvars_iv17_mid = select i1 %tmp_14, i32 0, i32 %indvars_iv
  %indvars_iv14_mid = select i1 %tmp_14, i32 0, i32 %indvars_iv1
  %indvars_iv12_mid1 = select i1 %exitcond_flatten72_m_1, i32 %k_read, i32 %indvars_iv12_mid
  %o_y_mid = select i1 %tmp_14, i31 0, i31 %o_y
  %indvars_iv24_mid = select i1 %tmp_14, i32 0, i32 %indvars_iv3
  %indvars_iv21_mid = select i1 %tmp_14, i32 0, i32 %indvars_iv4
  %indvars_iv19_mid1 = select i1 %exitcond_flatten72_m_1, i32 %k_read, i32 %indvars_iv19_mid
  %tmp14_mid1 = add i32 %tmp_7, %o_d_cast
  %tmp_9_mid2_v = select i1 %exitcond_flatten72_m_1, i32 %tmp14_mid1, i32 %tmp_9_mid2155_v
  %tmp_9_mid2 = add i32 %tmp_9_mid2_v, %num_weights
  %tmp_mid1 = mul i32 %id_read, %o_d_cast
  %tmp_mid2 = select i1 %exitcond_flatten72_m_1, i32 %tmp_mid1, i32 %tmp_mid
  %tmp1_mid1 = add i32 %o_d_cast, %tmp_6_mid2
  %tmp2_mid1 = mul i32 %oy_read, %tmp1_mid1
  %tmp2_mid2 = select i1 %exitcond_flatten72_m_1, i32 %tmp2_mid1, i32 %tmp2_mid3
  %p_mid2 = select i1 %exitcond_flatten72_m_1, i32 %smax16_mid, i32 %p_mid1
  %i_y_mid = select i1 %tmp_14, i32 0, i32 %i_y
  %tmp12_mid2117_v = select i1 %exitcond_flatten72_m_1, i32 %tmp2_mid1, i32 %tmp12_mid2187_v
  %o_x_cast_mid = select i1 %tmp_14, i31 0, i31 %o_x
  %tmp_10_mid2 = select i1 %exitcond_flatten72_m_1, i1 %tmp_10_mid, i1 %tmp_10_mid1
  %o_d_mid2 = select i1 %exitcond_flatten72_m_1, i31 %o_d_1, i31 %o_d_mid
  %o_y_1 = add i31 %o_y_mid, 1
  %indvars_iv_next = add i32 %s_read, %indvars_iv12_mid1
  %indvars_iv_next1 = add i32 %s_read, %indvars_iv14_mid
  %indvars_iv_next2 = sub i32 %indvars_iv17_mid, %s_read
  %o_y_cast = zext i31 %o_y_1 to i32
  %indvars_iv24_mid2 = select i1 %tmp_10_mid2, i32 %indvars_iv24_mid, i32 0
  %indvars_iv21_mid2 = select i1 %tmp_10_mid2, i32 %indvars_iv21_mid, i32 0
  %indvars_iv19_mid2 = select i1 %tmp_10_mid2, i32 %indvars_iv19_mid1, i32 %k_read
  %p_mid3 = icmp sgt i32 %indvars_iv_next, %indvars_iv_next1
  %smax16_mid1 = select i1 %p_mid3, i32 %indvars_iv_next, i32 %indvars_iv_next1
  %p_mid4 = add i32 %indvars_iv_next2, %smax16_mid1
  %p_mid5 = select i1 %tmp_10_mid2, i32 %p_mid2, i32 %p_mid4
  %i_y_mid1 = mul nsw i32 %s_read, %o_y_cast
  %i_y_mid2 = select i1 %tmp_10_mid2, i32 %i_y_mid, i32 %i_y_mid1
  %tmp7_mid1 = add i32 %o_y_cast, %tmp2_mid2
  %tmp12_mid2_v = select i1 %tmp_10_mid2, i32 %tmp12_mid2117_v, i32 %tmp7_mid1
  %tmp12_mid2 = mul i32 %ox_read, %tmp12_mid2_v
  %o_x_cast_mid2 = select i1 %tmp_10_mid2, i31 %o_x_cast_mid, i31 0
  %o_x_cast_mid2_cast = zext i31 %o_x_cast_mid2 to i32
  %indvars_iv17_mid2 = select i1 %tmp_10_mid2, i32 %indvars_iv17_mid, i32 %indvars_iv_next2
  %indvars_iv14_mid2 = select i1 %tmp_10_mid2, i32 %indvars_iv14_mid, i32 %indvars_iv_next1
  %indvars_iv12_mid2 = select i1 %tmp_10_mid2, i32 %indvars_iv12_mid1, i32 %indvars_iv_next
  %o_y_mid2 = select i1 %tmp_10_mid2, i31 %o_y_mid, i31 %o_y_1
  %tmp_20 = icmp sgt i32 %indvars_iv19_mid2, %indvars_iv21_mid2
  %smax1 = select i1 %tmp_20, i32 %indvars_iv19_mid2, i32 %indvars_iv21_mid2
  %tmp_25 = add i32 %indvars_iv24_mid2, %smax1
  %mem_addr = getelementptr inbounds float* %mem, i32 %tmp_9_mid2
  %output_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr, i32 1) nounwind
  %output_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr) nounwind
  %i_x = mul nsw i32 %s_read, %o_x_cast_mid2_cast
  %tmp_4 = add nsw i32 %k_read, %i_x
  %cast = zext i32 %p_mid5 to i64
  %cast8 = zext i32 %tmp_25 to i64
  %bound = mul i64 %cast8, %cast
  %cast9 = zext i64 %bound to i96
  %bound4 = mul i96 %cast9, %cast7
  br label %1

; <label>:5                                       ; preds = %.preheader
  ret void
}

define weak i1 @_ssdm_op_WriteResp.m_axi.floatP(float*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.floatP(float*, float, i4) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak float @_ssdm_op_Read.m_axi.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_5 = trunc i32 %empty to i8
  ret i8 %empty_5
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_6 = trunc i32 %empty to i30
  ret i30 %empty_6
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!7}

!0 = metadata !{void (float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @conv_layer, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const"}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"input_offset", metadata !"output_offset", metadata !"b", metadata !"od", metadata !"ox", metadata !"oy", metadata !"id", metadata !"ix", metadata !"iy", metadata !"s", metadata !"k"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8, [1 x i32]* @llvm_global_ctors_0}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 31, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"llvm.global_ctors.0", metadata !12, metadata !"", i32 0, i32 31}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 0, i32 1}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 31, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"mem", metadata !12, metadata !"float", i32 0, i32 31}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 31, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"input_offset", metadata !22, metadata !"int", i32 0, i32 31}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 0, i32 0}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 31, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"output_offset", metadata !22, metadata !"int", i32 0, i32 31}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 31, metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !"b", metadata !22, metadata !"int", i32 0, i32 31}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 31, metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{metadata !"od", metadata !22, metadata !"int", i32 0, i32 31}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 31, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"ox", metadata !22, metadata !"int", i32 0, i32 31}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 31, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"oy", metadata !22, metadata !"int", i32 0, i32 31}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 31, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"id", metadata !22, metadata !"int", i32 0, i32 31}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 31, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"ix", metadata !22, metadata !"int", i32 0, i32 31}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 31, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"iy", metadata !22, metadata !"int", i32 0, i32 31}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 31, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"s", metadata !22, metadata !"int", i32 0, i32 31}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 31, metadata !62}
!62 = metadata !{metadata !63}
!63 = metadata !{metadata !"k", metadata !22, metadata !"int", i32 0, i32 31}
