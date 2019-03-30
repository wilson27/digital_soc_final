; ModuleID = 'C:/Users/Wilson/Desktop/digital_soc_final/digital_soc_final/hls_proj/maxpool_proj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@maxpool_layer_str = internal unnamed_addr constant [14 x i8] c"maxpool_layer\00" ; [#uses=1 type=[14 x i8]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=10 type=[9 x i8]*]
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=12 type=[10 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=69 type=[1 x i8]*]
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=0]
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
  %k_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %k) nounwind ; [#uses=10 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %k_read}, i64 0, metadata !70), !dbg !81 ; [debug line = 17:27] [debug variable = k]
  %s_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %s) nounwind ; [#uses=9 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %s_read}, i64 0, metadata !82), !dbg !83 ; [debug line = 16:27] [debug variable = s]
  %iy_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %iy) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %iy_read}, i64 0, metadata !84), !dbg !85 ; [debug line = 15:27] [debug variable = iy]
  %ix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ix) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %ix_read}, i64 0, metadata !86), !dbg !87 ; [debug line = 14:27] [debug variable = ix]
  %id_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %id) nounwind ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %id_read}, i64 0, metadata !88), !dbg !89 ; [debug line = 13:27] [debug variable = id]
  %oy_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %oy) nounwind ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %oy_read}, i64 0, metadata !90), !dbg !91 ; [debug line = 12:27] [debug variable = oy]
  %ox_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ox) nounwind ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %ox_read}, i64 0, metadata !92), !dbg !93 ; [debug line = 11:27] [debug variable = ox]
  %od_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %od) nounwind ; [#uses=3 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %od_read}, i64 0, metadata !94), !dbg !95 ; [debug line = 10:27] [debug variable = od]
  %b_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %b) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %b_read}, i64 0, metadata !96), !dbg !97 ; [debug line = 9:27] [debug variable = b]
  %output_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %output_offset) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %output_offset_read}, i64 0, metadata !98), !dbg !99 ; [debug line = 8:21] [debug variable = output_offset]
  %input_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %input_offset) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %input_offset_read}, i64 0, metadata !100), !dbg !101 ; [debug line = 7:21] [debug variable = input_offset]
  call void @llvm.dbg.value(metadata !{float* %mem}, i64 0, metadata !102), !dbg !103 ; [debug line = 6:28] [debug variable = mem]
  call void @llvm.dbg.value(metadata !{i32 %input_offset}, i64 0, metadata !100), !dbg !101 ; [debug line = 7:21] [debug variable = input_offset]
  call void @llvm.dbg.value(metadata !{i32 %output_offset}, i64 0, metadata !98), !dbg !99 ; [debug line = 8:21] [debug variable = output_offset]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !96), !dbg !97 ; [debug line = 9:27] [debug variable = b]
  call void @llvm.dbg.value(metadata !{i32 %od}, i64 0, metadata !94), !dbg !95 ; [debug line = 10:27] [debug variable = od]
  call void @llvm.dbg.value(metadata !{i32 %ox}, i64 0, metadata !92), !dbg !93 ; [debug line = 11:27] [debug variable = ox]
  call void @llvm.dbg.value(metadata !{i32 %oy}, i64 0, metadata !90), !dbg !91 ; [debug line = 12:27] [debug variable = oy]
  call void @llvm.dbg.value(metadata !{i32 %id}, i64 0, metadata !88), !dbg !89 ; [debug line = 13:27] [debug variable = id]
  call void @llvm.dbg.value(metadata !{i32 %ix}, i64 0, metadata !86), !dbg !87 ; [debug line = 14:27] [debug variable = ix]
  call void @llvm.dbg.value(metadata !{i32 %iy}, i64 0, metadata !84), !dbg !85 ; [debug line = 15:27] [debug variable = iy]
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !82), !dbg !83 ; [debug line = 16:27] [debug variable = s]
  call void @llvm.dbg.value(metadata !{i32 %k}, i64 0, metadata !70), !dbg !81 ; [debug line = 17:27] [debug variable = k]
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 2147483648, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !104 ; [debug line = 21:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %b, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !106 ; [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %od, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !107 ; [debug line = 24:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ox, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !108 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %oy, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !109 ; [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %id, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !110 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ix, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !111 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %iy, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !112 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %s, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !113 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %k, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !114 ; [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !115 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !116 ; [debug line = 33:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !117 ; [debug line = 34:1]
  call void @llvm.dbg.value(metadata !{i32 %od}, i64 0, metadata !118), !dbg !119 ; [debug line = 37:22] [debug variable = num_biases]
  %tmp = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %input_offset_read, i32 2, i32 31), !dbg !120 ; [#uses=1 type=i30] [debug line = 68:2]
  %tmp_2 = zext i30 %tmp to i32, !dbg !120        ; [#uses=1 type=i32] [debug line = 68:2]
  %tmp_1 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %output_offset_read, i32 2, i32 31), !dbg !133 ; [#uses=1 type=i30] [debug line = 73:11]
  %tmp_5 = zext i30 %tmp_1 to i32, !dbg !133      ; [#uses=1 type=i32] [debug line = 73:11]
  %cast1 = zext i32 %oy_read to i64               ; [#uses=1 type=i64]
  %cast2 = zext i32 %ox_read to i64               ; [#uses=1 type=i64]
  %bound1 = mul i64 %cast2, %cast1                ; [#uses=3 type=i64]
  %cast3 = zext i32 %od_read to i96               ; [#uses=1 type=i96]
  %cast4 = zext i64 %bound1 to i96                ; [#uses=1 type=i96]
  %bound2 = mul i96 %cast4, %cast3                ; [#uses=2 type=i96]
  %cast5 = zext i32 %b_read to i128               ; [#uses=1 type=i128]
  %cast6 = zext i96 %bound2 to i128               ; [#uses=1 type=i128]
  %bound3 = mul i128 %cast6, %cast5               ; [#uses=1 type=i128]
  %p_mid = icmp sgt i32 %k_read, 0, !dbg !134     ; [#uses=1 type=i1] [debug line = 49:35]
  %smax16_mid = select i1 %p_mid, i32 %k_read, i32 0, !dbg !134 ; [#uses=2 type=i32] [debug line = 49:35]
  %tmp_6_mid = icmp sgt i32 %ox_read, 0, !dbg !135 ; [#uses=2 type=i1] [debug line = 52:25]
  %exitcond_flatten45_m = icmp eq i64 %bound1, 0  ; [#uses=1 type=i1]
  br label %.preheader, !dbg !136                 ; [debug line = 43:16]

.preheader:                                       ; preds = %2, %0
  %indvar_flatten1 = phi i128 [ 0, %0 ], [ %indvar_flatten_next3, %2 ] ; [#uses=2 type=i128]
  %b_s = phi i31 [ 0, %0 ], [ %b_mid2, %2 ]       ; [#uses=3 type=i31]
  %indvar_flatten2 = phi i96 [ 0, %0 ], [ %indvar_flatten_next2, %2 ] ; [#uses=2 type=i96]
  %i_d = phi i31 [ 0, %0 ], [ %i_d_mid2, %2 ]     ; [#uses=2 type=i31]
  %indvar_flatten3 = phi i64 [ 0, %0 ], [ %indvar_flatten_next1, %2 ] ; [#uses=2 type=i64]
  %indvars_iv = phi i32 [ 0, %0 ], [ %indvars_iv17_mid2, %2 ], !dbg !134 ; [#uses=2 type=i32] [debug line = 49:35]
  %indvars_iv1 = phi i32 [ 0, %0 ], [ %indvars_iv14_mid2, %2 ], !dbg !134 ; [#uses=3 type=i32] [debug line = 49:35]
  %indvars_iv2 = phi i32 [ %k_read, %0 ], [ %indvars_iv12_mid2, %2 ] ; [#uses=3 type=i32]
  %o_y = phi i31 [ 0, %0 ], [ %o_y_mid2, %2 ]     ; [#uses=2 type=i31]
  %indvars_iv3 = phi i32 [ 0, %0 ], [ %indvars_iv_next5, %2 ], !dbg !137 ; [#uses=1 type=i32] [debug line = 52:37]
  %indvars_iv4 = phi i32 [ 0, %0 ], [ %indvars_iv_next4, %2 ], !dbg !137 ; [#uses=1 type=i32] [debug line = 52:37]
  %indvars_iv5 = phi i32 [ %k_read, %0 ], [ %indvars_iv_next3, %2 ] ; [#uses=1 type=i32]
  %o_x = phi i31 [ 0, %0 ], [ %o_x_1, %2 ]        ; [#uses=3 type=i31]
  %b_cast_mid1 = zext i31 %b_s to i32, !dbg !136  ; [#uses=2 type=i32] [debug line = 43:16]
  %tmp_3 = mul i32 %id_read, %b_cast_mid1, !dbg !120 ; [#uses=2 type=i32] [debug line = 68:2]
  %tmp_4 = mul i32 %od_read, %b_cast_mid1, !dbg !133 ; [#uses=2 type=i32] [debug line = 73:11]
  %i_d_cast_mid1 = zext i31 %i_d to i32, !dbg !138 ; [#uses=2 type=i32] [debug line = 46:21]
  %tmp4 = add i32 %tmp_3, %i_d_cast_mid1          ; [#uses=1 type=i32]
  %tmp9 = add i32 %tmp_4, %i_d_cast_mid1          ; [#uses=1 type=i32]
  %tmp7 = mul i32 %oy_read, %tmp9                 ; [#uses=2 type=i32]
  %o_y_cast_mid1 = zext i31 %o_y to i32, !dbg !139 ; [#uses=2 type=i32] [debug line = 49:23]
  %i_y = mul nsw i32 %s_read, %o_y_cast_mid1, !dbg !140 ; [#uses=1 type=i32] [debug line = 62:33]
  %tmp8 = add i32 %tmp7, %o_y_cast_mid1           ; [#uses=1 type=i32]
  %o_x_cast = zext i31 %o_x to i32, !dbg !135     ; [#uses=1 type=i32] [debug line = 52:25]
  %tmp_6 = icmp slt i32 %o_x_cast, %ox_read, !dbg !135 ; [#uses=1 type=i1] [debug line = 52:25]
  call void @llvm.dbg.value(metadata !{i31 %o_y_1}, i64 0, metadata !141), !dbg !134 ; [debug line = 49:35] [debug variable = o_y]
  call void @llvm.dbg.value(metadata !{i31 %o_d}, i64 0, metadata !142), !dbg !143 ; [debug line = 46:33] [debug variable = o_d]
  %exitcond_flatten3 = icmp eq i128 %indvar_flatten1, %bound3 ; [#uses=1 type=i1]
  %indvar_flatten_next3 = add i128 %indvar_flatten1, 1 ; [#uses=1 type=i128]
  br i1 %exitcond_flatten3, label %3, label %.preheader2.preheader

; <label>:1                                       ; preds = %.preheader2.preheader, %.reset
  %indvar_flatten = phi i64 [ 0, %.preheader2.preheader ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i64]
  %i_y1 = phi i32 [ %i_y_mid2, %.preheader2.preheader ], [ %tmp6_mid2_v_v, %.reset ] ; [#uses=2 type=i32]
  %tmp_s = phi float [ -9.000000e+03, %.preheader2.preheader ], [ %output_element, %.reset ] ; [#uses=4 type=float]
  %i_x1 = phi i32 [ %i_x, %.preheader2.preheader ], [ %i_x_1, %.reset ] ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %i_x}, i64 0, metadata !144), !dbg !145 ; [debug line = 65:35] [debug variable = i_x]
  %exitcond_flatten = icmp eq i64 %indvar_flatten, %bound ; [#uses=1 type=i1]
  %indvar_flatten_next = add i64 %indvar_flatten, 1 ; [#uses=1 type=i64]
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  call void @llvm.dbg.value(metadata !{i32 %i_x}, i64 0, metadata !144), !dbg !145 ; [debug line = 65:35] [debug variable = i_x]
  %tmp_18 = icmp slt i32 %i_x1, %tmp_7, !dbg !145 ; [#uses=2 type=i1] [debug line = 65:35]
  %i_x1_mid2 = select i1 %tmp_18, i32 %i_x1, i32 %i_x ; [#uses=2 type=i32]
  %i_y_s = add nsw i32 1, %i_y1, !dbg !146        ; [#uses=1 type=i32] [debug line = 62:50]
  %tmp6_mid2_v_v = select i1 %tmp_18, i32 %i_y1, i32 %i_y_s ; [#uses=2 type=i32]
  %tmp6_mid2_v = add i32 %tmp6_mid2_v_v, %tmp5_mid2 ; [#uses=1 type=i32]
  %tmp6_mid2 = mul i32 %ix_read, %tmp6_mid2_v     ; [#uses=1 type=i32]
  %tmp_13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind, !dbg !147 ; [#uses=1 type=i32] [debug line = 66:16]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !148 ; [debug line = 67:1]
  %tmp2 = add i32 %tmp_2, %i_x1_mid2, !dbg !120   ; [#uses=1 type=i32] [debug line = 68:2]
  %tmp_14 = add i32 %tmp2, %tmp6_mid2, !dbg !120  ; [#uses=1 type=i32] [debug line = 68:2]
  %mem_addr_1 = getelementptr inbounds float* %mem, i32 %tmp_14, !dbg !120 ; [#uses=2 type=float*] [debug line = 68:2]
  %temp_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_1, i32 1) nounwind, !dbg !120 ; [#uses=0 type=i1] [debug line = 68:2]
  %temp = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_1) nounwind, !dbg !120 ; [#uses=3 type=float] [debug line = 68:2]
  call void @llvm.dbg.value(metadata !{float %temp}, i64 0, metadata !149), !dbg !120 ; [debug line = 68:2] [debug variable = temp]
  %temp_to_int = bitcast float %temp to i32       ; [#uses=2 type=i32]
  %tmp_15 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %temp_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_24 = trunc i32 %temp_to_int to i23         ; [#uses=1 type=i23]
  %tmp_13_to_int = bitcast float %tmp_s to i32    ; [#uses=2 type=i32]
  %tmp_17 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_13_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_25 = trunc i32 %tmp_13_to_int to i23       ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp_15, -1                ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_24, 0                ; [#uses=1 type=i1]
  %tmp_19 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %notlhs1 = icmp ne i8 %tmp_17, -1               ; [#uses=1 type=i1]
  %notrhs1 = icmp eq i23 %tmp_25, 0               ; [#uses=1 type=i1]
  %tmp_20 = or i1 %notrhs1, %notlhs1              ; [#uses=1 type=i1]
  %tmp_21 = and i1 %tmp_19, %tmp_20               ; [#uses=1 type=i1]
  %tmp_22 = fcmp olt float %temp, %tmp_s, !dbg !150 ; [#uses=1 type=i1] [debug line = 214:7@69:21]
  %tmp_23 = and i1 %tmp_21, %tmp_22, !dbg !150    ; [#uses=1 type=i1] [debug line = 214:7@69:21]
  %output_element = select i1 %tmp_23, float %tmp_s, float %temp, !dbg !162 ; [#uses=1 type=float] [debug line = 69:21]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !163), !dbg !162 ; [debug line = 69:21] [debug variable = output_element]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_13) nounwind, !dbg !164 ; [#uses=0 type=i32] [debug line = 70:15]
  %i_x_1 = add nsw i32 1, %i_x1_mid2, !dbg !165   ; [#uses=1 type=i32] [debug line = 65:52]
  call void @llvm.dbg.value(metadata !{i32 %i_x_1}, i64 0, metadata !144), !dbg !165 ; [debug line = 65:52] [debug variable = i_x]
  br label %1, !dbg !165                          ; [debug line = 65:52]

; <label>:2                                       ; preds = %1
  %tmp1 = add i32 %o_x_cast_mid2_cast, %tmp_5, !dbg !133 ; [#uses=1 type=i32] [debug line = 73:11]
  %tmp_11 = add i32 %tmp1_mid2, %tmp1, !dbg !133  ; [#uses=1 type=i32] [debug line = 73:11]
  %mem_addr = getelementptr inbounds float* %mem, i32 %tmp_11, !dbg !133 ; [#uses=3 type=float*] [debug line = 73:11]
  %mem_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr, i32 1) nounwind, !dbg !133 ; [#uses=0 type=i1] [debug line = 73:11]
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr, float %tmp_s, i4 -1) nounwind, !dbg !133 ; [debug line = 73:11]
  %mem_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr) nounwind, !dbg !133 ; [#uses=0 type=i1] [debug line = 73:11]
  %o_x_op = add i31 %o_x, 1, !dbg !137            ; [#uses=1 type=i31] [debug line = 52:37]
  %o_x_mid265_op = select i1 %tmp_10, i31 1, i31 %o_x_op, !dbg !137 ; [#uses=1 type=i31] [debug line = 52:37]
  %o_x_1 = select i1 %tmp_6_mid2, i31 %o_x_mid265_op, i31 1, !dbg !137 ; [#uses=1 type=i31] [debug line = 52:37]
  call void @llvm.dbg.value(metadata !{i31 %o_x_1}, i64 0, metadata !166), !dbg !137 ; [debug line = 52:37] [debug variable = o_x]
  %indvars_iv_next3 = add i32 %indvars_iv19_mid2, %s_read, !dbg !137 ; [#uses=1 type=i32] [debug line = 52:37]
  %indvars_iv_next4 = add i32 %indvars_iv21_mid2, %s_read, !dbg !137 ; [#uses=1 type=i32] [debug line = 52:37]
  %indvars_iv_next5 = sub i32 %indvars_iv24_mid2, %s_read, !dbg !137 ; [#uses=1 type=i32] [debug line = 52:37]
  %indvar_flatten43_op = add i64 %indvar_flatten3, 1 ; [#uses=1 type=i64]
  %indvar_flatten_next1 = select i1 %tmp_10, i64 1, i64 %indvar_flatten43_op ; [#uses=1 type=i64]
  %indvar_flatten95_op = add i96 %indvar_flatten2, 1 ; [#uses=1 type=i96]
  %indvar_flatten_next2 = select i1 %exitcond_flatten1, i96 1, i96 %indvar_flatten95_op ; [#uses=1 type=i96]
  br label %.preheader, !dbg !137                 ; [debug line = 52:37]

.preheader2.preheader:                            ; preds = %.preheader
  %b_s_4 = add i31 %b_s, 1, !dbg !167             ; [#uses=2 type=i31] [debug line = 43:25]
  %b_cast = zext i31 %b_s_4 to i32, !dbg !136     ; [#uses=2 type=i32] [debug line = 43:16]
  %exitcond_flatten1 = icmp eq i96 %indvar_flatten2, %bound2 ; [#uses=14 type=i1]
  %i_d_mid = select i1 %exitcond_flatten1, i31 0, i31 %i_d ; [#uses=2 type=i31]
  %indvars_iv12_mid = select i1 %exitcond_flatten1, i32 %k_read, i32 %indvars_iv2 ; [#uses=1 type=i32]
  %indvars_iv19_mid = select i1 %exitcond_flatten1, i32 %k_read, i32 %indvars_iv5 ; [#uses=1 type=i32]
  %tmp_3_mid1 = mul i32 %b_cast, %id_read, !dbg !120 ; [#uses=2 type=i32] [debug line = 68:2]
  %tmp_3_mid2 = select i1 %exitcond_flatten1, i32 %tmp_3_mid1, i32 %tmp_3, !dbg !120 ; [#uses=1 type=i32] [debug line = 68:2]
  %tmp_4_mid1 = mul i32 %b_cast, %od_read, !dbg !133 ; [#uses=2 type=i32] [debug line = 73:11]
  %tmp_4_mid2 = select i1 %exitcond_flatten1, i32 %tmp_4_mid1, i32 %tmp_4, !dbg !133 ; [#uses=1 type=i32] [debug line = 73:11]
  %tmp5_mid2127_v = select i1 %exitcond_flatten1, i32 %tmp_3_mid1, i32 %tmp4 ; [#uses=1 type=i32]
  %tmp7_mid = mul i32 %tmp_4_mid1, %oy_read       ; [#uses=2 type=i32]
  %tmp7_mid3 = select i1 %exitcond_flatten1, i32 %tmp7_mid, i32 %tmp7 ; [#uses=1 type=i32]
  %tmp_8 = icmp sgt i32 %indvars_iv2, %indvars_iv1, !dbg !134 ; [#uses=1 type=i1] [debug line = 49:35]
  %smax = select i1 %tmp_8, i32 %indvars_iv2, i32 %indvars_iv1, !dbg !134 ; [#uses=1 type=i32] [debug line = 49:35]
  %tmp_9 = add i32 %indvars_iv, %smax, !dbg !134  ; [#uses=1 type=i32] [debug line = 49:35]
  %p_mid1 = select i1 %exitcond_flatten1, i32 %smax16_mid, i32 %tmp_9, !dbg !134 ; [#uses=1 type=i32] [debug line = 49:35]
  %tmp1_mid2157_v = select i1 %exitcond_flatten1, i32 %tmp7_mid, i32 %tmp8 ; [#uses=1 type=i32]
  %tmp_6_mid1 = select i1 %exitcond_flatten1, i1 %tmp_6_mid, i1 %tmp_6, !dbg !135 ; [#uses=1 type=i1] [debug line = 52:25]
  call void @llvm.dbg.value(metadata !{i31 %o_y_1}, i64 0, metadata !141), !dbg !134 ; [debug line = 49:35] [debug variable = o_y]
  %exitcond_flatten2 = icmp eq i64 %indvar_flatten3, %bound1 ; [#uses=1 type=i1]
  %exitcond_flatten45_m_1 = select i1 %exitcond_flatten1, i1 %exitcond_flatten45_m, i1 %exitcond_flatten2 ; [#uses=9 type=i1]
  call void @llvm.dbg.value(metadata !{i31 %o_d}, i64 0, metadata !142), !dbg !143 ; [debug line = 46:33] [debug variable = o_d]
  %b_mid2 = select i1 %exitcond_flatten1, i31 %b_s_4, i31 %b_s ; [#uses=1 type=i31]
  %o_d = add i31 %i_d_mid, 1, !dbg !143           ; [#uses=2 type=i31] [debug line = 46:33]
  %i_d_cast = zext i31 %o_d to i32, !dbg !138     ; [#uses=2 type=i32] [debug line = 46:21]
  %tmp_10 = or i1 %exitcond_flatten45_m_1, %exitcond_flatten1, !dbg !134 ; [#uses=9 type=i1] [debug line = 49:35]
  %indvars_iv17_mid = select i1 %tmp_10, i32 0, i32 %indvars_iv, !dbg !134 ; [#uses=2 type=i32] [debug line = 49:35]
  %indvars_iv14_mid = select i1 %tmp_10, i32 0, i32 %indvars_iv1, !dbg !134 ; [#uses=2 type=i32] [debug line = 49:35]
  %indvars_iv12_mid1 = select i1 %exitcond_flatten45_m_1, i32 %k_read, i32 %indvars_iv12_mid ; [#uses=2 type=i32]
  %o_y_mid = select i1 %tmp_10, i31 0, i31 %o_y   ; [#uses=2 type=i31]
  %indvars_iv24_mid = select i1 %tmp_10, i32 0, i32 %indvars_iv3, !dbg !137 ; [#uses=1 type=i32] [debug line = 52:37]
  %indvars_iv21_mid = select i1 %tmp_10, i32 0, i32 %indvars_iv4, !dbg !137 ; [#uses=1 type=i32] [debug line = 52:37]
  %indvars_iv19_mid1 = select i1 %exitcond_flatten45_m_1, i32 %k_read, i32 %indvars_iv19_mid ; [#uses=1 type=i32]
  %tmp4_mid1 = add i32 %tmp_3_mid2, %i_d_cast     ; [#uses=1 type=i32]
  %tmp5_mid2_v = select i1 %exitcond_flatten45_m_1, i32 %tmp4_mid1, i32 %tmp5_mid2127_v ; [#uses=1 type=i32]
  %tmp5_mid2 = mul i32 %tmp5_mid2_v, %iy_read     ; [#uses=1 type=i32]
  %tmp9_mid1 = add i32 %tmp_4_mid2, %i_d_cast     ; [#uses=1 type=i32]
  %tmp7_mid1 = mul i32 %tmp9_mid1, %oy_read       ; [#uses=2 type=i32]
  %tmp7_mid2 = select i1 %exitcond_flatten45_m_1, i32 %tmp7_mid1, i32 %tmp7_mid3 ; [#uses=1 type=i32]
  %p_mid2 = select i1 %exitcond_flatten45_m_1, i32 %smax16_mid, i32 %p_mid1, !dbg !134 ; [#uses=1 type=i32] [debug line = 49:35]
  %i_y_mid = select i1 %tmp_10, i32 0, i32 %i_y, !dbg !140 ; [#uses=1 type=i32] [debug line = 62:33]
  %tmp1_mid289_v = select i1 %exitcond_flatten45_m_1, i32 %tmp7_mid1, i32 %tmp1_mid2157_v ; [#uses=1 type=i32]
  %o_x_cast_mid = select i1 %tmp_10, i31 0, i31 %o_x, !dbg !135 ; [#uses=1 type=i31] [debug line = 52:25]
  %tmp_6_mid2 = select i1 %exitcond_flatten45_m_1, i1 %tmp_6_mid, i1 %tmp_6_mid1, !dbg !135 ; [#uses=12 type=i1] [debug line = 52:25]
  %i_d_mid2 = select i1 %exitcond_flatten45_m_1, i31 %o_d, i31 %i_d_mid ; [#uses=1 type=i31]
  %o_y_1 = add i31 %o_y_mid, 1, !dbg !134         ; [#uses=2 type=i31] [debug line = 49:35]
  %indvars_iv_next = add i32 %indvars_iv12_mid1, %s_read, !dbg !134 ; [#uses=3 type=i32] [debug line = 49:35]
  %indvars_iv_next1 = add i32 %indvars_iv14_mid, %s_read, !dbg !134 ; [#uses=3 type=i32] [debug line = 49:35]
  %indvars_iv_next2 = sub i32 %indvars_iv17_mid, %s_read, !dbg !134 ; [#uses=2 type=i32] [debug line = 49:35]
  %o_y_cast = zext i31 %o_y_1 to i32, !dbg !139   ; [#uses=2 type=i32] [debug line = 49:23]
  %indvars_iv24_mid2 = select i1 %tmp_6_mid2, i32 %indvars_iv24_mid, i32 0, !dbg !137 ; [#uses=2 type=i32] [debug line = 52:37]
  %indvars_iv21_mid2 = select i1 %tmp_6_mid2, i32 %indvars_iv21_mid, i32 0, !dbg !137 ; [#uses=3 type=i32] [debug line = 52:37]
  %indvars_iv19_mid2 = select i1 %tmp_6_mid2, i32 %indvars_iv19_mid1, i32 %k_read ; [#uses=3 type=i32]
  %p_mid3 = icmp sgt i32 %indvars_iv_next, %indvars_iv_next1, !dbg !134 ; [#uses=1 type=i1] [debug line = 49:35]
  %smax16_mid1 = select i1 %p_mid3, i32 %indvars_iv_next, i32 %indvars_iv_next1, !dbg !134 ; [#uses=1 type=i32] [debug line = 49:35]
  %p_mid4 = add i32 %smax16_mid1, %indvars_iv_next2, !dbg !134 ; [#uses=1 type=i32] [debug line = 49:35]
  %p_mid5 = select i1 %tmp_6_mid2, i32 %p_mid2, i32 %p_mid4, !dbg !134 ; [#uses=1 type=i32] [debug line = 49:35]
  %i_y_mid1 = mul nsw i32 %o_y_cast, %s_read, !dbg !140 ; [#uses=1 type=i32] [debug line = 62:33]
  %i_y_mid2 = select i1 %tmp_6_mid2, i32 %i_y_mid, i32 %i_y_mid1, !dbg !140 ; [#uses=1 type=i32] [debug line = 62:33]
  %tmp8_mid1 = add i32 %tmp7_mid2, %o_y_cast      ; [#uses=1 type=i32]
  %tmp1_mid2_v = select i1 %tmp_6_mid2, i32 %tmp1_mid289_v, i32 %tmp8_mid1 ; [#uses=1 type=i32]
  %tmp1_mid2 = mul i32 %tmp1_mid2_v, %ox_read     ; [#uses=1 type=i32]
  %o_x_cast_mid2 = select i1 %tmp_6_mid2, i31 %o_x_cast_mid, i31 0, !dbg !135 ; [#uses=1 type=i31] [debug line = 52:25]
  %o_x_cast_mid2_cast = zext i31 %o_x_cast_mid2 to i32, !dbg !135 ; [#uses=2 type=i32] [debug line = 52:25]
  %indvars_iv17_mid2 = select i1 %tmp_6_mid2, i32 %indvars_iv17_mid, i32 %indvars_iv_next2, !dbg !134 ; [#uses=1 type=i32] [debug line = 49:35]
  %indvars_iv14_mid2 = select i1 %tmp_6_mid2, i32 %indvars_iv14_mid, i32 %indvars_iv_next1, !dbg !134 ; [#uses=1 type=i32] [debug line = 49:35]
  %indvars_iv12_mid2 = select i1 %tmp_6_mid2, i32 %indvars_iv12_mid1, i32 %indvars_iv_next ; [#uses=1 type=i32]
  %o_y_mid2 = select i1 %tmp_6_mid2, i31 %o_y_mid, i31 %o_y_1 ; [#uses=1 type=i31]
  %tmp_12 = icmp sgt i32 %indvars_iv19_mid2, %indvars_iv21_mid2, !dbg !137 ; [#uses=1 type=i1] [debug line = 52:37]
  %smax1 = select i1 %tmp_12, i32 %indvars_iv19_mid2, i32 %indvars_iv21_mid2, !dbg !137 ; [#uses=1 type=i32] [debug line = 52:37]
  %tmp_16 = add i32 %smax1, %indvars_iv24_mid2, !dbg !137 ; [#uses=1 type=i32] [debug line = 52:37]
  call void @llvm.dbg.value(metadata !{i31 %i_d}, i64 0, metadata !168), !dbg !169 ; [debug line = 60:16] [debug variable = i_d]
  call void @llvm.dbg.value(metadata !{i32 %i_y}, i64 0, metadata !170), !dbg !140 ; [debug line = 62:33] [debug variable = i_y]
  %i_x = mul nsw i32 %o_x_cast_mid2_cast, %s_read, !dbg !145 ; [#uses=3 type=i32] [debug line = 65:35]
  %tmp_7 = add nsw i32 %i_x, %k_read, !dbg !145   ; [#uses=1 type=i32] [debug line = 65:35]
  %cast = zext i32 %p_mid5 to i64                 ; [#uses=1 type=i64]
  %cast7 = zext i32 %tmp_16 to i64                ; [#uses=1 type=i64]
  %bound = mul i64 %cast, %cast7                  ; [#uses=1 type=i64]
  br label %1, !dbg !140                          ; [debug line = 62:33]

; <label>:3                                       ; preds = %.preheader
  ret void, !dbg !171                             ; [debug line = 81:1]
}

; [#uses=2]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=36]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak i1 @_ssdm_op_WriteResp.m_axi.floatP(float*) {
entry:
  ret i1 true
}

; [#uses=1]
define weak i1 @_ssdm_op_WriteReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
define weak void @_ssdm_op_Write.m_axi.floatP(float*, float, i4) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=13]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=12]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i1 @_ssdm_op_ReadReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

; [#uses=11]
define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak float @_ssdm_op_Read.m_axi.floatP(float*) {
entry:
  %empty = load float* %0                         ; [#uses=1 type=float]
  ret float %empty
}

; [#uses=2]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_5 = trunc i32 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_5
}

; [#uses=2]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_6 = trunc i32 %empty to i30              ; [#uses=1 type=i30]
  ret i30 %empty_6
}

; [#uses=0]
declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
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
!70 = metadata !{i32 786689, metadata !71, metadata !"k", metadata !72, i32 201326609, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!71 = metadata !{i32 786478, i32 0, metadata !72, metadata !"maxpool_layer", metadata !"maxpool_layer", metadata !"_Z13maxpool_layerPfiiiiiiiiiii", metadata !72, i32 6, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @maxpool_layer, null, null, metadata !79, i32 18} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 786473, metadata !"../maxpool_test/maxpool_layer.cpp", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", null} ; [ DW_TAG_file_type ]
!73 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!74 = metadata !{null, metadata !75, metadata !77, metadata !77, metadata !78, metadata !78, metadata !78, metadata !78, metadata !78, metadata !78, metadata !78, metadata !78, metadata !78}
!75 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ]
!76 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!77 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!78 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_const_type ]
!79 = metadata !{metadata !80}
!80 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!81 = metadata !{i32 17, i32 27, metadata !71, null}
!82 = metadata !{i32 786689, metadata !71, metadata !"s", metadata !72, i32 184549392, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!83 = metadata !{i32 16, i32 27, metadata !71, null}
!84 = metadata !{i32 786689, metadata !71, metadata !"iy", metadata !72, i32 167772175, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!85 = metadata !{i32 15, i32 27, metadata !71, null}
!86 = metadata !{i32 786689, metadata !71, metadata !"ix", metadata !72, i32 150994958, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 14, i32 27, metadata !71, null}
!88 = metadata !{i32 786689, metadata !71, metadata !"id", metadata !72, i32 134217741, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!89 = metadata !{i32 13, i32 27, metadata !71, null}
!90 = metadata !{i32 786689, metadata !71, metadata !"oy", metadata !72, i32 117440524, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 12, i32 27, metadata !71, null}
!92 = metadata !{i32 786689, metadata !71, metadata !"ox", metadata !72, i32 100663307, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!93 = metadata !{i32 11, i32 27, metadata !71, null}
!94 = metadata !{i32 786689, metadata !71, metadata !"od", metadata !72, i32 83886090, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 10, i32 27, metadata !71, null}
!96 = metadata !{i32 786689, metadata !71, metadata !"b", metadata !72, i32 67108873, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!97 = metadata !{i32 9, i32 27, metadata !71, null}
!98 = metadata !{i32 786689, metadata !71, metadata !"output_offset", metadata !72, i32 50331656, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 8, i32 21, metadata !71, null}
!100 = metadata !{i32 786689, metadata !71, metadata !"input_offset", metadata !72, i32 33554439, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 7, i32 21, metadata !71, null}
!102 = metadata !{i32 786689, metadata !71, metadata !"mem", metadata !72, i32 16777222, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 6, i32 28, metadata !71, null}
!104 = metadata !{i32 21, i32 1, metadata !105, null}
!105 = metadata !{i32 786443, metadata !71, i32 18, i32 1, metadata !72, i32 0} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 23, i32 1, metadata !105, null}
!107 = metadata !{i32 24, i32 1, metadata !105, null}
!108 = metadata !{i32 25, i32 1, metadata !105, null}
!109 = metadata !{i32 26, i32 1, metadata !105, null}
!110 = metadata !{i32 27, i32 1, metadata !105, null}
!111 = metadata !{i32 28, i32 1, metadata !105, null}
!112 = metadata !{i32 29, i32 1, metadata !105, null}
!113 = metadata !{i32 30, i32 1, metadata !105, null}
!114 = metadata !{i32 31, i32 1, metadata !105, null}
!115 = metadata !{i32 32, i32 1, metadata !105, null}
!116 = metadata !{i32 33, i32 1, metadata !105, null}
!117 = metadata !{i32 34, i32 1, metadata !105, null}
!118 = metadata !{i32 786688, metadata !105, metadata !"num_biases", metadata !72, i32 37, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!119 = metadata !{i32 37, i32 22, metadata !105, null}
!120 = metadata !{i32 68, i32 2, metadata !121, null}
!121 = metadata !{i32 786443, metadata !122, i32 66, i32 15, metadata !72, i32 12} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 786443, metadata !123, i32 65, i32 15, metadata !72, i32 11} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 786443, metadata !124, i32 63, i32 13, metadata !72, i32 10} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 786443, metadata !125, i32 62, i32 13, metadata !72, i32 9} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 786443, metadata !126, i32 53, i32 9, metadata !72, i32 8} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 786443, metadata !127, i32 52, i32 9, metadata !72, i32 7} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 786443, metadata !128, i32 50, i32 7, metadata !72, i32 6} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 786443, metadata !129, i32 49, i32 7, metadata !72, i32 5} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 786443, metadata !130, i32 47, i32 5, metadata !72, i32 4} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 786443, metadata !131, i32 46, i32 5, metadata !72, i32 3} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 786443, metadata !132, i32 44, i32 3, metadata !72, i32 2} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 786443, metadata !105, i32 43, i32 3, metadata !72, i32 1} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 73, i32 11, metadata !125, null}
!134 = metadata !{i32 49, i32 35, metadata !128, null}
!135 = metadata !{i32 52, i32 25, metadata !126, null}
!136 = metadata !{i32 43, i32 16, metadata !132, null}
!137 = metadata !{i32 52, i32 37, metadata !126, null}
!138 = metadata !{i32 46, i32 21, metadata !130, null}
!139 = metadata !{i32 49, i32 23, metadata !128, null}
!140 = metadata !{i32 62, i32 33, metadata !124, null}
!141 = metadata !{i32 786688, metadata !128, metadata !"o_y", metadata !72, i32 49, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 786688, metadata !130, metadata !"o_d", metadata !72, i32 46, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 46, i32 33, metadata !130, null}
!144 = metadata !{i32 786688, metadata !122, metadata !"i_x", metadata !72, i32 65, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 65, i32 35, metadata !122, null}
!146 = metadata !{i32 62, i32 50, metadata !124, null}
!147 = metadata !{i32 66, i32 16, metadata !121, null}
!148 = metadata !{i32 67, i32 1, metadata !121, null}
!149 = metadata !{i32 786688, metadata !105, metadata !"temp", metadata !72, i32 40, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!150 = metadata !{i32 214, i32 7, metadata !151, metadata !162}
!151 = metadata !{i32 786443, metadata !152, i32 210, i32 5, metadata !161, i32 13} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 786478, i32 0, metadata !153, metadata !"max<float>", metadata !"max<float>", metadata !"_ZSt3maxIfERKT_S2_S2_", metadata !154, i32 342, metadata !155, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !159, null, metadata !79, i32 210} ; [ DW_TAG_subprogram ]
!153 = metadata !{i32 786489, null, metadata !"std", metadata !154, i32 39} ; [ DW_TAG_namespace ]
!154 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin\5C..\5Clib\5Cclang\5C3.1/../../../include/c++/4.5.2\5Cbits/algorithmfwd.h", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", null} ; [ DW_TAG_file_type ]
!155 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !156, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!156 = metadata !{metadata !157, metadata !157, metadata !157}
!157 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !158} ; [ DW_TAG_reference_type ]
!158 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_const_type ]
!159 = metadata !{metadata !160}
!160 = metadata !{i32 786479, null, metadata !"_Tp", metadata !76, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!161 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin\5C..\5Clib\5Cclang\5C3.1/../../../include/c++/4.5.2\5Cbits/stl_algobase.h", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", null} ; [ DW_TAG_file_type ]
!162 = metadata !{i32 69, i32 21, metadata !121, null}
!163 = metadata !{i32 786688, metadata !125, metadata !"output_element", metadata !72, i32 54, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!164 = metadata !{i32 70, i32 15, metadata !121, null}
!165 = metadata !{i32 65, i32 52, metadata !122, null}
!166 = metadata !{i32 786688, metadata !126, metadata !"o_x", metadata !72, i32 52, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 43, i32 25, metadata !132, null}
!168 = metadata !{i32 786688, metadata !125, metadata !"i_d", metadata !72, i32 60, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 60, i32 16, metadata !125, null}
!170 = metadata !{i32 786688, metadata !124, metadata !"i_y", metadata !72, i32 62, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 81, i32 1, metadata !105, null}
