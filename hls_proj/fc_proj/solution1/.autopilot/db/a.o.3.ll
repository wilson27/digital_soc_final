; ModuleID = 'C:/Users/Wilson/Desktop/classic_cnn/hls_proj/fc_proj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@fc_layer_str = internal unnamed_addr constant [9 x i8] c"fc_layer\00" ; [#uses=1 type=[9 x i8]*]
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=7 type=[9 x i8]*]
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=7 type=[10 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=42 type=[1 x i8]*]
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=2]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=21]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @fc_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %batch_size, i32 %num_inputs, i32 %num_outputs, i32 %enable_relu) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %mem) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %input_offset) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %output_offset) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %batch_size) nounwind, !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %num_inputs) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %num_outputs) nounwind, !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %enable_relu) nounwind, !map !41
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @fc_layer_str) nounwind
  %enable_relu_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %enable_relu) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %enable_relu_read}, i64 0, metadata !45), !dbg !56 ; [debug line = 10:25] [debug variable = enable_relu]
  %num_outputs_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %num_outputs) nounwind ; [#uses=5 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %num_outputs_read}, i64 0, metadata !57), !dbg !58 ; [debug line = 9:25] [debug variable = num_outputs]
  %num_inputs_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %num_inputs) nounwind ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %num_inputs_read}, i64 0, metadata !59), !dbg !60 ; [debug line = 8:25] [debug variable = num_inputs]
  %batch_size_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %batch_size) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %batch_size_read}, i64 0, metadata !61), !dbg !62 ; [debug line = 7:25] [debug variable = batch_size]
  %output_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %output_offset) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %output_offset_read}, i64 0, metadata !63), !dbg !64 ; [debug line = 6:19] [debug variable = output_offset]
  %input_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %input_offset) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %input_offset_read}, i64 0, metadata !65), !dbg !66 ; [debug line = 5:19] [debug variable = input_offset]
  call void @llvm.dbg.value(metadata !{float* %mem}, i64 0, metadata !67), !dbg !68 ; [debug line = 4:23] [debug variable = mem]
  call void @llvm.dbg.value(metadata !{i32 %input_offset}, i64 0, metadata !65), !dbg !66 ; [debug line = 5:19] [debug variable = input_offset]
  call void @llvm.dbg.value(metadata !{i32 %output_offset}, i64 0, metadata !63), !dbg !64 ; [debug line = 6:19] [debug variable = output_offset]
  call void @llvm.dbg.value(metadata !{i32 %batch_size}, i64 0, metadata !61), !dbg !62 ; [debug line = 7:25] [debug variable = batch_size]
  call void @llvm.dbg.value(metadata !{i32 %num_inputs}, i64 0, metadata !59), !dbg !60 ; [debug line = 8:25] [debug variable = num_inputs]
  call void @llvm.dbg.value(metadata !{i32 %num_outputs}, i64 0, metadata !57), !dbg !58 ; [debug line = 9:25] [debug variable = num_outputs]
  call void @llvm.dbg.value(metadata !{i32 %enable_relu}, i64 0, metadata !45), !dbg !56 ; [debug line = 10:25] [debug variable = enable_relu]
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 2147483648, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !69 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !71 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !72 ; [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %batch_size, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !73 ; [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_inputs, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !74 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_outputs, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !75 ; [debug line = 17:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %enable_relu, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !76 ; [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !77 ; [debug line = 19:1]
  %num_weights = mul nsw i32 %num_outputs_read, %num_inputs_read, !dbg !78 ; [#uses=2 type=i32] [debug line = 21:48]
  call void @llvm.dbg.value(metadata !{i32 %num_weights}, i64 0, metadata !79), !dbg !78 ; [debug line = 21:48] [debug variable = num_weights]
  call void @llvm.dbg.value(metadata !{i32 %num_outputs}, i64 0, metadata !80), !dbg !81 ; [debug line = 22:37] [debug variable = num_biases]
  %tmp = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %input_offset_read, i32 2, i32 31), !dbg !82 ; [#uses=1 type=i30] [debug line = 31:79]
  %tmp_3 = zext i30 %tmp to i32, !dbg !82         ; [#uses=3 type=i32] [debug line = 31:79]
  %tmp_1 = icmp eq i32 %enable_relu_read, 0, !dbg !87 ; [#uses=1 type=i1] [debug line = 51:7]
  %tmp_2 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %output_offset_read, i32 2, i32 31), !dbg !88 ; [#uses=1 type=i30] [debug line = 54:10]
  %tmp_4 = zext i30 %tmp_2 to i32, !dbg !88       ; [#uses=1 type=i32] [debug line = 54:10]
  %tmp2 = add i32 %tmp_3, %num_outputs_read, !dbg !89 ; [#uses=1 type=i32] [debug line = 36:99]
  %cast = zext i32 %batch_size_read to i64        ; [#uses=1 type=i64]
  %cast1 = zext i32 %num_outputs_read to i64      ; [#uses=1 type=i64]
  %bound = mul i64 %cast1, %cast                  ; [#uses=1 type=i64]
  br label %.preheader, !dbg !92                  ; [debug line = 25:17]

.preheader:                                       ; preds = %8, %0
  %indvar_flatten = phi i64 [ 0, %0 ], [ %indvar_flatten_next, %8 ] ; [#uses=2 type=i64]
  %b = phi i31 [ 0, %0 ], [ %tmp_4_mid2_v_v, %8 ] ; [#uses=2 type=i31]
  %o = phi i31 [ 0, %0 ], [ %o_1, %8 ]            ; [#uses=3 type=i31]
  %o_cast = zext i31 %o to i32, !dbg !93          ; [#uses=1 type=i32] [debug line = 28:19]
  %tmp_7 = icmp slt i32 %o_cast, %num_outputs_read, !dbg !93 ; [#uses=3 type=i1] [debug line = 28:19]
  %exitcond_flatten = icmp eq i64 %indvar_flatten, %bound ; [#uses=1 type=i1]
  %indvar_flatten_next = add i64 %indvar_flatten, 1 ; [#uses=1 type=i64]
  br i1 %exitcond_flatten, label %9, label %.preheader.preheader

; <label>:1                                       ; preds = %.preheader.preheader, %._crit_edge
  %tmp_8 = phi float [ %output_element, %.preheader.preheader ], [ %tmp_25, %._crit_edge ] ; [#uses=7 type=float]
  %i = phi i31 [ 0, %.preheader.preheader ], [ %i_1, %._crit_edge ] ; [#uses=2 type=i31]
  %i_cast = zext i31 %i to i32, !dbg !94          ; [#uses=3 type=i32] [debug line = 34:21]
  %tmp_5 = icmp slt i32 %i_cast, %num_inputs_read, !dbg !94 ; [#uses=1 type=i1] [debug line = 34:21]
  %i_1 = add i31 %i, 1, !dbg !95                  ; [#uses=1 type=i31] [debug line = 34:39]
  br i1 %tmp_5, label %2, label %5, !dbg !94      ; [debug line = 34:21]

; <label>:2                                       ; preds = %1
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind, !dbg !96 ; [#uses=1 type=i32] [debug line = 34:49]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !97 ; [debug line = 35:1]
  %tmp4 = add i32 %tmp_4_mid2, %i_cast, !dbg !89  ; [#uses=1 type=i32] [debug line = 36:99]
  %tmp3 = add i32 %tmp4, %num_weights, !dbg !89   ; [#uses=1 type=i32] [debug line = 36:99]
  %tmp_10 = add i32 %tmp3, %tmp2, !dbg !89        ; [#uses=1 type=i32] [debug line = 36:99]
  %mem_addr_1 = getelementptr inbounds float* %mem, i32 %tmp_10, !dbg !89 ; [#uses=2 type=float*] [debug line = 36:99]
  %input_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_1, i32 1) nounwind, !dbg !89 ; [#uses=0 type=i1] [debug line = 36:99]
  %input_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_1) nounwind, !dbg !89 ; [#uses=3 type=float] [debug line = 36:99]
  call void @llvm.dbg.value(metadata !{float %input_element}, i64 0, metadata !98), !dbg !89 ; [debug line = 36:99] [debug variable = input_element]
  %input_element_to_int = bitcast float %input_element to i32 ; [#uses=2 type=i32]
  %tmp_11 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_element_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_12 = trunc i32 %input_element_to_int to i23 ; [#uses=1 type=i23]
  %notlhs8 = icmp ne i8 %tmp_11, -1               ; [#uses=1 type=i1]
  %notrhs9 = icmp eq i23 %tmp_12, 0               ; [#uses=1 type=i1]
  %tmp_13 = or i1 %notrhs9, %notlhs8              ; [#uses=1 type=i1]
  %tmp_14 = fcmp oeq float %input_element, 0.000000e+00, !dbg !99 ; [#uses=1 type=i1] [debug line = 37:9]
  %tmp_15 = and i1 %tmp_13, %tmp_14, !dbg !99     ; [#uses=1 type=i1] [debug line = 37:9]
  br i1 %tmp_15, label %._crit_edge, label %3, !dbg !99 ; [debug line = 37:9]

; <label>:3                                       ; preds = %2
  %tmp5 = add i32 %tmp_3, %i_cast, !dbg !100      ; [#uses=1 type=i32] [debug line = 38:84]
  %tmp_16 = add i32 %tmp5, %tmp_s, !dbg !100      ; [#uses=1 type=i32] [debug line = 38:84]
  %mem_addr_2 = getelementptr inbounds float* %mem, i32 %tmp_16, !dbg !100 ; [#uses=2 type=float*] [debug line = 38:84]
  %weight_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_2, i32 1) nounwind, !dbg !100 ; [#uses=0 type=i1] [debug line = 38:84]
  %weight_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_2) nounwind, !dbg !100 ; [#uses=3 type=float] [debug line = 38:84]
  call void @llvm.dbg.value(metadata !{float %weight_element}, i64 0, metadata !102), !dbg !100 ; [debug line = 38:84] [debug variable = weight_element]
  %weight_element_to_in = bitcast float %weight_element to i32 ; [#uses=2 type=i32]
  %tmp_17 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %weight_element_to_in, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_18 = trunc i32 %weight_element_to_in to i23 ; [#uses=1 type=i23]
  %notlhs1 = icmp ne i8 %tmp_17, -1               ; [#uses=1 type=i1]
  %notrhs1 = icmp eq i23 %tmp_18, 0               ; [#uses=1 type=i1]
  %tmp_19 = or i1 %notrhs1, %notlhs1              ; [#uses=1 type=i1]
  %tmp_21 = fcmp oeq float %weight_element, 0.000000e+00, !dbg !103 ; [#uses=1 type=i1] [debug line = 39:13]
  %tmp_26 = and i1 %tmp_19, %tmp_21, !dbg !103    ; [#uses=1 type=i1] [debug line = 39:13]
  br i1 %tmp_26, label %._crit_edge, label %4, !dbg !103 ; [debug line = 39:13]

; <label>:4                                       ; preds = %3
  %tmp_24 = fmul float %input_element, %weight_element, !dbg !104 ; [#uses=1 type=float] [debug line = 40:18]
  %output_element_1 = fadd float %tmp_8, %tmp_24, !dbg !104 ; [#uses=1 type=float] [debug line = 40:18]
  call void @llvm.dbg.value(metadata !{float %output_element_1}, i64 0, metadata !106), !dbg !104 ; [debug line = 40:18] [debug variable = output_element]
  br label %._crit_edge, !dbg !107                ; [debug line = 41:13]

._crit_edge:                                      ; preds = %4, %3, %2
  %tmp_25 = phi float [ %tmp_8, %2 ], [ %output_element_1, %4 ], [ %tmp_8, %3 ] ; [#uses=1 type=float]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_6) nounwind, !dbg !108 ; [#uses=0 type=i32] [debug line = 48:7]
  call void @llvm.dbg.value(metadata !{i31 %i_1}, i64 0, metadata !109), !dbg !95 ; [debug line = 34:39] [debug variable = i]
  br label %1, !dbg !95                           ; [debug line = 34:39]

; <label>:5                                       ; preds = %1
  br i1 %tmp_1, label %7, label %6, !dbg !87      ; [debug line = 51:7]

; <label>:6                                       ; preds = %5
  %tmp_10_to_int = bitcast float %tmp_8 to i32    ; [#uses=2 type=i32]
  %tmp_27 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_10_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_28 = trunc i32 %tmp_10_to_int to i23       ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp_27, -1                ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_28, 0                ; [#uses=1 type=i1]
  %tmp_29 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %tmp_30 = fcmp ogt float %tmp_8, 0.000000e+00, !dbg !110 ; [#uses=1 type=i1] [debug line = 214:7@52:63]
  %tmp_31 = and i1 %tmp_29, %tmp_30, !dbg !110    ; [#uses=1 type=i1] [debug line = 214:7@52:63]
  %tmp_22 = select i1 %tmp_31, float %tmp_8, float 0.000000e+00, !dbg !122 ; [#uses=1 type=float] [debug line = 52:63]
  %tmp_23 = add i32 %o_cast_mid2_cast, %tmp_6_mid2, !dbg !122 ; [#uses=1 type=i32] [debug line = 52:63]
  %mem_addr_4 = getelementptr inbounds float* %mem, i32 %tmp_23, !dbg !122 ; [#uses=3 type=float*] [debug line = 52:63]
  %mem_addr_4_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr_4, i32 1) nounwind, !dbg !122 ; [#uses=0 type=i1] [debug line = 52:63]
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr_4, float %tmp_22, i4 -1) nounwind, !dbg !122 ; [debug line = 52:63]
  %mem_addr_4_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr_4) nounwind, !dbg !122 ; [#uses=0 type=i1] [debug line = 52:63]
  br label %8, !dbg !122                          ; [debug line = 52:63]

; <label>:7                                       ; preds = %5
  %tmp_20 = add i32 %o_cast_mid2_cast, %tmp_6_mid2, !dbg !88 ; [#uses=1 type=i32] [debug line = 54:10]
  %mem_addr_3 = getelementptr inbounds float* %mem, i32 %tmp_20, !dbg !88 ; [#uses=3 type=float*] [debug line = 54:10]
  %mem_addr_3_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr_3, i32 1) nounwind, !dbg !88 ; [#uses=0 type=i1] [debug line = 54:10]
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr_3, float %tmp_8, i4 -1) nounwind, !dbg !88 ; [debug line = 54:10]
  %mem_addr_3_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr_3) nounwind, !dbg !88 ; [#uses=0 type=i1] [debug line = 54:10]
  br label %8

; <label>:8                                       ; preds = %7, %6
  %o_op = add i31 %o, 1, !dbg !123                ; [#uses=1 type=i31] [debug line = 28:38]
  %o_1 = select i1 %tmp_7, i31 %o_op, i31 1, !dbg !123 ; [#uses=1 type=i31] [debug line = 28:38]
  call void @llvm.dbg.value(metadata !{i31 %o_1}, i64 0, metadata !124), !dbg !123 ; [debug line = 28:38] [debug variable = o]
  br label %.preheader, !dbg !123                 ; [debug line = 28:38]

.preheader.preheader:                             ; preds = %.preheader
  %b_s = add i31 %b, 1, !dbg !125                 ; [#uses=1 type=i31] [debug line = 25:35]
  %tmp_4_mid2_v_v = select i1 %tmp_7, i31 %b, i31 %b_s, !dbg !89 ; [#uses=2 type=i31] [debug line = 36:99]
  %tmp_4_mid2_v = zext i31 %tmp_4_mid2_v_v to i32, !dbg !89 ; [#uses=2 type=i32] [debug line = 36:99]
  %tmp_4_mid2 = mul i32 %tmp_4_mid2_v, %num_inputs_read, !dbg !89 ; [#uses=1 type=i32] [debug line = 36:99]
  %tmp_6_mid2_v = mul i32 %tmp_4_mid2_v, %num_outputs_read, !dbg !88 ; [#uses=1 type=i32] [debug line = 54:10]
  %tmp_6_mid2 = add i32 %tmp_6_mid2_v, %tmp_4, !dbg !88 ; [#uses=2 type=i32] [debug line = 54:10]
  %o_cast_mid2 = select i1 %tmp_7, i31 %o, i31 0, !dbg !93 ; [#uses=1 type=i31] [debug line = 28:19]
  %o_cast_mid2_cast = zext i31 %o_cast_mid2 to i32, !dbg !93 ; [#uses=4 type=i32] [debug line = 28:19]
  %tmp1 = add i32 %tmp_3, %o_cast_mid2_cast, !dbg !82 ; [#uses=1 type=i32] [debug line = 31:79]
  %tmp_9 = add i32 %tmp1, %num_weights, !dbg !82  ; [#uses=1 type=i32] [debug line = 31:79]
  %mem_addr = getelementptr inbounds float* %mem, i32 %tmp_9, !dbg !82 ; [#uses=2 type=float*] [debug line = 31:79]
  %output_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr, i32 1) nounwind, !dbg !82 ; [#uses=0 type=i1] [debug line = 31:79]
  %output_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr) nounwind, !dbg !82 ; [#uses=1 type=float] [debug line = 31:79]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !106), !dbg !82 ; [debug line = 31:79] [debug variable = output_element]
  %tmp_s = mul nsw i32 %o_cast_mid2_cast, %num_inputs_read, !dbg !100 ; [#uses=1 type=i32] [debug line = 38:84]
  br label %1, !dbg !94                           ; [debug line = 34:21]

; <label>:9                                       ; preds = %.preheader
  ret void, !dbg !126                             ; [debug line = 57:1]
}

; [#uses=2]
define weak i1 @_ssdm_op_WriteResp.m_axi.floatP(float*) {
entry:
  ret i1 true
}

; [#uses=2]
define weak i1 @_ssdm_op_WriteReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

; [#uses=2]
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

; [#uses=8]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=7]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=3]
define weak i1 @_ssdm_op_ReadReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

; [#uses=6]
define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=3]
define weak float @_ssdm_op_Read.m_axi.floatP(float*) {
entry:
  %empty = load float* %0                         ; [#uses=1 type=float]
  ret float %empty
}

; [#uses=3]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_4 = trunc i32 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_4
}

; [#uses=2]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_5 = trunc i32 %empty to i30              ; [#uses=1 type=i30]
  ret i30 %empty_5
}

; [#uses=0]
declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{void (float*, i32, i32, i32, i32, i32, i32)* @fc_layer, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"const", metadata !"const", metadata !"const", metadata !"const"}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"input_offset", metadata !"output_offset", metadata !"batch_size", metadata !"num_inputs", metadata !"num_outputs", metadata !"enable_relu"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const float &", metadata !"const float &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"__a", metadata !"__b"}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"mem", metadata !17, metadata !"float", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 0, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"input_offset", metadata !23, metadata !"int", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 0, i32 0}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"output_offset", metadata !23, metadata !"int", i32 0, i32 31}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 31, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"batch_size", metadata !23, metadata !"int", i32 0, i32 31}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 31, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"num_inputs", metadata !23, metadata !"int", i32 0, i32 31}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 31, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"num_outputs", metadata !23, metadata !"int", i32 0, i32 31}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 31, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"enable_relu", metadata !23, metadata !"int", i32 0, i32 31}
!45 = metadata !{i32 786689, metadata !46, metadata !"enable_relu", metadata !47, i32 117440522, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 786478, i32 0, metadata !47, metadata !"fc_layer", metadata !"fc_layer", metadata !"_Z8fc_layerPfiiiiii", metadata !47, i32 4, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32, i32, i32, i32, i32, i32)* @fc_layer, null, null, metadata !54, i32 11} ; [ DW_TAG_subprogram ]
!47 = metadata !{i32 786473, metadata !"../fc_test/fc_layer.cpp", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cclassic_cnn\5Chls_proj", null} ; [ DW_TAG_file_type ]
!48 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!49 = metadata !{null, metadata !50, metadata !52, metadata !52, metadata !53, metadata !53, metadata !53, metadata !53}
!50 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ]
!51 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!52 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!53 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_const_type ]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!56 = metadata !{i32 10, i32 25, metadata !46, null}
!57 = metadata !{i32 786689, metadata !46, metadata !"num_outputs", metadata !47, i32 100663305, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 9, i32 25, metadata !46, null}
!59 = metadata !{i32 786689, metadata !46, metadata !"num_inputs", metadata !47, i32 83886088, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 8, i32 25, metadata !46, null}
!61 = metadata !{i32 786689, metadata !46, metadata !"batch_size", metadata !47, i32 67108871, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!62 = metadata !{i32 7, i32 25, metadata !46, null}
!63 = metadata !{i32 786689, metadata !46, metadata !"output_offset", metadata !47, i32 50331654, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 6, i32 19, metadata !46, null}
!65 = metadata !{i32 786689, metadata !46, metadata !"input_offset", metadata !47, i32 33554437, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 5, i32 19, metadata !46, null}
!67 = metadata !{i32 786689, metadata !46, metadata !"mem", metadata !47, i32 16777220, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 4, i32 23, metadata !46, null}
!69 = metadata !{i32 12, i32 1, metadata !70, null}
!70 = metadata !{i32 786443, metadata !46, i32 11, i32 1, metadata !47, i32 0} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 13, i32 1, metadata !70, null}
!72 = metadata !{i32 14, i32 1, metadata !70, null}
!73 = metadata !{i32 15, i32 1, metadata !70, null}
!74 = metadata !{i32 16, i32 1, metadata !70, null}
!75 = metadata !{i32 17, i32 1, metadata !70, null}
!76 = metadata !{i32 18, i32 1, metadata !70, null}
!77 = metadata !{i32 19, i32 1, metadata !70, null}
!78 = metadata !{i32 21, i32 48, metadata !70, null}
!79 = metadata !{i32 786688, metadata !70, metadata !"num_weights", metadata !47, i32 21, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 786688, metadata !70, metadata !"num_biases", metadata !47, i32 22, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 22, i32 37, metadata !70, null}
!82 = metadata !{i32 31, i32 79, metadata !83, null}
!83 = metadata !{i32 786443, metadata !84, i32 28, i32 43, metadata !47, i32 4} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786443, metadata !85, i32 28, i32 5, metadata !47, i32 3} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !86, i32 25, i32 40, metadata !47, i32 2} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 786443, metadata !70, i32 25, i32 3, metadata !47, i32 1} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 51, i32 7, metadata !83, null}
!88 = metadata !{i32 54, i32 10, metadata !83, null}
!89 = metadata !{i32 36, i32 99, metadata !90, null}
!90 = metadata !{i32 786443, metadata !91, i32 34, i32 48, metadata !47, i32 6} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 786443, metadata !83, i32 34, i32 7, metadata !47, i32 5} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 25, i32 17, metadata !86, null}
!93 = metadata !{i32 28, i32 19, metadata !84, null}
!94 = metadata !{i32 34, i32 21, metadata !91, null}
!95 = metadata !{i32 34, i32 39, metadata !91, null}
!96 = metadata !{i32 34, i32 49, metadata !90, null}
!97 = metadata !{i32 35, i32 1, metadata !90, null}
!98 = metadata !{i32 786688, metadata !90, metadata !"input_element", metadata !47, i32 36, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 37, i32 9, metadata !90, null}
!100 = metadata !{i32 38, i32 84, metadata !101, null}
!101 = metadata !{i32 786443, metadata !90, i32 37, i32 35, metadata !47, i32 7} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 786688, metadata !101, metadata !"weight_element", metadata !47, i32 38, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 39, i32 13, metadata !101, null}
!104 = metadata !{i32 40, i32 18, metadata !105, null}
!105 = metadata !{i32 786443, metadata !101, i32 39, i32 40, metadata !47, i32 8} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 786688, metadata !83, metadata !"output_element", metadata !47, i32 31, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 41, i32 13, metadata !105, null}
!108 = metadata !{i32 48, i32 7, metadata !90, null}
!109 = metadata !{i32 786688, metadata !91, metadata !"i", metadata !47, i32 34, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 214, i32 7, metadata !111, metadata !122}
!111 = metadata !{i32 786443, metadata !112, i32 210, i32 5, metadata !121, i32 9} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 786478, i32 0, metadata !113, metadata !"max<float>", metadata !"max<float>", metadata !"_ZSt3maxIfERKT_S2_S2_", metadata !114, i32 342, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !119, null, metadata !54, i32 210} ; [ DW_TAG_subprogram ]
!113 = metadata !{i32 786489, null, metadata !"std", metadata !114, i32 39} ; [ DW_TAG_namespace ]
!114 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin\5C..\5Clib\5Cclang\5C3.1/../../../include/c++/4.5.2\5Cbits/algorithmfwd.h", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cclassic_cnn\5Chls_proj", null} ; [ DW_TAG_file_type ]
!115 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!116 = metadata !{metadata !117, metadata !117, metadata !117}
!117 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !118} ; [ DW_TAG_reference_type ]
!118 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_const_type ]
!119 = metadata !{metadata !120}
!120 = metadata !{i32 786479, null, metadata !"_Tp", metadata !51, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!121 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin\5C..\5Clib\5Cclang\5C3.1/../../../include/c++/4.5.2\5Cbits/stl_algobase.h", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cclassic_cnn\5Chls_proj", null} ; [ DW_TAG_file_type ]
!122 = metadata !{i32 52, i32 63, metadata !83, null}
!123 = metadata !{i32 28, i32 38, metadata !84, null}
!124 = metadata !{i32 786688, metadata !84, metadata !"o", metadata !47, i32 28, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!125 = metadata !{i32 25, i32 35, metadata !86, null}
!126 = metadata !{i32 57, i32 1, metadata !70, null}
