; ModuleID = 'C:/Users/Wilson/Desktop/digital_soc_final/digital_soc_final/hls_proj/maxpool_proj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@maxpool_layer_str = internal unnamed_addr constant [14 x i8] c"maxpool_layer\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1

define void @maxpool_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %b, i32 %od, i32 %ox, i32 %oy, i32 %id, i32 %ix, i32 %iy, i32 %s, i32 %k) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %mem) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %input_offset) nounwind, !map !24
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %output_offset) nounwind, !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b) nounwind, !map !34
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %od) nounwind, !map !38
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ox) nounwind, !map !42
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %oy) nounwind, !map !46
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %id) nounwind, !map !50
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ix) nounwind, !map !54
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %iy) nounwind, !map !58
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %s) nounwind, !map !62
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %k) nounwind, !map !66
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @maxpool_layer_str) nounwind
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
  %tmp = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %input_offset_read, i32 2, i32 31)
  %tmp_2 = zext i30 %tmp to i32
  %tmp_1 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %output_offset_read, i32 2, i32 31)
  %tmp_5 = zext i30 %tmp_1 to i32
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
  %tmp_6_mid = icmp sgt i32 %ox_read, 0
  %exitcond_flatten45_m = icmp eq i64 %bound1, 0
  br label %.preheader

.preheader:                                       ; preds = %0, %2
  %indvar_flatten1 = phi i128 [ 0, %0 ], [ %indvar_flatten_next3, %2 ]
  %b_s = phi i31 [ 0, %0 ], [ %b_mid2, %2 ]
  %indvar_flatten2 = phi i96 [ 0, %0 ], [ %indvar_flatten_next2, %2 ]
  %i_d = phi i31 [ 0, %0 ], [ %i_d_mid2, %2 ]
  %indvar_flatten3 = phi i64 [ 0, %0 ], [ %indvar_flatten_next1, %2 ]
  %indvars_iv = phi i32 [ 0, %0 ], [ %indvars_iv17_mid2, %2 ]
  %indvars_iv1 = phi i32 [ 0, %0 ], [ %indvars_iv14_mid2, %2 ]
  %indvars_iv2 = phi i32 [ %k_read, %0 ], [ %indvars_iv12_mid2, %2 ]
  %o_y = phi i31 [ 0, %0 ], [ %o_y_mid2, %2 ]
  %indvars_iv3 = phi i32 [ 0, %0 ], [ %indvars_iv_next5, %2 ]
  %indvars_iv4 = phi i32 [ 0, %0 ], [ %indvars_iv_next4, %2 ]
  %indvars_iv5 = phi i32 [ %k_read, %0 ], [ %indvars_iv_next3, %2 ]
  %o_x = phi i31 [ 0, %0 ], [ %o_x_1, %2 ]
  %b_cast_mid1 = zext i31 %b_s to i32
  %tmp_3 = mul i32 %id_read, %b_cast_mid1
  %tmp_4 = mul i32 %od_read, %b_cast_mid1
  %i_d_cast_mid1 = zext i31 %i_d to i32
  %tmp4 = add i32 %tmp_3, %i_d_cast_mid1
  %tmp9 = add i32 %tmp_4, %i_d_cast_mid1
  %tmp7 = mul i32 %oy_read, %tmp9
  %o_y_cast_mid1 = zext i31 %o_y to i32
  %i_y = mul nsw i32 %s_read, %o_y_cast_mid1
  %tmp8 = add i32 %tmp7, %o_y_cast_mid1
  %o_x_cast = zext i31 %o_x to i32
  %tmp_6 = icmp slt i32 %o_x_cast, %ox_read
  %exitcond_flatten3 = icmp eq i128 %indvar_flatten1, %bound3
  %indvar_flatten_next3 = add i128 %indvar_flatten1, 1
  br i1 %exitcond_flatten3, label %3, label %.preheader2.preheader

; <label>:1                                       ; preds = %.preheader2.preheader, %.reset
  %indvar_flatten = phi i64 [ 0, %.preheader2.preheader ], [ %indvar_flatten_next, %.reset ]
  %i_y1 = phi i32 [ %i_y_mid2, %.preheader2.preheader ], [ %tmp6_mid2_v_v, %.reset ]
  %tmp_s = phi float [ -9.000000e+03, %.preheader2.preheader ], [ %output_element, %.reset ]
  %i_x1 = phi i32 [ %i_x, %.preheader2.preheader ], [ %i_x_1, %.reset ]
  %exitcond_flatten = icmp eq i64 %indvar_flatten, %bound
  %indvar_flatten_next = add i64 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %tmp_18 = icmp slt i32 %i_x1, %tmp_7
  %i_x1_mid2 = select i1 %tmp_18, i32 %i_x1, i32 %i_x
  %i_y_s = add nsw i32 1, %i_y1
  %tmp6_mid2_v_v = select i1 %tmp_18, i32 %i_y1, i32 %i_y_s
  %tmp6_mid2_v = add i32 %tmp6_mid2_v_v, %tmp5_mid2
  %tmp6_mid2 = mul i32 %ix_read, %tmp6_mid2_v
  %tmp_13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp2 = add i32 %tmp_2, %i_x1_mid2
  %tmp_14 = add i32 %tmp2, %tmp6_mid2
  %mem_addr_1 = getelementptr inbounds float* %mem, i32 %tmp_14
  %temp_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_1, i32 1) nounwind
  %temp = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_1) nounwind
  %temp_to_int = bitcast float %temp to i32
  %tmp_15 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %temp_to_int, i32 23, i32 30)
  %tmp_24 = trunc i32 %temp_to_int to i23
  %tmp_13_to_int = bitcast float %tmp_s to i32
  %tmp_17 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_13_to_int, i32 23, i32 30)
  %tmp_25 = trunc i32 %tmp_13_to_int to i23
  %notlhs = icmp ne i8 %tmp_15, -1
  %notrhs = icmp eq i23 %tmp_24, 0
  %tmp_19 = or i1 %notrhs, %notlhs
  %notlhs1 = icmp ne i8 %tmp_17, -1
  %notrhs1 = icmp eq i23 %tmp_25, 0
  %tmp_20 = or i1 %notrhs1, %notlhs1
  %tmp_21 = and i1 %tmp_19, %tmp_20
  %tmp_22 = fcmp olt float %temp, %tmp_s
  %tmp_23 = and i1 %tmp_21, %tmp_22
  %output_element = select i1 %tmp_23, float %tmp_s, float %temp
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_13) nounwind
  %i_x_1 = add nsw i32 1, %i_x1_mid2
  br label %1

; <label>:2                                       ; preds = %1
  %tmp1 = add i32 %o_x_cast_mid2_cast, %tmp_5
  %tmp_11 = add i32 %tmp1_mid2, %tmp1
  %mem_addr = getelementptr inbounds float* %mem, i32 %tmp_11
  %mem_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr, i32 1) nounwind
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr, float %tmp_s, i4 -1) nounwind
  %mem_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr) nounwind
  %o_x_op = add i31 %o_x, 1
  %o_x_mid265_op = select i1 %tmp_10, i31 1, i31 %o_x_op
  %o_x_1 = select i1 %tmp_6_mid2, i31 %o_x_mid265_op, i31 1
  %indvars_iv_next3 = add i32 %indvars_iv19_mid2, %s_read
  %indvars_iv_next4 = add i32 %indvars_iv21_mid2, %s_read
  %indvars_iv_next5 = sub i32 %indvars_iv24_mid2, %s_read
  %indvar_flatten43_op = add i64 %indvar_flatten3, 1
  %indvar_flatten_next1 = select i1 %tmp_10, i64 1, i64 %indvar_flatten43_op
  %indvar_flatten95_op = add i96 %indvar_flatten2, 1
  %indvar_flatten_next2 = select i1 %exitcond_flatten1, i96 1, i96 %indvar_flatten95_op
  br label %.preheader

.preheader2.preheader:                            ; preds = %.preheader
  %b_s_4 = add i31 %b_s, 1
  %b_cast = zext i31 %b_s_4 to i32
  %exitcond_flatten1 = icmp eq i96 %indvar_flatten2, %bound2
  %i_d_mid = select i1 %exitcond_flatten1, i31 0, i31 %i_d
  %indvars_iv12_mid = select i1 %exitcond_flatten1, i32 %k_read, i32 %indvars_iv2
  %indvars_iv19_mid = select i1 %exitcond_flatten1, i32 %k_read, i32 %indvars_iv5
  %tmp_3_mid1 = mul i32 %b_cast, %id_read
  %tmp_3_mid2 = select i1 %exitcond_flatten1, i32 %tmp_3_mid1, i32 %tmp_3
  %tmp_4_mid1 = mul i32 %b_cast, %od_read
  %tmp_4_mid2 = select i1 %exitcond_flatten1, i32 %tmp_4_mid1, i32 %tmp_4
  %tmp5_mid2127_v = select i1 %exitcond_flatten1, i32 %tmp_3_mid1, i32 %tmp4
  %tmp7_mid = mul i32 %tmp_4_mid1, %oy_read
  %tmp7_mid3 = select i1 %exitcond_flatten1, i32 %tmp7_mid, i32 %tmp7
  %tmp_8 = icmp sgt i32 %indvars_iv2, %indvars_iv1
  %smax = select i1 %tmp_8, i32 %indvars_iv2, i32 %indvars_iv1
  %tmp_9 = add i32 %indvars_iv, %smax
  %p_mid1 = select i1 %exitcond_flatten1, i32 %smax16_mid, i32 %tmp_9
  %tmp1_mid2157_v = select i1 %exitcond_flatten1, i32 %tmp7_mid, i32 %tmp8
  %tmp_6_mid1 = select i1 %exitcond_flatten1, i1 %tmp_6_mid, i1 %tmp_6
  %exitcond_flatten2 = icmp eq i64 %indvar_flatten3, %bound1
  %exitcond_flatten45_m_1 = select i1 %exitcond_flatten1, i1 %exitcond_flatten45_m, i1 %exitcond_flatten2
  %b_mid2 = select i1 %exitcond_flatten1, i31 %b_s_4, i31 %b_s
  %o_d = add i31 %i_d_mid, 1
  %i_d_cast = zext i31 %o_d to i32
  %tmp_10 = or i1 %exitcond_flatten45_m_1, %exitcond_flatten1
  %indvars_iv17_mid = select i1 %tmp_10, i32 0, i32 %indvars_iv
  %indvars_iv14_mid = select i1 %tmp_10, i32 0, i32 %indvars_iv1
  %indvars_iv12_mid1 = select i1 %exitcond_flatten45_m_1, i32 %k_read, i32 %indvars_iv12_mid
  %o_y_mid = select i1 %tmp_10, i31 0, i31 %o_y
  %indvars_iv24_mid = select i1 %tmp_10, i32 0, i32 %indvars_iv3
  %indvars_iv21_mid = select i1 %tmp_10, i32 0, i32 %indvars_iv4
  %indvars_iv19_mid1 = select i1 %exitcond_flatten45_m_1, i32 %k_read, i32 %indvars_iv19_mid
  %tmp4_mid1 = add i32 %tmp_3_mid2, %i_d_cast
  %tmp5_mid2_v = select i1 %exitcond_flatten45_m_1, i32 %tmp4_mid1, i32 %tmp5_mid2127_v
  %tmp5_mid2 = mul i32 %tmp5_mid2_v, %iy_read
  %tmp9_mid1 = add i32 %tmp_4_mid2, %i_d_cast
  %tmp7_mid1 = mul i32 %tmp9_mid1, %oy_read
  %tmp7_mid2 = select i1 %exitcond_flatten45_m_1, i32 %tmp7_mid1, i32 %tmp7_mid3
  %p_mid2 = select i1 %exitcond_flatten45_m_1, i32 %smax16_mid, i32 %p_mid1
  %i_y_mid = select i1 %tmp_10, i32 0, i32 %i_y
  %tmp1_mid289_v = select i1 %exitcond_flatten45_m_1, i32 %tmp7_mid1, i32 %tmp1_mid2157_v
  %o_x_cast_mid = select i1 %tmp_10, i31 0, i31 %o_x
  %tmp_6_mid2 = select i1 %exitcond_flatten45_m_1, i1 %tmp_6_mid, i1 %tmp_6_mid1
  %i_d_mid2 = select i1 %exitcond_flatten45_m_1, i31 %o_d, i31 %i_d_mid
  %o_y_1 = add i31 %o_y_mid, 1
  %indvars_iv_next = add i32 %indvars_iv12_mid1, %s_read
  %indvars_iv_next1 = add i32 %indvars_iv14_mid, %s_read
  %indvars_iv_next2 = sub i32 %indvars_iv17_mid, %s_read
  %o_y_cast = zext i31 %o_y_1 to i32
  %indvars_iv24_mid2 = select i1 %tmp_6_mid2, i32 %indvars_iv24_mid, i32 0
  %indvars_iv21_mid2 = select i1 %tmp_6_mid2, i32 %indvars_iv21_mid, i32 0
  %indvars_iv19_mid2 = select i1 %tmp_6_mid2, i32 %indvars_iv19_mid1, i32 %k_read
  %p_mid3 = icmp sgt i32 %indvars_iv_next, %indvars_iv_next1
  %smax16_mid1 = select i1 %p_mid3, i32 %indvars_iv_next, i32 %indvars_iv_next1
  %p_mid4 = add i32 %smax16_mid1, %indvars_iv_next2
  %p_mid5 = select i1 %tmp_6_mid2, i32 %p_mid2, i32 %p_mid4
  %i_y_mid1 = mul nsw i32 %o_y_cast, %s_read
  %i_y_mid2 = select i1 %tmp_6_mid2, i32 %i_y_mid, i32 %i_y_mid1
  %tmp8_mid1 = add i32 %tmp7_mid2, %o_y_cast
  %tmp1_mid2_v = select i1 %tmp_6_mid2, i32 %tmp1_mid289_v, i32 %tmp8_mid1
  %tmp1_mid2 = mul i32 %tmp1_mid2_v, %ox_read
  %o_x_cast_mid2 = select i1 %tmp_6_mid2, i31 %o_x_cast_mid, i31 0
  %o_x_cast_mid2_cast = zext i31 %o_x_cast_mid2 to i32
  %indvars_iv17_mid2 = select i1 %tmp_6_mid2, i32 %indvars_iv17_mid, i32 %indvars_iv_next2
  %indvars_iv14_mid2 = select i1 %tmp_6_mid2, i32 %indvars_iv14_mid, i32 %indvars_iv_next1
  %indvars_iv12_mid2 = select i1 %tmp_6_mid2, i32 %indvars_iv12_mid1, i32 %indvars_iv_next
  %o_y_mid2 = select i1 %tmp_6_mid2, i31 %o_y_mid, i31 %o_y_1
  %tmp_12 = icmp sgt i32 %indvars_iv19_mid2, %indvars_iv21_mid2
  %smax1 = select i1 %tmp_12, i32 %indvars_iv19_mid2, i32 %indvars_iv21_mid2
  %tmp_16 = add i32 %smax1, %indvars_iv24_mid2
  %i_x = mul nsw i32 %o_x_cast_mid2_cast, %s_read
  %tmp_7 = add nsw i32 %i_x, %k_read
  %cast = zext i32 %p_mid5 to i64
  %cast7 = zext i32 %tmp_16 to i64
  %bound = mul i64 %cast, %cast7
  br label %1

; <label>:3                                       ; preds = %.preheader
  ret void
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

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

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!13}

!0 = metadata !{void (float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @maxpool_layer, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const"}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"input_offset", metadata !"output_offset", metadata !"b", metadata !"od", metadata !"ox", metadata !"oy", metadata !"id", metadata !"ix", metadata !"iy", metadata !"s", metadata !"k"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const float &", metadata !"const float &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"__a", metadata !"__b"}
!13 = metadata !{metadata !14, [1 x i32]* @llvm_global_ctors_0}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 31, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"llvm.global_ctors.0", metadata !18, metadata !"", i32 0, i32 31}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 0, i32 1}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"mem", metadata !18, metadata !"float", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 31, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"input_offset", metadata !28, metadata !"int", i32 0, i32 31}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 0, i32 0}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 31, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"output_offset", metadata !28, metadata !"int", i32 0, i32 31}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 31, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"b", metadata !28, metadata !"int", i32 0, i32 31}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 31, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"od", metadata !28, metadata !"int", i32 0, i32 31}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 31, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"ox", metadata !28, metadata !"int", i32 0, i32 31}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 31, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"oy", metadata !28, metadata !"int", i32 0, i32 31}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 31, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"id", metadata !28, metadata !"int", i32 0, i32 31}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 31, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"ix", metadata !28, metadata !"int", i32 0, i32 31}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 0, i32 31, metadata !60}
!60 = metadata !{metadata !61}
!61 = metadata !{metadata !"iy", metadata !28, metadata !"int", i32 0, i32 31}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 0, i32 31, metadata !64}
!64 = metadata !{metadata !65}
!65 = metadata !{metadata !"s", metadata !28, metadata !"int", i32 0, i32 31}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 0, i32 31, metadata !68}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !"k", metadata !28, metadata !"int", i32 0, i32 31}
