
L
data_Placeholder*
dtype0*)
shape :??????????????????
N
target_Placeholder*
dtype0*)
shape :??????????????????
>
learn_rate_/inputConst*
dtype0*
valueB
 *
?#<
T
learn_rate_PlaceholderWithDefaultlearn_rate_/input*
shape:*
dtype0
A
dropout_ratio_/inputConst*
valueB
 *   ?*
dtype0
Z
dropout_ratio_PlaceholderWithDefaultdropout_ratio_/input*
dtype0*
shape:
=
clip_norm_/inputConst*
dtype0*
valueB
 *   ?
R

clip_norm_PlaceholderWithDefaultclip_norm_/input*
shape:*
dtype0
A
input_linear_layer/ShapeShapedata_*
out_type0*
T0
T
&input_linear_layer/strided_slice/stackConst*
dtype0*
valueB: 
V
(input_linear_layer/strided_slice/stack_1Const*
dtype0*
valueB:
V
(input_linear_layer/strided_slice/stack_2Const*
valueB:*
dtype0
?
 input_linear_layer/strided_sliceStridedSliceinput_linear_layer/Shape&input_linear_layer/strided_slice/stack(input_linear_layer/strided_slice/stack_1(input_linear_layer/strided_slice/stack_2*
T0*
shrink_axis_mask*
new_axis_mask *
ellipsis_mask *

begin_mask *
end_mask *
Index0
V
(input_linear_layer/strided_slice_1/stackConst*
dtype0*
valueB:
X
*input_linear_layer/strided_slice_1/stack_1Const*
dtype0*
valueB:
X
*input_linear_layer/strided_slice_1/stack_2Const*
valueB:*
dtype0
?
"input_linear_layer/strided_slice_1StridedSliceinput_linear_layer/Shape(input_linear_layer/strided_slice_1/stack*input_linear_layer/strided_slice_1/stack_1*input_linear_layer/strided_slice_1/stack_2*
shrink_axis_mask*
T0*
end_mask *

begin_mask *
Index0*
ellipsis_mask *
new_axis_mask 
U
 input_linear_layer/Reshape/shapeConst*
dtype0*
valueB"????   
e
input_linear_layer/ReshapeReshapedata_ input_linear_layer/Reshape/shape*
Tshape0*
T0
?
,dense/kernel/Initializer/random_normal/shapeConst*
_class
loc:@dense/kernel*
valueB"      *
dtype0
y
+dense/kernel/Initializer/random_normal/meanConst*
_class
loc:@dense/kernel*
valueB
 *    *
dtype0
{
-dense/kernel/Initializer/random_normal/stddevConst*
_class
loc:@dense/kernel*
valueB
 *  ??*
dtype0
?
;dense/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal,dense/kernel/Initializer/random_normal/shape*
T0*

seed *
seed2 *
_class
loc:@dense/kernel*
dtype0
?
*dense/kernel/Initializer/random_normal/mulMul;dense/kernel/Initializer/random_normal/RandomStandardNormal-dense/kernel/Initializer/random_normal/stddev*
T0*
_class
loc:@dense/kernel
?
&dense/kernel/Initializer/random_normalAdd*dense/kernel/Initializer/random_normal/mul+dense/kernel/Initializer/random_normal/mean*
_class
loc:@dense/kernel*
T0
?
dense/kernel
VariableV2*
dtype0*
	container *
shared_name *
shape
:*
_class
loc:@dense/kernel
?
dense/kernel/AssignAssigndense/kernel&dense/kernel/Initializer/random_normal*
_class
loc:@dense/kernel*
validate_shape(*
T0*
use_locking(
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
l
dense/bias/Initializer/zerosConst*
dtype0*
valueB*    *
_class
loc:@dense/bias
y

dense/bias
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_class
loc:@dense/bias
?
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
validate_shape(*
T0*
use_locking(*
_class
loc:@dense/bias
O
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias
?
input_linear_layer/dense/MatMulMatMulinput_linear_layer/Reshapedense/kernel/read*
transpose_a( *
transpose_b( *
T0
}
 input_linear_layer/dense/BiasAddBiasAddinput_linear_layer/dense/MatMuldense/bias/read*
data_formatNHWC*
T0
U
(input_linear_layer/dense/LeakyRelu/alphaConst*
valueB
 *??L>*
dtype0
?
&input_linear_layer/dense/LeakyRelu/mulMul(input_linear_layer/dense/LeakyRelu/alpha input_linear_layer/dense/BiasAdd*
T0
?
*input_linear_layer/dense/LeakyRelu/MaximumMaximum&input_linear_layer/dense/LeakyRelu/mul input_linear_layer/dense/BiasAdd*
T0
N
$input_linear_layer/Reshape_1/shape/2Const*
dtype0*
value	B :
?
"input_linear_layer/Reshape_1/shapePack input_linear_layer/strided_slice"input_linear_layer/strided_slice_1$input_linear_layer/Reshape_1/shape/2*
T0*

axis *
N
?
input_linear_layer/Reshape_1Reshape*input_linear_layer/dense/LeakyRelu/Maximum"input_linear_layer/Reshape_1/shape*
Tshape0*
T0
W
*stacked_lstm_cell/DropoutWrapperInit/ConstConst*
dtype0*
valueB
 *  ??
Y
,stacked_lstm_cell/DropoutWrapperInit/Const_1Const*
valueB
 *  ??*
dtype0
Y
,stacked_lstm_cell/DropoutWrapperInit_1/ConstConst*
valueB
 *  ??*
dtype0
[
.stacked_lstm_cell/DropoutWrapperInit_1/Const_1Const*
dtype0*
valueB
 *  ??
D
stacked_lstm_cell/rnn/RankConst*
value	B :*
dtype0
K
!stacked_lstm_cell/rnn/range/startConst*
value	B :*
dtype0
K
!stacked_lstm_cell/rnn/range/deltaConst*
value	B :*
dtype0
?
stacked_lstm_cell/rnn/rangeRange!stacked_lstm_cell/rnn/range/startstacked_lstm_cell/rnn/Rank!stacked_lstm_cell/rnn/range/delta*

Tidx0
Z
%stacked_lstm_cell/rnn/concat/values_0Const*
dtype0*
valueB"       
K
!stacked_lstm_cell/rnn/concat/axisConst*
value	B : *
dtype0
?
stacked_lstm_cell/rnn/concatConcatV2%stacked_lstm_cell/rnn/concat/values_0stacked_lstm_cell/rnn/range!stacked_lstm_cell/rnn/concat/axis*
T0*

Tidx0*
N
~
stacked_lstm_cell/rnn/transpose	Transposeinput_linear_layer/Reshape_1stacked_lstm_cell/rnn/concat*
T0*
Tperm0
^
stacked_lstm_cell/rnn/ShapeShapestacked_lstm_cell/rnn/transpose*
T0*
out_type0
W
)stacked_lstm_cell/rnn/strided_slice/stackConst*
dtype0*
valueB:
Y
+stacked_lstm_cell/rnn/strided_slice/stack_1Const*
dtype0*
valueB:
Y
+stacked_lstm_cell/rnn/strided_slice/stack_2Const*
valueB:*
dtype0
?
#stacked_lstm_cell/rnn/strided_sliceStridedSlicestacked_lstm_cell/rnn/Shape)stacked_lstm_cell/rnn/strided_slice/stack+stacked_lstm_cell/rnn/strided_slice/stack_1+stacked_lstm_cell/rnn/strided_slice/stack_2*
shrink_axis_mask*
end_mask *
T0*
ellipsis_mask *
new_axis_mask *

begin_mask *
Index0
?
dstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0
?
`stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims
ExpandDims#stacked_lstm_cell/rnn/strided_slicedstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims/dim*

Tdim0*
T0
?
[stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ConstConst*
dtype0*
valueB:
?
astacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat/axisConst*
dtype0*
value	B : 
?
\stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concatConcatV2`stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims[stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/Constastacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat/axis*
T0*

Tidx0*
N
?
astacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros/ConstConst*
dtype0*
valueB
 *    
?
[stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zerosFill\stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concatastacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros/Const*
T0
?
fstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0
?
bstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1
ExpandDims#stacked_lstm_cell/rnn/strided_slicefstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1/dim*

Tdim0*
T0
?
]stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/Const_1Const*
dtype0*
valueB:
?
fstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2/dimConst*
value	B : *
dtype0
?
bstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2
ExpandDims#stacked_lstm_cell/rnn/strided_slicefstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2/dim*
T0*

Tdim0
?
]stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/Const_2Const*
valueB:*
dtype0
?
cstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat_1/axisConst*
dtype0*
value	B : 
?
^stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat_1ConcatV2bstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2]stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/Const_2cstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat_1/axis*

Tidx0*
N*
T0
?
cstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1/ConstConst*
dtype0*
valueB
 *    
?
]stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1Fill^stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat_1cstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1/Const*
T0
?
fstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3/dimConst*
dtype0*
value	B : 
?
bstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3
ExpandDims#stacked_lstm_cell/rnn/strided_slicefstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3/dim*
T0*

Tdim0
?
]stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/Const_3Const*
valueB:*
dtype0
?
fstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims/dimConst*
dtype0*
value	B : 
?
bstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims
ExpandDims#stacked_lstm_cell/rnn/strided_slicefstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims/dim*

Tdim0*
T0
?
]stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ConstConst*
valueB:*
dtype0
?
cstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat/axisConst*
dtype0*
value	B : 
?
^stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concatConcatV2bstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims]stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/Constcstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat/axis*
T0*

Tidx0*
N
?
cstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros/ConstConst*
dtype0*
valueB
 *    
?
]stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zerosFill^stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concatcstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros/Const*
T0
?
hstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_1/dimConst*
dtype0*
value	B : 
?
dstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_1
ExpandDims#stacked_lstm_cell/rnn/strided_slicehstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_1/dim*

Tdim0*
T0
?
_stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/Const_1Const*
valueB:*
dtype0
?
hstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_2/dimConst*
dtype0*
value	B : 
?
dstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_2
ExpandDims#stacked_lstm_cell/rnn/strided_slicehstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_2/dim*

Tdim0*
T0
?
_stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/Const_2Const*
dtype0*
valueB:
?
estacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0
?
`stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat_1ConcatV2dstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_2_stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/Const_2estacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat_1/axis*

Tidx0*
T0*
N
?
estacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0
?
_stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1Fill`stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat_1estacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1/Const*
T0
?
hstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_3/dimConst*
dtype0*
value	B : 
?
dstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_3
ExpandDims#stacked_lstm_cell/rnn/strided_slicehstacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_3/dim*
T0*

Tdim0
?
_stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/Const_3Const*
dtype0*
valueB:
`
stacked_lstm_cell/rnn/Shape_1Shapestacked_lstm_cell/rnn/transpose*
T0*
out_type0
Y
+stacked_lstm_cell/rnn/strided_slice_1/stackConst*
dtype0*
valueB: 
[
-stacked_lstm_cell/rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0
[
-stacked_lstm_cell/rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0
?
%stacked_lstm_cell/rnn/strided_slice_1StridedSlicestacked_lstm_cell/rnn/Shape_1+stacked_lstm_cell/rnn/strided_slice_1/stack-stacked_lstm_cell/rnn/strided_slice_1/stack_1-stacked_lstm_cell/rnn/strided_slice_1/stack_2*

begin_mask *
shrink_axis_mask*
T0*
Index0*
new_axis_mask *
ellipsis_mask *
end_mask 
`
stacked_lstm_cell/rnn/Shape_2Shapestacked_lstm_cell/rnn/transpose*
out_type0*
T0
Y
+stacked_lstm_cell/rnn/strided_slice_2/stackConst*
valueB:*
dtype0
[
-stacked_lstm_cell/rnn/strided_slice_2/stack_1Const*
dtype0*
valueB:
[
-stacked_lstm_cell/rnn/strided_slice_2/stack_2Const*
dtype0*
valueB:
?
%stacked_lstm_cell/rnn/strided_slice_2StridedSlicestacked_lstm_cell/rnn/Shape_2+stacked_lstm_cell/rnn/strided_slice_2/stack-stacked_lstm_cell/rnn/strided_slice_2/stack_1-stacked_lstm_cell/rnn/strided_slice_2/stack_2*
new_axis_mask *
T0*
end_mask *
Index0*

begin_mask *
ellipsis_mask *
shrink_axis_mask
N
$stacked_lstm_cell/rnn/ExpandDims/dimConst*
value	B : *
dtype0
?
 stacked_lstm_cell/rnn/ExpandDims
ExpandDims%stacked_lstm_cell/rnn/strided_slice_2$stacked_lstm_cell/rnn/ExpandDims/dim*

Tdim0*
T0
I
stacked_lstm_cell/rnn/ConstConst*
dtype0*
valueB:
M
#stacked_lstm_cell/rnn/concat_1/axisConst*
dtype0*
value	B : 
?
stacked_lstm_cell/rnn/concat_1ConcatV2 stacked_lstm_cell/rnn/ExpandDimsstacked_lstm_cell/rnn/Const#stacked_lstm_cell/rnn/concat_1/axis*

Tidx0*
T0*
N
N
!stacked_lstm_cell/rnn/zeros/ConstConst*
dtype0*
valueB
 *    
o
stacked_lstm_cell/rnn/zerosFillstacked_lstm_cell/rnn/concat_1!stacked_lstm_cell/rnn/zeros/Const*
T0
D
stacked_lstm_cell/rnn/timeConst*
dtype0*
value	B : 
?
!stacked_lstm_cell/rnn/TensorArrayTensorArrayV3%stacked_lstm_cell/rnn/strided_slice_1*
dtype0*
dynamic_size( *
identical_element_shapes(*A
tensor_array_name,*stacked_lstm_cell/rnn/dynamic_rnn/output_0*$
element_shape:?????????*
clear_after_read(
?
#stacked_lstm_cell/rnn/TensorArray_1TensorArrayV3%stacked_lstm_cell/rnn/strided_slice_1*@
tensor_array_name+)stacked_lstm_cell/rnn/dynamic_rnn/input_0*
identical_element_shapes(*
dynamic_size( *
clear_after_read(*
dtype0*$
element_shape:?????????
q
.stacked_lstm_cell/rnn/TensorArrayUnstack/ShapeShapestacked_lstm_cell/rnn/transpose*
T0*
out_type0
j
<stacked_lstm_cell/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0
l
>stacked_lstm_cell/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
dtype0*
valueB:
l
>stacked_lstm_cell/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0
?
6stacked_lstm_cell/rnn/TensorArrayUnstack/strided_sliceStridedSlice.stacked_lstm_cell/rnn/TensorArrayUnstack/Shape<stacked_lstm_cell/rnn/TensorArrayUnstack/strided_slice/stack>stacked_lstm_cell/rnn/TensorArrayUnstack/strided_slice/stack_1>stacked_lstm_cell/rnn/TensorArrayUnstack/strided_slice/stack_2*
shrink_axis_mask*
Index0*
new_axis_mask *

begin_mask *
ellipsis_mask *
T0*
end_mask 
^
4stacked_lstm_cell/rnn/TensorArrayUnstack/range/startConst*
dtype0*
value	B : 
^
4stacked_lstm_cell/rnn/TensorArrayUnstack/range/deltaConst*
dtype0*
value	B :
?
.stacked_lstm_cell/rnn/TensorArrayUnstack/rangeRange4stacked_lstm_cell/rnn/TensorArrayUnstack/range/start6stacked_lstm_cell/rnn/TensorArrayUnstack/strided_slice4stacked_lstm_cell/rnn/TensorArrayUnstack/range/delta*

Tidx0
?
Pstacked_lstm_cell/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3#stacked_lstm_cell/rnn/TensorArray_1.stacked_lstm_cell/rnn/TensorArrayUnstack/rangestacked_lstm_cell/rnn/transpose%stacked_lstm_cell/rnn/TensorArray_1:1*
T0*2
_class(
&$loc:@stacked_lstm_cell/rnn/transpose
W
-stacked_lstm_cell/rnn/while/iteration_counterConst*
dtype0*
value	B : 
?
!stacked_lstm_cell/rnn/while/EnterEnter-stacked_lstm_cell/rnn/while/iteration_counter*
T0*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
is_constant( 
?
#stacked_lstm_cell/rnn/while/Enter_1Enterstacked_lstm_cell/rnn/time*
T0*
is_constant( *
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context
?
#stacked_lstm_cell/rnn/while/Enter_2Enter#stacked_lstm_cell/rnn/TensorArray:1*
parallel_iterations *
T0*
is_constant( *9

frame_name+)stacked_lstm_cell/rnn/while/while_context
?
#stacked_lstm_cell/rnn/while/Enter_3Enter[stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros*
T0*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
is_constant( *
parallel_iterations 
?
#stacked_lstm_cell/rnn/while/Enter_4Enter]stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1*
is_constant( *
parallel_iterations *
T0*9

frame_name+)stacked_lstm_cell/rnn/while/while_context
?
#stacked_lstm_cell/rnn/while/Enter_5Enter]stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
is_constant( *
T0
?
#stacked_lstm_cell/rnn/while/Enter_6Enter_stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1*
parallel_iterations *
is_constant( *9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0
?
!stacked_lstm_cell/rnn/while/MergeMerge!stacked_lstm_cell/rnn/while/Enter)stacked_lstm_cell/rnn/while/NextIteration*
T0*
N
?
#stacked_lstm_cell/rnn/while/Merge_1Merge#stacked_lstm_cell/rnn/while/Enter_1+stacked_lstm_cell/rnn/while/NextIteration_1*
N*
T0
?
#stacked_lstm_cell/rnn/while/Merge_2Merge#stacked_lstm_cell/rnn/while/Enter_2+stacked_lstm_cell/rnn/while/NextIteration_2*
N*
T0
?
#stacked_lstm_cell/rnn/while/Merge_3Merge#stacked_lstm_cell/rnn/while/Enter_3+stacked_lstm_cell/rnn/while/NextIteration_3*
N*
T0
?
#stacked_lstm_cell/rnn/while/Merge_4Merge#stacked_lstm_cell/rnn/while/Enter_4+stacked_lstm_cell/rnn/while/NextIteration_4*
T0*
N
?
#stacked_lstm_cell/rnn/while/Merge_5Merge#stacked_lstm_cell/rnn/while/Enter_5+stacked_lstm_cell/rnn/while/NextIteration_5*
N*
T0
?
#stacked_lstm_cell/rnn/while/Merge_6Merge#stacked_lstm_cell/rnn/while/Enter_6+stacked_lstm_cell/rnn/while/NextIteration_6*
N*
T0
|
 stacked_lstm_cell/rnn/while/LessLess!stacked_lstm_cell/rnn/while/Merge&stacked_lstm_cell/rnn/while/Less/Enter*
T0
?
&stacked_lstm_cell/rnn/while/Less/EnterEnter%stacked_lstm_cell/rnn/strided_slice_1*
parallel_iterations *
is_constant(*
T0*9

frame_name+)stacked_lstm_cell/rnn/while/while_context
?
"stacked_lstm_cell/rnn/while/Less_1Less#stacked_lstm_cell/rnn/while/Merge_1&stacked_lstm_cell/rnn/while/Less/Enter*
T0
z
&stacked_lstm_cell/rnn/while/LogicalAnd
LogicalAnd stacked_lstm_cell/rnn/while/Less"stacked_lstm_cell/rnn/while/Less_1
X
$stacked_lstm_cell/rnn/while/LoopCondLoopCond&stacked_lstm_cell/rnn/while/LogicalAnd
?
"stacked_lstm_cell/rnn/while/SwitchSwitch!stacked_lstm_cell/rnn/while/Merge$stacked_lstm_cell/rnn/while/LoopCond*
T0*4
_class*
(&loc:@stacked_lstm_cell/rnn/while/Merge
?
$stacked_lstm_cell/rnn/while/Switch_1Switch#stacked_lstm_cell/rnn/while/Merge_1$stacked_lstm_cell/rnn/while/LoopCond*
T0*6
_class,
*(loc:@stacked_lstm_cell/rnn/while/Merge_1
?
$stacked_lstm_cell/rnn/while/Switch_2Switch#stacked_lstm_cell/rnn/while/Merge_2$stacked_lstm_cell/rnn/while/LoopCond*
T0*6
_class,
*(loc:@stacked_lstm_cell/rnn/while/Merge_2
?
$stacked_lstm_cell/rnn/while/Switch_3Switch#stacked_lstm_cell/rnn/while/Merge_3$stacked_lstm_cell/rnn/while/LoopCond*
T0*6
_class,
*(loc:@stacked_lstm_cell/rnn/while/Merge_3
?
$stacked_lstm_cell/rnn/while/Switch_4Switch#stacked_lstm_cell/rnn/while/Merge_4$stacked_lstm_cell/rnn/while/LoopCond*6
_class,
*(loc:@stacked_lstm_cell/rnn/while/Merge_4*
T0
?
$stacked_lstm_cell/rnn/while/Switch_5Switch#stacked_lstm_cell/rnn/while/Merge_5$stacked_lstm_cell/rnn/while/LoopCond*6
_class,
*(loc:@stacked_lstm_cell/rnn/while/Merge_5*
T0
?
$stacked_lstm_cell/rnn/while/Switch_6Switch#stacked_lstm_cell/rnn/while/Merge_6$stacked_lstm_cell/rnn/while/LoopCond*
T0*6
_class,
*(loc:@stacked_lstm_cell/rnn/while/Merge_6
_
$stacked_lstm_cell/rnn/while/IdentityIdentity$stacked_lstm_cell/rnn/while/Switch:1*
T0
c
&stacked_lstm_cell/rnn/while/Identity_1Identity&stacked_lstm_cell/rnn/while/Switch_1:1*
T0
c
&stacked_lstm_cell/rnn/while/Identity_2Identity&stacked_lstm_cell/rnn/while/Switch_2:1*
T0
c
&stacked_lstm_cell/rnn/while/Identity_3Identity&stacked_lstm_cell/rnn/while/Switch_3:1*
T0
c
&stacked_lstm_cell/rnn/while/Identity_4Identity&stacked_lstm_cell/rnn/while/Switch_4:1*
T0
c
&stacked_lstm_cell/rnn/while/Identity_5Identity&stacked_lstm_cell/rnn/while/Switch_5:1*
T0
c
&stacked_lstm_cell/rnn/while/Identity_6Identity&stacked_lstm_cell/rnn/while/Switch_6:1*
T0
r
!stacked_lstm_cell/rnn/while/add/yConst%^stacked_lstm_cell/rnn/while/Identity*
value	B :*
dtype0
x
stacked_lstm_cell/rnn/while/addAdd$stacked_lstm_cell/rnn/while/Identity!stacked_lstm_cell/rnn/while/add/y*
T0
?
-stacked_lstm_cell/rnn/while/TensorArrayReadV3TensorArrayReadV33stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter&stacked_lstm_cell/rnn/while/Identity_15stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter_1*
dtype0
?
3stacked_lstm_cell/rnn/while/TensorArrayReadV3/EnterEnter#stacked_lstm_cell/rnn/TensorArray_1*
is_constant(*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0*
parallel_iterations 
?
5stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter_1EnterPstacked_lstm_cell/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
T0*
is_constant(
?
Krnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/shapeConst*
dtype0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
valueB"(   P   
?
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/minConst*
valueB
 *.?d?*
dtype0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
?
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/maxConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
valueB
 *.?d>*
dtype0
?
Srnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformKrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/shape*
T0*

seed *
seed2 *
dtype0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
?
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/subSubIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/maxIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
?
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/mulMulSrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/RandomUniformIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/sub*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
?
Ernn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniformAddIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/mulIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/min*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
?
*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
VariableV2*
dtype0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
shared_name *
shape
:(P*
	container 
?
1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AssignAssign*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelErnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform*
T0*
validate_shape(*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
use_locking(
p
/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/readIdentity*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
?
:rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/zerosConst*
dtype0*
valueBP*    *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias
?
(rnn/multi_rnn_cell/cell_0/lstm_cell/bias
VariableV2*
shared_name *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
	container *
shape:P*
dtype0
?
/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AssignAssign(rnn/multi_rnn_cell/cell_0/lstm_cell/bias:rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/zeros*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0*
validate_shape(*
use_locking(
l
-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/readIdentity(rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0
?
Kstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axisConst%^stacked_lstm_cell/rnn/while/Identity*
dtype0*
value	B :
?
Fstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concatConcatV2-stacked_lstm_cell/rnn/while/TensorArrayReadV3&stacked_lstm_cell/rnn/while/Identity_4Kstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axis*
N*

Tidx0*
T0
?
Fstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMulMatMulFstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concatLstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter*
transpose_a( *
T0*
transpose_b( 
?
Lstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/EnterEnter/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read*
is_constant(*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0*
parallel_iterations 
?
Gstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAddBiasAddFstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMulMstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC
?
Mstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/EnterEnter-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/read*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
is_constant(*
T0
?
Estacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/ConstConst%^stacked_lstm_cell/rnn/while/Identity*
dtype0*
value	B :
?
Ostacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dimConst%^stacked_lstm_cell/rnn/while/Identity*
value	B :*
dtype0
?
Estacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/splitSplitOstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dimGstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd*
	num_split*
T0
?
Estacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add/yConst%^stacked_lstm_cell/rnn/while/Identity*
valueB
 *  ??*
dtype0
?
Cstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/addAddGstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split:2Estacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add/y*
T0
?
Gstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/SigmoidSigmoidCstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add*
T0
?
Cstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mulMulGstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid&stacked_lstm_cell/rnn/while/Identity_3*
T0
?
Istacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1SigmoidEstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split*
T0
?
Dstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/TanhTanhGstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split:1*
T0
?
Estacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1MulIstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1Dstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh*
T0
?
Estacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1AddCstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mulEstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
T0
?
Istacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2SigmoidGstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split:3*
T0
?
Fstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1TanhEstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
T0
?
Estacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2MulIstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2Fstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1*
T0
?
Cstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/ShapeShapeEstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
out_type0*
T0
?
Pstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/minConst%^stacked_lstm_cell/rnn/while/Identity*
valueB
 *    *
dtype0
?
Pstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/maxConst%^stacked_lstm_cell/rnn/while/Identity*
valueB
 *  ??*
dtype0
?
Zstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniformRandomUniformCstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Shape*
seed2 *
dtype0*

seed *
T0
?
Pstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/subSubPstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/maxPstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/min*
T0
?
Pstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/mulMulZstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniformPstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/sub*
T0
?
Lstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniformAddPstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/mulPstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/min*
T0
?
Astacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/addAddGstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/EnterLstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform*
T0
?
Gstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/EnterEnterdropout_ratio_*
T0*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
is_constant(
?
Cstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/FloorFloorAstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add*
T0
?
Astacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/divRealDivEstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2Gstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter*
T0
?
Astacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mulMulAstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/divCstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor*
T0
?
Krnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/shapeConst*
valueB"(   P   *
dtype0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
?
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/minConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
valueB
 *.?d?*
dtype0
?
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *.?d>*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
dtype0
?
Srnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformKrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/shape*
T0*
dtype0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
seed2 *

seed 
?
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/subSubIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/maxIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/min*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
T0
?
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/mulMulSrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/RandomUniformIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/sub*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
?
Ernn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniformAddIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/mulIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
?
*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
VariableV2*
dtype0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
	container *
shape
:(P*
shared_name 
?
1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/AssignAssign*rnn/multi_rnn_cell/cell_1/lstm_cell/kernelErnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform*
validate_shape(*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
T0*
use_locking(
p
/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/readIdentity*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
T0
?
:rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Initializer/zerosConst*
dtype0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
valueBP*    
?
(rnn/multi_rnn_cell/cell_1/lstm_cell/bias
VariableV2*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
shape:P*
	container *
dtype0*
shared_name 
?
/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/AssignAssign(rnn/multi_rnn_cell/cell_1/lstm_cell/bias:rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Initializer/zeros*
use_locking(*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
validate_shape(*
T0
l
-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/readIdentity(rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
T0
?
Kstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat/axisConst%^stacked_lstm_cell/rnn/while/Identity*
value	B :*
dtype0
?
Fstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concatConcatV2Astacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul&stacked_lstm_cell/rnn/while/Identity_6Kstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat/axis*
N*
T0*

Tidx0
?
Fstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMulMatMulFstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concatLstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter*
transpose_b( *
T0*
transpose_a( 
?
Lstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/EnterEnter/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/read*
T0*
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
is_constant(
?
Gstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAddBiasAddFstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMulMstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC
?
Mstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/EnterEnter-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/read*
is_constant(*
parallel_iterations *
T0*9

frame_name+)stacked_lstm_cell/rnn/while/while_context
?
Estacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/ConstConst%^stacked_lstm_cell/rnn/while/Identity*
dtype0*
value	B :
?
Ostacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split/split_dimConst%^stacked_lstm_cell/rnn/while/Identity*
value	B :*
dtype0
?
Estacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/splitSplitOstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split/split_dimGstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd*
T0*
	num_split
?
Estacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add/yConst%^stacked_lstm_cell/rnn/while/Identity*
dtype0*
valueB
 *  ??
?
Cstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/addAddGstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split:2Estacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add/y*
T0
?
Gstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/SigmoidSigmoidCstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add*
T0
?
Cstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mulMulGstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid&stacked_lstm_cell/rnn/while/Identity_5*
T0
?
Istacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1SigmoidEstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split*
T0
?
Dstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/TanhTanhGstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split:1*
T0
?
Estacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1MulIstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1Dstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh*
T0
?
Estacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1AddCstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mulEstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
T0
?
Istacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2SigmoidGstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split:3*
T0
?
Fstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1TanhEstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
T0
?
Estacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2MulIstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2Fstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1*
T0
?
Cstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/ShapeShapeEstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
out_type0*
T0
?
Pstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/minConst%^stacked_lstm_cell/rnn/while/Identity*
dtype0*
valueB
 *    
?
Pstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/maxConst%^stacked_lstm_cell/rnn/while/Identity*
valueB
 *  ??*
dtype0
?
Zstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniformRandomUniformCstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Shape*
dtype0*
T0*
seed2 *

seed 
?
Pstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/subSubPstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/maxPstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/min*
T0
?
Pstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/mulMulZstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniformPstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/sub*
T0
?
Lstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniformAddPstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/mulPstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/min*
T0
?
Astacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/addAddGstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/EnterLstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform*
T0
?
Cstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/FloorFloorAstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/add*
T0
?
Astacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/divRealDivEstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2Gstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter*
T0
?
Astacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mulMulAstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/divCstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Floor*
T0
?
?stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Estacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter&stacked_lstm_cell/rnn/while/Identity_1Astacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul&stacked_lstm_cell/rnn/while/Identity_2*T
_classJ
HFloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
T0
?
Estacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter!stacked_lstm_cell/rnn/TensorArray*
T0*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *T
_classJ
HFloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
is_constant(
t
#stacked_lstm_cell/rnn/while/add_1/yConst%^stacked_lstm_cell/rnn/while/Identity*
value	B :*
dtype0
~
!stacked_lstm_cell/rnn/while/add_1Add&stacked_lstm_cell/rnn/while/Identity_1#stacked_lstm_cell/rnn/while/add_1/y*
T0
d
)stacked_lstm_cell/rnn/while/NextIterationNextIterationstacked_lstm_cell/rnn/while/add*
T0
h
+stacked_lstm_cell/rnn/while/NextIteration_1NextIteration!stacked_lstm_cell/rnn/while/add_1*
T0
?
+stacked_lstm_cell/rnn/while/NextIteration_2NextIteration?stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0
?
+stacked_lstm_cell/rnn/while/NextIteration_3NextIterationEstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
T0
?
+stacked_lstm_cell/rnn/while/NextIteration_4NextIterationEstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
T0
?
+stacked_lstm_cell/rnn/while/NextIteration_5NextIterationEstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
T0
?
+stacked_lstm_cell/rnn/while/NextIteration_6NextIterationEstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
T0
U
 stacked_lstm_cell/rnn/while/ExitExit"stacked_lstm_cell/rnn/while/Switch*
T0
Y
"stacked_lstm_cell/rnn/while/Exit_1Exit$stacked_lstm_cell/rnn/while/Switch_1*
T0
Y
"stacked_lstm_cell/rnn/while/Exit_2Exit$stacked_lstm_cell/rnn/while/Switch_2*
T0
Y
"stacked_lstm_cell/rnn/while/Exit_3Exit$stacked_lstm_cell/rnn/while/Switch_3*
T0
Y
"stacked_lstm_cell/rnn/while/Exit_4Exit$stacked_lstm_cell/rnn/while/Switch_4*
T0
Y
"stacked_lstm_cell/rnn/while/Exit_5Exit$stacked_lstm_cell/rnn/while/Switch_5*
T0
Y
"stacked_lstm_cell/rnn/while/Exit_6Exit$stacked_lstm_cell/rnn/while/Switch_6*
T0
?
8stacked_lstm_cell/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3!stacked_lstm_cell/rnn/TensorArray"stacked_lstm_cell/rnn/while/Exit_2*4
_class*
(&loc:@stacked_lstm_cell/rnn/TensorArray
?
2stacked_lstm_cell/rnn/TensorArrayStack/range/startConst*
value	B : *
dtype0*4
_class*
(&loc:@stacked_lstm_cell/rnn/TensorArray
?
2stacked_lstm_cell/rnn/TensorArrayStack/range/deltaConst*
value	B :*4
_class*
(&loc:@stacked_lstm_cell/rnn/TensorArray*
dtype0
?
,stacked_lstm_cell/rnn/TensorArrayStack/rangeRange2stacked_lstm_cell/rnn/TensorArrayStack/range/start8stacked_lstm_cell/rnn/TensorArrayStack/TensorArraySizeV32stacked_lstm_cell/rnn/TensorArrayStack/range/delta*4
_class*
(&loc:@stacked_lstm_cell/rnn/TensorArray*

Tidx0
?
:stacked_lstm_cell/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3!stacked_lstm_cell/rnn/TensorArray,stacked_lstm_cell/rnn/TensorArrayStack/range"stacked_lstm_cell/rnn/while/Exit_2*4
_class*
(&loc:@stacked_lstm_cell/rnn/TensorArray*$
element_shape:?????????*
dtype0
K
stacked_lstm_cell/rnn/Const_1Const*
dtype0*
valueB:
F
stacked_lstm_cell/rnn/Rank_1Const*
value	B :*
dtype0
M
#stacked_lstm_cell/rnn/range_1/startConst*
value	B :*
dtype0
M
#stacked_lstm_cell/rnn/range_1/deltaConst*
value	B :*
dtype0
?
stacked_lstm_cell/rnn/range_1Range#stacked_lstm_cell/rnn/range_1/startstacked_lstm_cell/rnn/Rank_1#stacked_lstm_cell/rnn/range_1/delta*

Tidx0
\
'stacked_lstm_cell/rnn/concat_2/values_0Const*
valueB"       *
dtype0
M
#stacked_lstm_cell/rnn/concat_2/axisConst*
value	B : *
dtype0
?
stacked_lstm_cell/rnn/concat_2ConcatV2'stacked_lstm_cell/rnn/concat_2/values_0stacked_lstm_cell/rnn/range_1#stacked_lstm_cell/rnn/concat_2/axis*
T0*

Tidx0*
N
?
!stacked_lstm_cell/rnn/transpose_1	Transpose:stacked_lstm_cell/rnn/TensorArrayStack/TensorArrayGatherV3stacked_lstm_cell/rnn/concat_2*
T0*
Tperm0
V
!output_linear_layer/Reshape/shapeConst*
valueB"????   *
dtype0
?
output_linear_layer/ReshapeReshape!stacked_lstm_cell/rnn/transpose_1!output_linear_layer/Reshape/shape*
Tshape0*
T0
?
.dense_1/kernel/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *!
_class
loc:@dense_1/kernel
}
-dense_1/kernel/Initializer/random_normal/meanConst*!
_class
loc:@dense_1/kernel*
dtype0*
valueB
 *    

/dense_1/kernel/Initializer/random_normal/stddevConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *  ??
?
=dense_1/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal.dense_1/kernel/Initializer/random_normal/shape*
dtype0*
seed2 *

seed *!
_class
loc:@dense_1/kernel*
T0
?
,dense_1/kernel/Initializer/random_normal/mulMul=dense_1/kernel/Initializer/random_normal/RandomStandardNormal/dense_1/kernel/Initializer/random_normal/stddev*
T0*!
_class
loc:@dense_1/kernel
?
(dense_1/kernel/Initializer/random_normalAdd,dense_1/kernel/Initializer/random_normal/mul-dense_1/kernel/Initializer/random_normal/mean*
T0*!
_class
loc:@dense_1/kernel
?
dense_1/kernel
VariableV2*
	container *
dtype0*
shape
:*
shared_name *!
_class
loc:@dense_1/kernel
?
dense_1/kernel/AssignAssigndense_1/kernel(dense_1/kernel/Initializer/random_normal*!
_class
loc:@dense_1/kernel*
use_locking(*
validate_shape(*
T0
[
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0
p
dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB*    *
dtype0
}
dense_1/bias
VariableV2*
	container *
shape:*
shared_name *
_class
loc:@dense_1/bias*
dtype0
?
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(
U
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias
?
 output_linear_layer/dense/MatMulMatMuloutput_linear_layer/Reshapedense_1/kernel/read*
T0*
transpose_b( *
transpose_a( 
?
!output_linear_layer/dense/BiasAddBiasAdd output_linear_layer/dense/MatMuldense_1/bias/read*
T0*
data_formatNHWC
V
)output_linear_layer/dense/LeakyRelu/alphaConst*
dtype0*
valueB
 *??L>
?
'output_linear_layer/dense/LeakyRelu/mulMul)output_linear_layer/dense/LeakyRelu/alpha!output_linear_layer/dense/BiasAdd*
T0
?
+output_linear_layer/dense/LeakyRelu/MaximumMaximum'output_linear_layer/dense/LeakyRelu/mul!output_linear_layer/dense/BiasAdd*
T0
@
pred_/shape/2Const*
valueB :
?????????*
dtype0
?
pred_/shapePack input_linear_layer/strided_slice"input_linear_layer/strided_slice_1pred_/shape/2*
N*

axis *
T0
a
pred_Reshape+output_linear_layer/dense/LeakyRelu/Maximumpred_/shape*
Tshape0*
T0
?
SquaredDifferenceSquaredDifferencetarget_pred_*
T0
>
ConstConst*!
valueB"          *
dtype0
O
lossOp_MeanSquaredDifferenceConst*
	keep_dims( *
T0*

Tidx0
8
gradients/ShapeConst*
valueB *
dtype0
@
gradients/grad_ys_0Const*
dtype0*
valueB
 *  ??
E
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0
;
gradients/f_countConst*
value	B : *
dtype0
?
gradients/f_count_1Entergradients/f_count*
T0*
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
is_constant( 
X
gradients/MergeMergegradients/f_count_1gradients/NextIteration*
N*
T0
Z
gradients/SwitchSwitchgradients/Merge$stacked_lstm_cell/rnn/while/LoopCond*
T0
`
gradients/Add/yConst%^stacked_lstm_cell/rnn/while/Identity*
value	B :*
dtype0
B
gradients/AddAddgradients/Switch:1gradients/Add/y*
T0
?-
gradients/NextIterationNextIterationgradients/Addm^gradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2s^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPushV2u^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1a^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPushV2c^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPushV2s^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPushV2u^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPushV2_1a^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/StackPushV2w^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2y^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1e^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul/StackPushV2g^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul_1/StackPushV2w^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2y^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1u^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2w^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1c^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul/StackPushV2e^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul_1/StackPushV2w^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2y^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1e^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul/StackPushV2g^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul_1/StackPushV2u^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2k^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPushV2i^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPushV2k^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPushV2_1s^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2u^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1a^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPushV2c^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPushV2s^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPushV2u^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPushV2_1a^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPushV2w^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2y^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1e^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul/StackPushV2g^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul_1/StackPushV2w^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2y^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1u^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2w^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1c^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul/StackPushV2e^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul_1/StackPushV2w^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2y^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1e^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul/StackPushV2g^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul_1/StackPushV2u^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2k^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPushV2i^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPushV2k^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPushV2_1*
T0
6
gradients/f_count_2Exitgradients/Switch*
T0
;
gradients/b_countConst*
value	B :*
dtype0
?
gradients/b_count_1Entergradients/f_count_2*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant( *
T0*
parallel_iterations 
\
gradients/Merge_1Mergegradients/b_count_1gradients/NextIteration_1*
T0*
N
`
gradients/GreaterEqualGreaterEqualgradients/Merge_1gradients/GreaterEqual/Enter*
T0
?
gradients/GreaterEqual/EnterEntergradients/b_count*
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0*
is_constant(
7
gradients/b_count_2LoopCondgradients/GreaterEqual
M
gradients/Switch_1Switchgradients/Merge_1gradients/b_count_2*
T0
Q
gradients/SubSubgradients/Switch_1:1gradients/GreaterEqual/Enter*
T0
?
gradients/NextIteration_1NextIterationgradients/Subh^gradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0
8
gradients/b_count_3Exitgradients/Switch_1*
T0
]
$gradients/lossOp__grad/Reshape/shapeConst*!
valueB"         *
dtype0
v
gradients/lossOp__grad/ReshapeReshapegradients/Fill$gradients/lossOp__grad/Reshape/shape*
T0*
Tshape0
Q
gradients/lossOp__grad/ShapeShapeSquaredDifference*
T0*
out_type0
|
gradients/lossOp__grad/TileTilegradients/lossOp__grad/Reshapegradients/lossOp__grad/Shape*

Tmultiples0*
T0
S
gradients/lossOp__grad/Shape_1ShapeSquaredDifference*
T0*
out_type0
G
gradients/lossOp__grad/Shape_2Const*
valueB *
dtype0
J
gradients/lossOp__grad/ConstConst*
valueB: *
dtype0
?
gradients/lossOp__grad/ProdProdgradients/lossOp__grad/Shape_1gradients/lossOp__grad/Const*
T0*

Tidx0*
	keep_dims( 
L
gradients/lossOp__grad/Const_1Const*
dtype0*
valueB: 
?
gradients/lossOp__grad/Prod_1Prodgradients/lossOp__grad/Shape_2gradients/lossOp__grad/Const_1*

Tidx0*
	keep_dims( *
T0
J
 gradients/lossOp__grad/Maximum/yConst*
dtype0*
value	B :
s
gradients/lossOp__grad/MaximumMaximumgradients/lossOp__grad/Prod_1 gradients/lossOp__grad/Maximum/y*
T0
q
gradients/lossOp__grad/floordivFloorDivgradients/lossOp__grad/Prodgradients/lossOp__grad/Maximum*
T0
\
gradients/lossOp__grad/CastCastgradients/lossOp__grad/floordiv*

SrcT0*

DstT0
l
gradients/lossOp__grad/truedivRealDivgradients/lossOp__grad/Tilegradients/lossOp__grad/Cast*
T0
Q
&gradients/SquaredDifference_grad/ShapeShapetarget_*
T0*
out_type0
Q
(gradients/SquaredDifference_grad/Shape_1Shapepred_*
out_type0*
T0
?
6gradients/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/SquaredDifference_grad/Shape(gradients/SquaredDifference_grad/Shape_1*
T0
u
'gradients/SquaredDifference_grad/scalarConst^gradients/lossOp__grad/truediv*
dtype0*
valueB
 *   @
}
$gradients/SquaredDifference_grad/mulMul'gradients/SquaredDifference_grad/scalargradients/lossOp__grad/truediv*
T0
e
$gradients/SquaredDifference_grad/subSubtarget_pred_^gradients/lossOp__grad/truediv*
T0
?
&gradients/SquaredDifference_grad/mul_1Mul$gradients/SquaredDifference_grad/mul$gradients/SquaredDifference_grad/sub*
T0
?
$gradients/SquaredDifference_grad/SumSum&gradients/SquaredDifference_grad/mul_16gradients/SquaredDifference_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
(gradients/SquaredDifference_grad/ReshapeReshape$gradients/SquaredDifference_grad/Sum&gradients/SquaredDifference_grad/Shape*
T0*
Tshape0
?
&gradients/SquaredDifference_grad/Sum_1Sum&gradients/SquaredDifference_grad/mul_18gradients/SquaredDifference_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
?
*gradients/SquaredDifference_grad/Reshape_1Reshape&gradients/SquaredDifference_grad/Sum_1(gradients/SquaredDifference_grad/Shape_1*
T0*
Tshape0
`
$gradients/SquaredDifference_grad/NegNeg*gradients/SquaredDifference_grad/Reshape_1*
T0
i
gradients/pred__grad/ShapeShape+output_linear_layer/dense/LeakyRelu/Maximum*
out_type0*
T0
?
gradients/pred__grad/ReshapeReshape$gradients/SquaredDifference_grad/Neggradients/pred__grad/Shape*
Tshape0*
T0
?
@gradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/ShapeShape'output_linear_layer/dense/LeakyRelu/mul*
T0*
out_type0
?
Bgradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/Shape_1Shape!output_linear_layer/dense/BiasAdd*
out_type0*
T0
?
Bgradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/Shape_2Shapegradients/pred__grad/Reshape*
out_type0*
T0
s
Fgradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
?
@gradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/zerosFillBgradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/Shape_2Fgradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/zeros/Const*
T0
?
Ggradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/GreaterEqualGreaterEqual'output_linear_layer/dense/LeakyRelu/mul!output_linear_layer/dense/BiasAdd*
T0
?
Pgradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgs@gradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/ShapeBgradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/Shape_1*
T0
?
Agradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/SelectSelectGgradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/GreaterEqualgradients/pred__grad/Reshape@gradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/zeros*
T0
?
Cgradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/Select_1SelectGgradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/GreaterEqual@gradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/zerosgradients/pred__grad/Reshape*
T0
?
>gradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/SumSumAgradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/SelectPgradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( 
?
Bgradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/ReshapeReshape>gradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/Sum@gradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/Shape*
T0*
Tshape0
?
@gradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/Sum_1SumCgradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/Select_1Rgradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
?
Dgradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/Reshape_1Reshape@gradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/Sum_1Bgradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/Shape_1*
Tshape0*
T0
e
<gradients/output_linear_layer/dense/LeakyRelu/mul_grad/ShapeConst*
dtype0*
valueB 
?
>gradients/output_linear_layer/dense/LeakyRelu/mul_grad/Shape_1Shape!output_linear_layer/dense/BiasAdd*
out_type0*
T0
?
Lgradients/output_linear_layer/dense/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs<gradients/output_linear_layer/dense/LeakyRelu/mul_grad/Shape>gradients/output_linear_layer/dense/LeakyRelu/mul_grad/Shape_1*
T0
?
:gradients/output_linear_layer/dense/LeakyRelu/mul_grad/mulMulBgradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/Reshape!output_linear_layer/dense/BiasAdd*
T0
?
:gradients/output_linear_layer/dense/LeakyRelu/mul_grad/SumSum:gradients/output_linear_layer/dense/LeakyRelu/mul_grad/mulLgradients/output_linear_layer/dense/LeakyRelu/mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
?
>gradients/output_linear_layer/dense/LeakyRelu/mul_grad/ReshapeReshape:gradients/output_linear_layer/dense/LeakyRelu/mul_grad/Sum<gradients/output_linear_layer/dense/LeakyRelu/mul_grad/Shape*
T0*
Tshape0
?
<gradients/output_linear_layer/dense/LeakyRelu/mul_grad/mul_1Mul)output_linear_layer/dense/LeakyRelu/alphaBgradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/Reshape*
T0
?
<gradients/output_linear_layer/dense/LeakyRelu/mul_grad/Sum_1Sum<gradients/output_linear_layer/dense/LeakyRelu/mul_grad/mul_1Ngradients/output_linear_layer/dense/LeakyRelu/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
?
@gradients/output_linear_layer/dense/LeakyRelu/mul_grad/Reshape_1Reshape<gradients/output_linear_layer/dense/LeakyRelu/mul_grad/Sum_1>gradients/output_linear_layer/dense/LeakyRelu/mul_grad/Shape_1*
Tshape0*
T0
?
gradients/AddNAddNDgradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/Reshape_1@gradients/output_linear_layer/dense/LeakyRelu/mul_grad/Reshape_1*W
_classM
KIloc:@gradients/output_linear_layer/dense/LeakyRelu/Maximum_grad/Reshape_1*
T0*
N
{
<gradients/output_linear_layer/dense/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN*
data_formatNHWC*
T0
?
6gradients/output_linear_layer/dense/MatMul_grad/MatMulMatMulgradients/AddNdense_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
?
8gradients/output_linear_layer/dense/MatMul_grad/MatMul_1MatMuloutput_linear_layer/Reshapegradients/AddN*
T0*
transpose_a(*
transpose_b( 
u
0gradients/output_linear_layer/Reshape_grad/ShapeShape!stacked_lstm_cell/rnn/transpose_1*
T0*
out_type0
?
2gradients/output_linear_layer/Reshape_grad/ReshapeReshape6gradients/output_linear_layer/dense/MatMul_grad/MatMul0gradients/output_linear_layer/Reshape_grad/Shape*
T0*
Tshape0
?
Bgradients/stacked_lstm_cell/rnn/transpose_1_grad/InvertPermutationInvertPermutationstacked_lstm_cell/rnn/concat_2*
T0
?
:gradients/stacked_lstm_cell/rnn/transpose_1_grad/transpose	Transpose2gradients/output_linear_layer/Reshape_grad/ReshapeBgradients/stacked_lstm_cell/rnn/transpose_1_grad/InvertPermutation*
Tperm0*
T0
?
kgradients/stacked_lstm_cell/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3!stacked_lstm_cell/rnn/TensorArray"stacked_lstm_cell/rnn/while/Exit_2*4
_class*
(&loc:@stacked_lstm_cell/rnn/TensorArray*
source	gradients
?
ggradients/stacked_lstm_cell/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentity"stacked_lstm_cell/rnn/while/Exit_2l^gradients/stacked_lstm_cell/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*4
_class*
(&loc:@stacked_lstm_cell/rnn/TensorArray
?
qgradients/stacked_lstm_cell/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3kgradients/stacked_lstm_cell/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3,stacked_lstm_cell/rnn/TensorArrayStack/range:gradients/stacked_lstm_cell/rnn/transpose_1_grad/transposeggradients/stacked_lstm_cell/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0
N
gradients/zeros_like	ZerosLike"stacked_lstm_cell/rnn/while/Exit_3*
T0
P
gradients/zeros_like_1	ZerosLike"stacked_lstm_cell/rnn/while/Exit_4*
T0
P
gradients/zeros_like_2	ZerosLike"stacked_lstm_cell/rnn/while/Exit_5*
T0
P
gradients/zeros_like_3	ZerosLike"stacked_lstm_cell/rnn/while/Exit_6*
T0
?
8gradients/stacked_lstm_cell/rnn/while/Exit_2_grad/b_exitEnterqgradients/stacked_lstm_cell/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
is_constant( *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
T0
?
8gradients/stacked_lstm_cell/rnn/while/Exit_3_grad/b_exitEntergradients/zeros_like*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
is_constant( *
T0
?
8gradients/stacked_lstm_cell/rnn/while/Exit_4_grad/b_exitEntergradients/zeros_like_1*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0*
parallel_iterations *
is_constant( 
?
8gradients/stacked_lstm_cell/rnn/while/Exit_5_grad/b_exitEntergradients/zeros_like_2*
T0*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant( *
parallel_iterations 
?
8gradients/stacked_lstm_cell/rnn/while/Exit_6_grad/b_exitEntergradients/zeros_like_3*
T0*
is_constant( *
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context
?
<gradients/stacked_lstm_cell/rnn/while/Switch_2_grad/b_switchMerge8gradients/stacked_lstm_cell/rnn/while/Exit_2_grad/b_exitCgradients/stacked_lstm_cell/rnn/while/Switch_2_grad_1/NextIteration*
N*
T0
?
<gradients/stacked_lstm_cell/rnn/while/Switch_3_grad/b_switchMerge8gradients/stacked_lstm_cell/rnn/while/Exit_3_grad/b_exitCgradients/stacked_lstm_cell/rnn/while/Switch_3_grad_1/NextIteration*
N*
T0
?
<gradients/stacked_lstm_cell/rnn/while/Switch_4_grad/b_switchMerge8gradients/stacked_lstm_cell/rnn/while/Exit_4_grad/b_exitCgradients/stacked_lstm_cell/rnn/while/Switch_4_grad_1/NextIteration*
T0*
N
?
<gradients/stacked_lstm_cell/rnn/while/Switch_5_grad/b_switchMerge8gradients/stacked_lstm_cell/rnn/while/Exit_5_grad/b_exitCgradients/stacked_lstm_cell/rnn/while/Switch_5_grad_1/NextIteration*
T0*
N
?
<gradients/stacked_lstm_cell/rnn/while/Switch_6_grad/b_switchMerge8gradients/stacked_lstm_cell/rnn/while/Exit_6_grad/b_exitCgradients/stacked_lstm_cell/rnn/while/Switch_6_grad_1/NextIteration*
T0*
N
?
9gradients/stacked_lstm_cell/rnn/while/Merge_2_grad/SwitchSwitch<gradients/stacked_lstm_cell/rnn/while/Switch_2_grad/b_switchgradients/b_count_2*O
_classE
CAloc:@gradients/stacked_lstm_cell/rnn/while/Switch_2_grad/b_switch*
T0
?
9gradients/stacked_lstm_cell/rnn/while/Merge_3_grad/SwitchSwitch<gradients/stacked_lstm_cell/rnn/while/Switch_3_grad/b_switchgradients/b_count_2*
T0*O
_classE
CAloc:@gradients/stacked_lstm_cell/rnn/while/Switch_3_grad/b_switch
?
9gradients/stacked_lstm_cell/rnn/while/Merge_4_grad/SwitchSwitch<gradients/stacked_lstm_cell/rnn/while/Switch_4_grad/b_switchgradients/b_count_2*
T0*O
_classE
CAloc:@gradients/stacked_lstm_cell/rnn/while/Switch_4_grad/b_switch
?
9gradients/stacked_lstm_cell/rnn/while/Merge_5_grad/SwitchSwitch<gradients/stacked_lstm_cell/rnn/while/Switch_5_grad/b_switchgradients/b_count_2*O
_classE
CAloc:@gradients/stacked_lstm_cell/rnn/while/Switch_5_grad/b_switch*
T0
?
9gradients/stacked_lstm_cell/rnn/while/Merge_6_grad/SwitchSwitch<gradients/stacked_lstm_cell/rnn/while/Switch_6_grad/b_switchgradients/b_count_2*O
_classE
CAloc:@gradients/stacked_lstm_cell/rnn/while/Switch_6_grad/b_switch*
T0
?
7gradients/stacked_lstm_cell/rnn/while/Enter_2_grad/ExitExit9gradients/stacked_lstm_cell/rnn/while/Merge_2_grad/Switch*
T0
?
7gradients/stacked_lstm_cell/rnn/while/Enter_3_grad/ExitExit9gradients/stacked_lstm_cell/rnn/while/Merge_3_grad/Switch*
T0
?
7gradients/stacked_lstm_cell/rnn/while/Enter_4_grad/ExitExit9gradients/stacked_lstm_cell/rnn/while/Merge_4_grad/Switch*
T0
?
7gradients/stacked_lstm_cell/rnn/while/Enter_5_grad/ExitExit9gradients/stacked_lstm_cell/rnn/while/Merge_5_grad/Switch*
T0
?
7gradients/stacked_lstm_cell/rnn/while/Enter_6_grad/ExitExit9gradients/stacked_lstm_cell/rnn/while/Merge_6_grad/Switch*
T0
?
pgradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3vgradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter;gradients/stacked_lstm_cell/rnn/while/Merge_2_grad/Switch:1*
source	gradients*T
_classJ
HFloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul
?
vgradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter!stacked_lstm_cell/rnn/TensorArray*T
_classJ
HFloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant(*
parallel_iterations *
T0
?
lgradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentity;gradients/stacked_lstm_cell/rnn/while/Merge_2_grad/Switch:1q^gradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*T
_classJ
HFloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
T0
?
`gradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3pgradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3kgradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2lgradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0
?
fgradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*

stack_name *9
_class/
-+loc:@stacked_lstm_cell/rnn/while/Identity_1*
	elem_type0
?
fgradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnterfgradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
parallel_iterations *
is_constant(*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0
?
lgradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2fgradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter&stacked_lstm_cell/rnn/while/Identity_1^gradients/Add*
T0*
swap_memory( 
?
kgradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2qgradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
qgradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnterfgradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0*
is_constant(*
parallel_iterations 
?-
ggradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggerl^gradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2r^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2t^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1`^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPopV2b^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPopV2r^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2t^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1`^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/StackPopV2v^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2x^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1d^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul/StackPopV2f^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul_1/StackPopV2v^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2x^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1t^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2v^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1b^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul/StackPopV2d^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul_1/StackPopV2v^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2x^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1d^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul/StackPopV2f^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul_1/StackPopV2t^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2j^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPopV2h^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2j^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2_1r^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2t^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1`^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPopV2b^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPopV2r^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2t^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1`^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPopV2v^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2x^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1d^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul/StackPopV2f^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul_1/StackPopV2v^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2x^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1t^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2v^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1b^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul/StackPopV2d^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul_1/StackPopV2v^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2x^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1d^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul/StackPopV2f^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul_1/StackPopV2t^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2j^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPopV2h^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2j^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2_1
?
pgradients/stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_grad/ConstConst*
dtype0*
valueB"       
?
ngradients/stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_grad/SumSum7gradients/stacked_lstm_cell/rnn/while/Enter_3_grad/Exitpgradients/stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_grad/Const*
T0*
	keep_dims( *

Tidx0
?
rgradients/stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1_grad/ConstConst*
dtype0*
valueB"       
?
pgradients/stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1_grad/SumSum7gradients/stacked_lstm_cell/rnn/while/Enter_4_grad/Exitrgradients/stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1_grad/Const*
T0*

Tidx0*
	keep_dims( 
?
rgradients/stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_grad/ConstConst*
dtype0*
valueB"       
?
pgradients/stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_grad/SumSum7gradients/stacked_lstm_cell/rnn/while/Enter_5_grad/Exitrgradients/stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_grad/Const*
T0*

Tidx0*
	keep_dims( 
?
tgradients/stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1_grad/ConstConst*
dtype0*
valueB"       
?
rgradients/stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1_grad/SumSum7gradients/stacked_lstm_cell/rnn/while/Enter_6_grad/Exittgradients/stacked_lstm_cell/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1_grad/Const*
	keep_dims( *
T0*

Tidx0
?
Vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/ShapeShapeAstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div*
out_type0*
T0
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape_1ShapeCstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Floor*
out_type0*
T0
?
fgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsqgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2sgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0
?
lgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*
	elem_type0*

stack_name *i
_class_
][loc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape
?
lgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/EnterEnterlgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc*
is_constant(*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0*
parallel_iterations 
?
rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2lgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/EnterVgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape^gradients/Add*
swap_memory( *
T0
?
qgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterlgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant(
?
ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc_1StackV2%stacked_lstm_cell/rnn/strided_slice_1*
	elem_type0*k
_classa
_]loc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape_1*

stack_name 
?
ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/Enter_1Enterngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
is_constant(*
T0*9

frame_name+)stacked_lstm_cell/rnn/while/while_context
?
tgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/Enter_1Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape_1^gradients/Add*
T0*
swap_memory( 
?
sgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2ygradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
?
ygradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0*
is_constant(*
parallel_iterations 
?
Tgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mulMul`gradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3_gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPopV2*
T0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*V
_classL
JHloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Floor*

stack_name *
	elem_type0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/EnterEnterZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/f_acc*
T0*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
is_constant(
?
`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPushV2StackPushV2Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/EnterCstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Floor^gradients/Add*
T0*
swap_memory( 
?
_gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPopV2
StackPopV2egradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
egradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPopV2/EnterEnterZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/f_acc*
T0*
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant(
?
Tgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/SumSumTgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mulfgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/ReshapeReshapeTgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Sumqgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
?
Vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1Mulagradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPopV2`gradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*
T0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*

stack_name *T
_classJ
HFloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div*
	elem_type0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/EnterEnter\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/f_acc*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
is_constant(*
T0
?
bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPushV2StackPushV2\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/EnterAstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div^gradients/Add*
T0*
swap_memory( 
?
agradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPopV2
StackPopV2ggradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
ggradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPopV2/EnterEnter\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/f_acc*
is_constant(*
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0
?
Vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Sum_1SumVgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1hgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Reshape_1ReshapeVgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Sum_1sgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
?
Vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/ShapeShapeEstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
T0*
out_type0
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape_1ShapeGstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter%^stacked_lstm_cell/rnn/while/Identity*
out_type0*
T0
?
fgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgsqgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2sgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1*
T0
?
lgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*i
_class_
][loc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape*

stack_name *
	elem_type0
?
lgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/EnterEnterlgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0*
parallel_iterations *
is_constant(
?
rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPushV2StackPushV2lgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/EnterVgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape^gradients/Add*
swap_memory( *
T0
?
qgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2
StackPopV2wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2/EnterEnterlgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0*
is_constant(*
parallel_iterations 
?
ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc_1StackV2%stacked_lstm_cell/rnn/strided_slice_1*k
_classa
_]loc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape_1*

stack_name *
	elem_type0
?
ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/Enter_1Enterngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
is_constant(*
T0
?
tgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/Enter_1Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape_1^gradients/Add*
swap_memory( *
T0
?
sgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2ygradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
?
ygradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc_1*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0*
is_constant(*
parallel_iterations 
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDivRealDivXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Reshape^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/Enter*
T0
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/EnterEnterdropout_ratio_*
is_constant(*
T0*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
parallel_iterations 
?
Tgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/SumSumXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDivfgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( 
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/ReshapeReshapeTgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Sumqgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
?
Tgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/NegNeg_gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/StackPopV2*
T0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*
	elem_type0*X
_classN
LJloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*

stack_name 
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/EnterEnterZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/f_acc*
T0*
is_constant(*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations 
?
`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/StackPushV2StackPushV2Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/EnterEstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2^gradients/Add*
T0*
swap_memory( 
?
_gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/StackPopV2
StackPopV2egradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
egradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/StackPopV2/EnterEnterZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/f_acc*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
T0*
is_constant(
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv_1RealDivTgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/Enter*
T0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv_2RealDivZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv_1^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/Enter*
T0
?
Tgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/mulMulXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/ReshapeZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv_2*
T0
?
Vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Sum_1SumTgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/mulhgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Reshape_1ReshapeVgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Sum_1sgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0
?
Cgradients/stacked_lstm_cell/rnn/while/Switch_2_grad_1/NextIterationNextIteration;gradients/stacked_lstm_cell/rnn/while/Merge_2_grad/Switch:1*
T0
?
gradients/AddN_1AddN;gradients/stacked_lstm_cell/rnn/while/Merge_6_grad/Switch:1Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Reshape*O
_classE
CAloc:@gradients/stacked_lstm_cell/rnn/while/Switch_6_grad/b_switch*
T0*
N
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/ShapeShapeIstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2*
out_type0*
T0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Shape_1ShapeFstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1*
T0*
out_type0
?
jgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0
?
pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*m
_classc
a_loc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Shape*

stack_name *
	elem_type0
?
pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterEnterpgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0
?
vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Shape^gradients/Add*
T0*
swap_memory( 
?
ugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2{gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
{gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnterpgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant(
?
rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2%stacked_lstm_cell/rnn/strided_slice_1*
	elem_type0*

stack_name *o
_classe
caloc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Shape_1
?
rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Enterrgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0*
parallel_iterations *
is_constant(
?
xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Shape_1^gradients/Add*
swap_memory( *
T0
?
wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2}gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
?
}gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterrgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
T0*
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mulMulgradients/AddN_1cgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul/StackPopV2*
T0
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*
	elem_type0*

stack_name *Y
_classO
MKloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul/EnterEnter^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul/StackPushV2StackPushV2^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul/EnterFstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1^gradients/Add*
T0*
swap_memory( 
?
cgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul/StackPopV2
StackPopV2igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul/StackPopV2/EnterEnter^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul/f_acc*
T0*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant(*
parallel_iterations 
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/SumSumXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/muljgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/ReshapeReshapeXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Sumugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul_1Mulegradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul_1/StackPopV2gradients/AddN_1*
T0
?
`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul_1/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*\
_classR
PNloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2*

stack_name *
	elem_type0
?
`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul_1/EnterEnter`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul_1/f_acc*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
is_constant(*
parallel_iterations *
T0
?
fgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul_1/StackPushV2StackPushV2`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul_1/EnterIstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2^gradients/Add*
T0*
swap_memory( 
?
egradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul_1/StackPopV2
StackPopV2kgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
kgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul_1/StackPopV2/EnterEnter`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul_1/f_acc*
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0*
is_constant(
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Sum_1SumZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul_1lgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Reshape_1ReshapeZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Sum_1wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradegradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul_1/StackPopV2\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Reshape*
T0
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1_grad/TanhGradTanhGradcgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/mul/StackPopV2^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Reshape_1*
T0
?
gradients/AddN_2AddN;gradients/stacked_lstm_cell/rnn/while/Merge_5_grad/Switch:1^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1_grad/TanhGrad*
T0*
N*O
_classE
CAloc:@gradients/stacked_lstm_cell/rnn/while/Switch_5_grad/b_switch
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/ShapeShapeCstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
out_type0*
T0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Shape_1ShapeEstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
out_type0*
T0
?
jgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0
?
pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*m
_classc
a_loc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Shape*
	elem_type0*

stack_name 
?
pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/EnterEnterpgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0*
is_constant(
?
vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/EnterZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Shape^gradients/Add*
swap_memory( *
T0
?
ugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2{gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
{gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterpgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant(*
parallel_iterations *
T0
?
rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1StackV2%stacked_lstm_cell/rnn/strided_slice_1*

stack_name *o
_classe
caloc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Shape_1*
	elem_type0
?
rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1Enterrgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
is_constant(
?
xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Shape_1^gradients/Add*
T0*
swap_memory( 
?
wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2}gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
?
}gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterrgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant(
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/SumSumgradients/AddN_2jgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/ReshapeReshapeXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Sumugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Sum_1Sumgradients/AddN_2lgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Reshape_1ReshapeZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Sum_1wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/ShapeShapeGstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid*
T0*
out_type0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Shape_1Shape&stacked_lstm_cell/rnn/while/Identity_5*
T0*
out_type0
?
hgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgsBroadcastGradientArgssgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2ugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0
?
ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*k
_classa
_]loc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Shape*

stack_name *
	elem_type0
?
ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/EnterEnterngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*
is_constant(*9

frame_name+)stacked_lstm_cell/rnn/while/while_context
?
tgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/EnterXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Shape^gradients/Add*
T0*
swap_memory( 
?
sgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ygradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
ygradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
is_constant(*
T0*
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context
?
pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1StackV2%stacked_lstm_cell/rnn/strided_slice_1*m
_classc
a_loc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Shape_1*

stack_name *
	elem_type0
?
pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Enterpgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0*
is_constant(*
parallel_iterations 
?
vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Shape_1^gradients/Add*
swap_memory( *
T0
?
ugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2{gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
?
{gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterpgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0*
is_constant(
?
Vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mulMul\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Reshapeagradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul/StackPopV2*
T0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*

stack_name *
	elem_type0*9
_class/
-+loc:@stacked_lstm_cell/rnn/while/Identity_5
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul/EnterEnter\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul/f_acc*
T0*
is_constant(*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations 
?
bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul/StackPushV2StackPushV2\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul/Enter&stacked_lstm_cell/rnn/while/Identity_5^gradients/Add*
T0*
swap_memory( 
?
agradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul/StackPopV2
StackPopV2ggradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
ggradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul/StackPopV2/EnterEnter\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul/f_acc*
T0*
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant(
?
Vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/SumSumVgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mulhgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/ReshapeReshapeVgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Sumsgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul_1Mulcgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul_1/StackPopV2\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Reshape*
T0
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul_1/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*
	elem_type0*

stack_name *Z
_classP
NLloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul_1/EnterEnter^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul_1/f_acc*
T0*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
is_constant(
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul_1/StackPushV2StackPushV2^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul_1/EnterGstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid^gradients/Add*
swap_memory( *
T0
?
cgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul_1/StackPopV2
StackPopV2igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul_1/StackPopV2/EnterEnter^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul_1/f_acc*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
is_constant(*
T0
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Sum_1SumXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul_1jgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Reshape_1ReshapeXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Sum_1ugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/ShapeShapeIstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1*
out_type0*
T0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Shape_1ShapeDstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh*
out_type0*
T0
?
jgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0
?
pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*

stack_name *m
_classc
a_loc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Shape*
	elem_type0
?
pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterEnterpgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
is_constant(*
T0*
parallel_iterations 
?
vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Shape^gradients/Add*
T0*
swap_memory( 
?
ugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2{gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
{gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterpgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *
T0*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context
?
rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2%stacked_lstm_cell/rnn/strided_slice_1*

stack_name *
	elem_type0*o
_classe
caloc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Shape_1
?
rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Enterrgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
T0
?
xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Shape_1^gradients/Add*
T0*
swap_memory( 
?
wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2}gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
?
}gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterrgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
is_constant(*
T0*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mulMul^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Reshape_1cgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul/StackPopV2*
T0
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*

stack_name *
	elem_type0*W
_classM
KIloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul/EnterEnter^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul/f_acc*
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
is_constant(*
T0
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul/StackPushV2StackPushV2^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul/EnterDstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh^gradients/Add*
swap_memory( *
T0
?
cgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul/StackPopV2
StackPopV2igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul/StackPopV2/EnterEnter^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul/f_acc*
is_constant(*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0*
parallel_iterations 
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/SumSumXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/muljgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/ReshapeReshapeXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Sumugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul_1Mulegradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul_1/StackPopV2^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Reshape_1*
T0
?
`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul_1/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*\
_classR
PNloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1*

stack_name *
	elem_type0
?
`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul_1/EnterEnter`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul_1/f_acc*
is_constant(*
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0
?
fgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul_1/StackPushV2StackPushV2`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul_1/EnterIstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1^gradients/Add*
swap_memory( *
T0
?
egradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul_1/StackPopV2
StackPopV2kgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
kgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul_1/StackPopV2/EnterEnter`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul_1/f_acc*
parallel_iterations *
is_constant(*
T0*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Sum_1SumZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul_1lgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Reshape_1ReshapeZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Sum_1wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
?
bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradcgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/mul_1/StackPopV2Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Reshape*
T0
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradegradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul_1/StackPopV2\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Reshape*
T0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_grad/TanhGradTanhGradcgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/mul/StackPopV2^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Reshape_1*
T0
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/ShapeShapeGstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split:2*
T0*
out_type0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Shape_1Const^gradients/Sub*
valueB *
dtype0
?
hgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgssgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Shape_1*
T0
?
ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*
	elem_type0*k
_classa
_]loc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Shape*

stack_name 
?
ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/EnterEnterngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
is_constant(*
T0
?
tgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/EnterXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Shape^gradients/Add*
swap_memory( *
T0
?
sgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ygradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
ygradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/EnterEnterngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
is_constant(*
T0*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
parallel_iterations 
?
Vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/SumSumbgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_grad/SigmoidGradhgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/ReshapeReshapeVgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Sumsgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Sum_1Sumbgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_grad/SigmoidGradjgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Reshape_1ReshapeXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Sum_1Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Shape_1*
T0*
Tshape0
?
Cgradients/stacked_lstm_cell/rnn/while/Switch_5_grad_1/NextIterationNextIteration\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Reshape_1*
T0
?
[gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split_grad/concatConcatV2dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1_grad/SigmoidGrad\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_grad/TanhGradZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Reshapedgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2_grad/SigmoidGradagradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split_grad/concat/Const*
T0*
N*

Tidx0
?
agradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split_grad/concat/ConstConst^gradients/Sub*
value	B :*
dtype0
?
bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad[gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split_grad/concat*
T0*
data_formatNHWC
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMulMatMul[gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split_grad/concatbgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul/Enter*
transpose_a( *
transpose_b(*
T0
?
bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul/EnterEnter/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/read*
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant(*
T0
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1MatMuligradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPopV2[gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split_grad/concat*
transpose_a(*
transpose_b( *
T0
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*

stack_name *Y
_classO
MKloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat*
	elem_type0
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/EnterEnterdgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
is_constant(
?
jgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/EnterFstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat^gradients/Add*
T0*
swap_memory( 
?
igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2ogradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
ogradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnterdgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/f_acc*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
is_constant(*
T0
?
bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueBP*    *
dtype0
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_1Enterbgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant( *
parallel_iterations *
T0
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_2Mergedgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_1jgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/NextIteration*
T0*
N
?
cgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/SwitchSwitchdgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_2gradients/b_count_2*
T0
?
`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/AddAddegradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/Switch:1bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd_grad/BiasAddGrad*
T0
?
jgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/NextIterationNextIteration`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/Add*
T0
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_3Exitcgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/Switch*
T0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/RankConst^gradients/Sub*
value	B :*
dtype0
?
Ygradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/modFloorMod_gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/mod/ConstZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Rank*
T0
?
_gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/mod/ConstConst^gradients/Sub*
dtype0*
value	B :
?
[gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeShapeAstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
T0*
out_type0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeNShapeNggradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2_1*
T0*
out_type0*
N
?
bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*T
_classJ
HFloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*

stack_name *
	elem_type0
?
bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/EnterEnterbgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/f_acc*
is_constant(*
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0
?
hgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPushV2StackPushV2bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/EnterAstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul^gradients/Add*
swap_memory( *
T0
?
ggradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2
StackPopV2mgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
mgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2/EnterEnterbgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/f_acc*
is_constant(*
parallel_iterations *
T0*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/f_acc_1StackV2%stacked_lstm_cell/rnn/strided_slice_1*
	elem_type0*9
_class/
-+loc:@stacked_lstm_cell/rnn/while/Identity_6*

stack_name 
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/Enter_1Enterdgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/f_acc_1*
parallel_iterations *
is_constant(*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0
?
jgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPushV2_1StackPushV2dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/Enter_1&stacked_lstm_cell/rnn/while/Identity_6^gradients/Add*
T0*
swap_memory( 
?
igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2_1
StackPopV2ogradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
?
ogradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2_1/EnterEnterdgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/f_acc_1*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
T0*
is_constant(
?
bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ConcatOffsetConcatOffsetYgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/mod\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN:1*
N
?
[gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/SliceSlice\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMulbgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ConcatOffset\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN*
T0*
Index0
?
]gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Slice_1Slice\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMuldgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ConcatOffset:1^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN:1*
T0*
Index0
?
agradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_accConst*
valueB(P*    *
dtype0
?
cgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_1Enteragradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_acc*
parallel_iterations *
is_constant( *
T0*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context
?
cgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_2Mergecgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_1igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/NextIteration*
T0*
N
?
bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/SwitchSwitchcgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_2gradients/b_count_2*
T0
?
_gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/AddAdddgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/Switch:1^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1*
T0
?
igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/NextIterationNextIteration_gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/Add*
T0
?
cgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_3Exitbgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/Switch*
T0
?
Vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/ShapeShapeAstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div*
out_type0*
T0
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape_1ShapeCstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor*
T0*
out_type0
?
fgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsqgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2sgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0
?
lgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*i
_class_
][loc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape*

stack_name *
	elem_type0
?
lgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/EnterEnterlgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc*
T0*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
is_constant(
?
rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2lgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/EnterVgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape^gradients/Add*
T0*
swap_memory( 
?
qgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterlgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc*
is_constant(*
T0*
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context
?
ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1StackV2%stacked_lstm_cell/rnn/strided_slice_1*
	elem_type0*k
_classa
_]loc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape_1*

stack_name 
?
ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Enter_1Enterngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0*
is_constant(
?
tgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Enter_1Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape_1^gradients/Add*
T0*
swap_memory( 
?
sgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2ygradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
?
ygradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant(*
T0
?
Tgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mulMul[gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Slice_gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPopV2*
T0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*
	elem_type0*V
_classL
JHloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor*

stack_name 
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/EnterEnterZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/f_acc*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0*
parallel_iterations *
is_constant(
?
`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPushV2StackPushV2Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/EnterCstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor^gradients/Add*
swap_memory( *
T0
?
_gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPopV2
StackPopV2egradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
egradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPopV2/EnterEnterZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/f_acc*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
T0*
is_constant(
?
Tgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/SumSumTgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mulfgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( 
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/ReshapeReshapeTgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Sumqgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0
?
Vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1Mulagradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPopV2[gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Slice*
T0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*

stack_name *
	elem_type0*T
_classJ
HFloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/EnterEnter\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/f_acc*
parallel_iterations *
is_constant(*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0
?
bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPushV2StackPushV2\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/EnterAstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div^gradients/Add*
swap_memory( *
T0
?
agradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPopV2
StackPopV2ggradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
ggradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPopV2/EnterEnter\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/f_acc*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0*
is_constant(*
parallel_iterations 
?
Vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Sum_1SumVgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1hgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( 
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Reshape_1ReshapeVgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Sum_1sgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0
?
Vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/ShapeShapeEstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
out_type0*
T0
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape_1ShapeGstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter%^stacked_lstm_cell/rnn/while/Identity*
T0*
out_type0
?
fgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgsqgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2sgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1*
T0
?
lgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*
	elem_type0*i
_class_
][loc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape*

stack_name 
?
lgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/EnterEnterlgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
is_constant(
?
rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPushV2StackPushV2lgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/EnterVgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape^gradients/Add*
T0*
swap_memory( 
?
qgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2
StackPopV2wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2/EnterEnterlgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant(
?
ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc_1StackV2%stacked_lstm_cell/rnn/strided_slice_1*

stack_name *
	elem_type0*k
_classa
_]loc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape_1
?
ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/Enter_1Enterngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
T0
?
tgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/Enter_1Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape_1^gradients/Add*
swap_memory( *
T0
?
sgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2ygradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
?
ygradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant(
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDivRealDivXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Reshape^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/Enter*
T0
?
Tgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/SumSumXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDivfgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/ReshapeReshapeTgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Sumqgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
?
Tgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/NegNeg_gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPopV2*
T0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*X
_classN
LJloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
	elem_type0*

stack_name 
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/EnterEnterZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/f_acc*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
T0*
is_constant(
?
`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPushV2StackPushV2Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/EnterEstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2^gradients/Add*
T0*
swap_memory( 
?
_gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPopV2
StackPopV2egradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
egradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPopV2/EnterEnterZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/f_acc*
parallel_iterations *
is_constant(*
T0*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDiv_1RealDivTgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/Enter*
T0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDiv_2RealDivZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDiv_1^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/Enter*
T0
?
Tgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/mulMulXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/ReshapeZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDiv_2*
T0
?
Vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Sum_1SumTgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/mulhgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Reshape_1ReshapeVgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Sum_1sgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
?
Cgradients/stacked_lstm_cell/rnn/while/Switch_6_grad_1/NextIterationNextIteration]gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Slice_1*
T0
?
gradients/AddN_3AddN;gradients/stacked_lstm_cell/rnn/while/Merge_4_grad/Switch:1Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Reshape*
T0*
N*O
_classE
CAloc:@gradients/stacked_lstm_cell/rnn/while/Switch_4_grad/b_switch
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/ShapeShapeIstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2*
out_type0*
T0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Shape_1ShapeFstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1*
out_type0*
T0
?
jgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0
?
pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*m
_classc
a_loc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Shape*
	elem_type0*

stack_name 
?
pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterEnterpgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0
?
vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Shape^gradients/Add*
T0*
swap_memory( 
?
ugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2{gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
{gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnterpgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
is_constant(*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0
?
rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2%stacked_lstm_cell/rnn/strided_slice_1*
	elem_type0*

stack_name *o
_classe
caloc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Shape_1
?
rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Enterrgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations 
?
xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Shape_1^gradients/Add*
swap_memory( *
T0
?
wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2}gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
?
}gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterrgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mulMulgradients/AddN_3cgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul/StackPopV2*
T0
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*

stack_name *Y
_classO
MKloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1*
	elem_type0
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul/EnterEnter^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul/f_acc*
is_constant(*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
T0
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul/StackPushV2StackPushV2^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul/EnterFstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1^gradients/Add*
swap_memory( *
T0
?
cgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul/StackPopV2
StackPopV2igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul/StackPopV2/EnterEnter^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul/f_acc*
is_constant(*
parallel_iterations *
T0*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/SumSumXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/muljgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( 
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/ReshapeReshapeXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Sumugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul_1Mulegradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul_1/StackPopV2gradients/AddN_3*
T0
?
`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul_1/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*

stack_name *
	elem_type0*\
_classR
PNloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2
?
`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul_1/EnterEnter`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul_1/f_acc*
is_constant(*
T0*
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context
?
fgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul_1/StackPushV2StackPushV2`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul_1/EnterIstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2^gradients/Add*
T0*
swap_memory( 
?
egradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul_1/StackPopV2
StackPopV2kgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
kgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul_1/StackPopV2/EnterEnter`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul_1/f_acc*
is_constant(*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0*
parallel_iterations 
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Sum_1SumZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul_1lgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Reshape_1ReshapeZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Sum_1wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradegradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul_1/StackPopV2\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Reshape*
T0
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1_grad/TanhGradTanhGradcgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/mul/StackPopV2^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Reshape_1*
T0
?
gradients/AddN_4AddN;gradients/stacked_lstm_cell/rnn/while/Merge_3_grad/Switch:1^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1_grad/TanhGrad*O
_classE
CAloc:@gradients/stacked_lstm_cell/rnn/while/Switch_3_grad/b_switch*
N*
T0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/ShapeShapeCstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*
T0*
out_type0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Shape_1ShapeEstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
T0*
out_type0
?
jgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0
?
pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*
	elem_type0*m
_classc
a_loc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Shape*

stack_name 
?
pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/EnterEnterpgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context
?
vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/EnterZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Shape^gradients/Add*
T0*
swap_memory( 
?
ugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2{gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
{gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterpgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0*
parallel_iterations *
is_constant(
?
rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1StackV2%stacked_lstm_cell/rnn/strided_slice_1*

stack_name *o
_classe
caloc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Shape_1*
	elem_type0
?
rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1Enterrgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0
?
xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Shape_1^gradients/Add*
T0*
swap_memory( 
?
wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2}gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
?
}gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterrgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0*
parallel_iterations *
is_constant(
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/SumSumgradients/AddN_4jgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/ReshapeReshapeXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Sumugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Sum_1Sumgradients/AddN_4lgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Reshape_1ReshapeZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Sum_1wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/ShapeShapeGstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid*
out_type0*
T0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Shape_1Shape&stacked_lstm_cell/rnn/while/Identity_3*
out_type0*
T0
?
hgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgsBroadcastGradientArgssgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2ugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0
?
ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*k
_classa
_]loc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Shape*
	elem_type0*

stack_name 
?
ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/EnterEnterngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
is_constant(*
T0*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations 
?
tgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/EnterXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Shape^gradients/Add*
swap_memory( *
T0
?
sgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ygradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
ygradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
parallel_iterations 
?
pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1StackV2%stacked_lstm_cell/rnn/strided_slice_1*m
_classc
a_loc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Shape_1*

stack_name *
	elem_type0
?
pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Enterpgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
is_constant(*
T0*9

frame_name+)stacked_lstm_cell/rnn/while/while_context
?
vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Shape_1^gradients/Add*
T0*
swap_memory( 
?
ugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2{gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
?
{gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterpgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant(
?
Vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mulMul\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Reshapeagradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul/StackPopV2*
T0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*

stack_name *9
_class/
-+loc:@stacked_lstm_cell/rnn/while/Identity_3*
	elem_type0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul/EnterEnter\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul/f_acc*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0*
parallel_iterations *
is_constant(
?
bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul/StackPushV2StackPushV2\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul/Enter&stacked_lstm_cell/rnn/while/Identity_3^gradients/Add*
T0*
swap_memory( 
?
agradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul/StackPopV2
StackPopV2ggradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
ggradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul/StackPopV2/EnterEnter\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul/f_acc*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant(*
T0*
parallel_iterations 
?
Vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/SumSumVgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mulhgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/ReshapeReshapeVgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Sumsgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul_1Mulcgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul_1/StackPopV2\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Reshape*
T0
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul_1/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*
	elem_type0*Z
_classP
NLloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid*

stack_name 
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul_1/EnterEnter^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul_1/f_acc*
is_constant(*
T0*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations 
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul_1/StackPushV2StackPushV2^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul_1/EnterGstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid^gradients/Add*
swap_memory( *
T0
?
cgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul_1/StackPopV2
StackPopV2igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul_1/StackPopV2/EnterEnter^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul_1/f_acc*
T0*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant(*
parallel_iterations 
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Sum_1SumXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul_1jgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Reshape_1ReshapeXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Sum_1ugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/ShapeShapeIstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1*
out_type0*
T0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Shape_1ShapeDstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh*
T0*
out_type0
?
jgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0
?
pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*
	elem_type0*m
_classc
a_loc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Shape*

stack_name 
?
pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterEnterpgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0*
parallel_iterations *
is_constant(
?
vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2pgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Shape^gradients/Add*
swap_memory( *
T0
?
ugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2{gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
{gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterpgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *
T0*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context
?
rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2%stacked_lstm_cell/rnn/strided_slice_1*o
_classe
caloc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Shape_1*
	elem_type0*

stack_name 
?
rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Enterrgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0*
parallel_iterations 
?
xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2rgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Shape_1^gradients/Add*
swap_memory( *
T0
?
wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2}gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
?
}gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterrgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
T0*
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mulMul^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Reshape_1cgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul/StackPopV2*
T0
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*

stack_name *W
_classM
KIloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh*
	elem_type0
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul/EnterEnter^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul/f_acc*
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
T0*
is_constant(
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul/StackPushV2StackPushV2^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul/EnterDstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh^gradients/Add*
swap_memory( *
T0
?
cgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul/StackPopV2
StackPopV2igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul/StackPopV2/EnterEnter^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul/f_acc*
parallel_iterations *
is_constant(*
T0*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/SumSumXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/muljgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/ReshapeReshapeXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Sumugradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul_1Mulegradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul_1/StackPopV2^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Reshape_1*
T0
?
`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul_1/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*

stack_name *\
_classR
PNloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1*
	elem_type0
?
`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul_1/EnterEnter`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul_1/f_acc*
T0*
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
is_constant(
?
fgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul_1/StackPushV2StackPushV2`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul_1/EnterIstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1^gradients/Add*
T0*
swap_memory( 
?
egradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul_1/StackPopV2
StackPopV2kgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
kgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul_1/StackPopV2/EnterEnter`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul_1/f_acc*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant(*
parallel_iterations *
T0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Sum_1SumZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul_1lgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( 
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Reshape_1ReshapeZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Sum_1wgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0
?
bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradcgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/mul_1/StackPopV2Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Reshape*
T0
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradegradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul_1/StackPopV2\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Reshape*
T0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_grad/TanhGradTanhGradcgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/mul/StackPopV2^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Reshape_1*
T0
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/ShapeShapeGstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split:2*
T0*
out_type0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Shape_1Const^gradients/Sub*
valueB *
dtype0
?
hgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgssgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Shape_1*
T0
?
ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*
	elem_type0*

stack_name *k
_classa
_]loc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Shape
?
ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/EnterEnterngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *
T0*9

frame_name+)stacked_lstm_cell/rnn/while/while_context
?
tgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2ngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/EnterXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Shape^gradients/Add*
T0*
swap_memory( 
?
sgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ygradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
ygradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/EnterEnterngradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/f_acc*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0*
parallel_iterations *
is_constant(
?
Vgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/SumSumbgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_grad/SigmoidGradhgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/ReshapeReshapeVgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Sumsgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0
?
Xgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Sum_1Sumbgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_grad/SigmoidGradjgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Reshape_1ReshapeXgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Sum_1Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Shape_1*
T0*
Tshape0
?
Cgradients/stacked_lstm_cell/rnn/while/Switch_3_grad_1/NextIterationNextIteration\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Reshape_1*
T0
?
[gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concatConcatV2dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1_grad/SigmoidGrad\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_grad/TanhGradZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Reshapedgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2_grad/SigmoidGradagradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat/Const*
N*

Tidx0*
T0
?
agradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat/ConstConst^gradients/Sub*
dtype0*
value	B :
?
bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad[gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat*
T0*
data_formatNHWC
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMulMatMul[gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concatbgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul/Enter*
transpose_a( *
transpose_b(*
T0
?
bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul/EnterEnter/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read*
T0*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
is_constant(
?
^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1MatMuligradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPopV2[gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat*
transpose_a(*
T0*
transpose_b( 
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*

stack_name *
	elem_type0*Y
_classO
MKloc:@stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/EnterEnterdgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/f_acc*
parallel_iterations *9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
is_constant(*
T0
?
jgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/EnterFstacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat^gradients/Add*
swap_memory( *
T0
?
igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2ogradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
ogradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnterdgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/f_acc*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0*
is_constant(*
parallel_iterations 
?
bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_accConst*
dtype0*
valueBP*    
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_1Enterbgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0*
is_constant( *
parallel_iterations 
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_2Mergedgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_1jgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/NextIteration*
N*
T0
?
cgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/SwitchSwitchdgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_2gradients/b_count_2*
T0
?
`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/AddAddegradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/Switch:1bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_grad/BiasAddGrad*
T0
?
jgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/NextIterationNextIteration`gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/Add*
T0
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_3Exitcgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/Switch*
T0
?
Zgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/RankConst^gradients/Sub*
dtype0*
value	B :
?
Ygradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/modFloorMod_gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/mod/ConstZgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Rank*
T0
?
_gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/mod/ConstConst^gradients/Sub*
dtype0*
value	B :
?
[gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeShape-stacked_lstm_cell/rnn/while/TensorArrayReadV3*
out_type0*
T0
?
\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeNShapeNggradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2_1*
out_type0*
T0*
N
?
bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/f_accStackV2%stacked_lstm_cell/rnn/strided_slice_1*
	elem_type0*

stack_name *@
_class6
42loc:@stacked_lstm_cell/rnn/while/TensorArrayReadV3
?
bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/EnterEnterbgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/f_acc*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
parallel_iterations *
is_constant(*
T0
?
hgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPushV2StackPushV2bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/Enter-stacked_lstm_cell/rnn/while/TensorArrayReadV3^gradients/Add*
T0*
swap_memory( 
?
ggradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2
StackPopV2mgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2/Enter^gradients/Sub*
	elem_type0
?
mgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2/EnterEnterbgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/f_acc*
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant(*
T0
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/f_acc_1StackV2%stacked_lstm_cell/rnn/strided_slice_1*9
_class/
-+loc:@stacked_lstm_cell/rnn/while/Identity_4*

stack_name *
	elem_type0
?
dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/Enter_1Enterdgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/f_acc_1*
T0*9

frame_name+)stacked_lstm_cell/rnn/while/while_context*
is_constant(*
parallel_iterations 
?
jgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPushV2_1StackPushV2dgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/Enter_1&stacked_lstm_cell/rnn/while/Identity_4^gradients/Add*
T0*
swap_memory( 
?
igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2_1
StackPopV2ogradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
?
ogradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2_1/EnterEnterdgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/f_acc_1*
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0*
is_constant(
?
bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ConcatOffsetConcatOffsetYgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/mod\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN:1*
N
?
[gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/SliceSlice\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMulbgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ConcatOffset\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN*
Index0*
T0
?
]gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Slice_1Slice\gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMuldgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ConcatOffset:1^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN:1*
T0*
Index0
?
agradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_accConst*
dtype0*
valueB(P*    
?
cgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_1Enteragradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context
?
cgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_2Mergecgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_1igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/NextIteration*
N*
T0
?
bgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/SwitchSwitchcgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_2gradients/b_count_2*
T0
?
_gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/AddAdddgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/Switch:1^gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1*
T0
?
igradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/NextIterationNextIteration_gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/Add*
T0
?
cgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_3Exitbgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/Switch*
T0
?
^gradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3dgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enterfgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^gradients/Sub*
source	gradients*F
_class<
:8loc:@stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter
?
dgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter#stacked_lstm_cell/rnn/TensorArray_1*
is_constant(*
parallel_iterations *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0*F
_class<
:8loc:@stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter
?
fgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1EnterPstacked_lstm_cell/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*F
_class<
:8loc:@stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter*
parallel_iterations *
T0*C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
is_constant(
?
Zgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityfgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1_^gradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*F
_class<
:8loc:@stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter
?
`gradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3^gradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3kgradients/stacked_lstm_cell/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2[gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/SliceZgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0
w
Jgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0
?
Lgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1EnterJgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc*
parallel_iterations *
is_constant( *C

frame_name53gradients/stacked_lstm_cell/rnn/while/while_context*
T0
?
Lgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2MergeLgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Rgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
N*
T0
?
Kgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitchLgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2gradients/b_count_2*
T0
?
Hgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter_1_grad/AddAddMgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1`gradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0
?
Rgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIterationHgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter_1_grad/Add*
T0
?
Lgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3ExitKgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0
?
Cgradients/stacked_lstm_cell/rnn/while/Switch_4_grad_1/NextIterationNextIteration]gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Slice_1*
T0
?
?gradients/stacked_lstm_cell/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3#stacked_lstm_cell/rnn/TensorArray_1Lgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
source	gradients*6
_class,
*(loc:@stacked_lstm_cell/rnn/TensorArray_1
?
}gradients/stacked_lstm_cell/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentityLgradients/stacked_lstm_cell/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3?^gradients/stacked_lstm_cell/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*6
_class,
*(loc:@stacked_lstm_cell/rnn/TensorArray_1*
T0
?
sgradients/stacked_lstm_cell/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3?gradients/stacked_lstm_cell/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3.stacked_lstm_cell/rnn/TensorArrayUnstack/range}gradients/stacked_lstm_cell/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
dtype0*
element_shape:
|
@gradients/stacked_lstm_cell/rnn/transpose_grad/InvertPermutationInvertPermutationstacked_lstm_cell/rnn/concat*
T0
?
8gradients/stacked_lstm_cell/rnn/transpose_grad/transpose	Transposesgradients/stacked_lstm_cell/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3@gradients/stacked_lstm_cell/rnn/transpose_grad/InvertPermutation*
Tperm0*
T0

1gradients/input_linear_layer/Reshape_1_grad/ShapeShape*input_linear_layer/dense/LeakyRelu/Maximum*
out_type0*
T0
?
3gradients/input_linear_layer/Reshape_1_grad/ReshapeReshape8gradients/stacked_lstm_cell/rnn/transpose_grad/transpose1gradients/input_linear_layer/Reshape_1_grad/Shape*
Tshape0*
T0
?
?gradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/ShapeShape&input_linear_layer/dense/LeakyRelu/mul*
out_type0*
T0
?
Agradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/Shape_1Shape input_linear_layer/dense/BiasAdd*
T0*
out_type0
?
Agradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/Shape_2Shape3gradients/input_linear_layer/Reshape_1_grad/Reshape*
T0*
out_type0
r
Egradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/zeros/ConstConst*
dtype0*
valueB
 *    
?
?gradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/zerosFillAgradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/Shape_2Egradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/zeros/Const*
T0
?
Fgradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/GreaterEqualGreaterEqual&input_linear_layer/dense/LeakyRelu/mul input_linear_layer/dense/BiasAdd*
T0
?
Ogradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/ShapeAgradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/Shape_1*
T0
?
@gradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/SelectSelectFgradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/GreaterEqual3gradients/input_linear_layer/Reshape_1_grad/Reshape?gradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/zeros*
T0
?
Bgradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/Select_1SelectFgradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/GreaterEqual?gradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/zeros3gradients/input_linear_layer/Reshape_1_grad/Reshape*
T0
?
=gradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/SumSum@gradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/SelectOgradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
?
Agradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/ReshapeReshape=gradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/Sum?gradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/Shape*
T0*
Tshape0
?
?gradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/Sum_1SumBgradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/Select_1Qgradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
?
Cgradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/Reshape_1Reshape?gradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/Sum_1Agradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/Shape_1*
T0*
Tshape0
d
;gradients/input_linear_layer/dense/LeakyRelu/mul_grad/ShapeConst*
valueB *
dtype0
?
=gradients/input_linear_layer/dense/LeakyRelu/mul_grad/Shape_1Shape input_linear_layer/dense/BiasAdd*
out_type0*
T0
?
Kgradients/input_linear_layer/dense/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs;gradients/input_linear_layer/dense/LeakyRelu/mul_grad/Shape=gradients/input_linear_layer/dense/LeakyRelu/mul_grad/Shape_1*
T0
?
9gradients/input_linear_layer/dense/LeakyRelu/mul_grad/mulMulAgradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/Reshape input_linear_layer/dense/BiasAdd*
T0
?
9gradients/input_linear_layer/dense/LeakyRelu/mul_grad/SumSum9gradients/input_linear_layer/dense/LeakyRelu/mul_grad/mulKgradients/input_linear_layer/dense/LeakyRelu/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
?
=gradients/input_linear_layer/dense/LeakyRelu/mul_grad/ReshapeReshape9gradients/input_linear_layer/dense/LeakyRelu/mul_grad/Sum;gradients/input_linear_layer/dense/LeakyRelu/mul_grad/Shape*
T0*
Tshape0
?
;gradients/input_linear_layer/dense/LeakyRelu/mul_grad/mul_1Mul(input_linear_layer/dense/LeakyRelu/alphaAgradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/Reshape*
T0
?
;gradients/input_linear_layer/dense/LeakyRelu/mul_grad/Sum_1Sum;gradients/input_linear_layer/dense/LeakyRelu/mul_grad/mul_1Mgradients/input_linear_layer/dense/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
?
?gradients/input_linear_layer/dense/LeakyRelu/mul_grad/Reshape_1Reshape;gradients/input_linear_layer/dense/LeakyRelu/mul_grad/Sum_1=gradients/input_linear_layer/dense/LeakyRelu/mul_grad/Shape_1*
T0*
Tshape0
?
gradients/AddN_5AddNCgradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/Reshape_1?gradients/input_linear_layer/dense/LeakyRelu/mul_grad/Reshape_1*V
_classL
JHloc:@gradients/input_linear_layer/dense/LeakyRelu/Maximum_grad/Reshape_1*
N*
T0
|
;gradients/input_linear_layer/dense/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_5*
T0*
data_formatNHWC
?
5gradients/input_linear_layer/dense/MatMul_grad/MatMulMatMulgradients/AddN_5dense/kernel/read*
transpose_a( *
T0*
transpose_b(
?
7gradients/input_linear_layer/dense/MatMul_grad/MatMul_1MatMulinput_linear_layer/Reshapegradients/AddN_5*
transpose_a(*
T0*
transpose_b( 
?
global_norm/L2LossL2Loss7gradients/input_linear_layer/dense/MatMul_grad/MatMul_1*J
_class@
><loc:@gradients/input_linear_layer/dense/MatMul_grad/MatMul_1*
T0
?
global_norm/L2Loss_1L2Loss;gradients/input_linear_layer/dense/BiasAdd_grad/BiasAddGrad*
T0*N
_classD
B@loc:@gradients/input_linear_layer/dense/BiasAdd_grad/BiasAddGrad
?
global_norm/L2Loss_2L2Losscgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_3*
T0*v
_classl
jhloc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_3
?
global_norm/L2Loss_3L2Lossdgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_3*w
_classm
kiloc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_3*
T0
?
global_norm/L2Loss_4L2Losscgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_3*v
_classl
jhloc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_3*
T0
?
global_norm/L2Loss_5L2Lossdgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_3*w
_classm
kiloc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_3*
T0
?
global_norm/L2Loss_6L2Loss8gradients/output_linear_layer/dense/MatMul_grad/MatMul_1*
T0*K
_classA
?=loc:@gradients/output_linear_layer/dense/MatMul_grad/MatMul_1
?
global_norm/L2Loss_7L2Loss<gradients/output_linear_layer/dense/BiasAdd_grad/BiasAddGrad*
T0*O
_classE
CAloc:@gradients/output_linear_layer/dense/BiasAdd_grad/BiasAddGrad
?
global_norm/stackPackglobal_norm/L2Lossglobal_norm/L2Loss_1global_norm/L2Loss_2global_norm/L2Loss_3global_norm/L2Loss_4global_norm/L2Loss_5global_norm/L2Loss_6global_norm/L2Loss_7*

axis *
N*
T0
?
global_norm/ConstConst*
dtype0*
valueB: 
b
global_norm/SumSumglobal_norm/stackglobal_norm/Const*

Tidx0*
T0*
	keep_dims( 
@
global_norm/Const_1Const*
valueB
 *   @*
dtype0
E
global_norm/mulMulglobal_norm/Sumglobal_norm/Const_1*
T0
9
global_norm/global_normSqrtglobal_norm/mul*
T0
J
clip_by_global_norm/truediv/xConst*
dtype0*
valueB
 *  ??
g
clip_by_global_norm/truedivRealDivclip_by_global_norm/truediv/xglobal_norm/global_norm*
T0
F
clip_by_global_norm/ConstConst*
dtype0*
valueB
 *  ??
X
clip_by_global_norm/truediv_1RealDivclip_by_global_norm/Const
clip_norm_*
T0
k
clip_by_global_norm/MinimumMinimumclip_by_global_norm/truedivclip_by_global_norm/truediv_1*
T0
P
clip_by_global_norm/mulMul
clip_norm_clip_by_global_norm/Minimum*
T0
?
clip_by_global_norm/mul_1Mul7gradients/input_linear_layer/dense/MatMul_grad/MatMul_1clip_by_global_norm/mul*J
_class@
><loc:@gradients/input_linear_layer/dense/MatMul_grad/MatMul_1*
T0
?
*clip_by_global_norm/clip_by_global_norm/_0Identityclip_by_global_norm/mul_1*
T0*J
_class@
><loc:@gradients/input_linear_layer/dense/MatMul_grad/MatMul_1
?
clip_by_global_norm/mul_2Mul;gradients/input_linear_layer/dense/BiasAdd_grad/BiasAddGradclip_by_global_norm/mul*
T0*N
_classD
B@loc:@gradients/input_linear_layer/dense/BiasAdd_grad/BiasAddGrad
?
*clip_by_global_norm/clip_by_global_norm/_1Identityclip_by_global_norm/mul_2*
T0*N
_classD
B@loc:@gradients/input_linear_layer/dense/BiasAdd_grad/BiasAddGrad
?
clip_by_global_norm/mul_3Mulcgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_3clip_by_global_norm/mul*
T0*v
_classl
jhloc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_3
?
*clip_by_global_norm/clip_by_global_norm/_2Identityclip_by_global_norm/mul_3*v
_classl
jhloc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_3*
T0
?
clip_by_global_norm/mul_4Muldgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_3clip_by_global_norm/mul*w
_classm
kiloc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_3*
T0
?
*clip_by_global_norm/clip_by_global_norm/_3Identityclip_by_global_norm/mul_4*w
_classm
kiloc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_3*
T0
?
clip_by_global_norm/mul_5Mulcgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_3clip_by_global_norm/mul*v
_classl
jhloc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_3*
T0
?
*clip_by_global_norm/clip_by_global_norm/_4Identityclip_by_global_norm/mul_5*
T0*v
_classl
jhloc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_3
?
clip_by_global_norm/mul_6Muldgradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_3clip_by_global_norm/mul*w
_classm
kiloc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_3*
T0
?
*clip_by_global_norm/clip_by_global_norm/_5Identityclip_by_global_norm/mul_6*w
_classm
kiloc:@gradients/stacked_lstm_cell/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_3*
T0
?
clip_by_global_norm/mul_7Mul8gradients/output_linear_layer/dense/MatMul_grad/MatMul_1clip_by_global_norm/mul*
T0*K
_classA
?=loc:@gradients/output_linear_layer/dense/MatMul_grad/MatMul_1
?
*clip_by_global_norm/clip_by_global_norm/_6Identityclip_by_global_norm/mul_7*K
_classA
?=loc:@gradients/output_linear_layer/dense/MatMul_grad/MatMul_1*
T0
?
clip_by_global_norm/mul_8Mul<gradients/output_linear_layer/dense/BiasAdd_grad/BiasAddGradclip_by_global_norm/mul*O
_classE
CAloc:@gradients/output_linear_layer/dense/BiasAdd_grad/BiasAddGrad*
T0
?
*clip_by_global_norm/clip_by_global_norm/_7Identityclip_by_global_norm/mul_8*O
_classE
CAloc:@gradients/output_linear_layer/dense/BiasAdd_grad/BiasAddGrad*
T0
e
beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*
_class
loc:@dense/bias
v
beta1_power
VariableV2*
shared_name *
	container *
shape: *
_class
loc:@dense/bias*
dtype0
?
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
_class
loc:@dense/bias*
T0*
validate_shape(*
use_locking(
Q
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@dense/bias
e
beta2_power/initial_valueConst*
dtype0*
_class
loc:@dense/bias*
valueB
 *w??
v
beta2_power
VariableV2*
shared_name *
dtype0*
_class
loc:@dense/bias*
	container *
shape: 
?
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
validate_shape(*
T0*
_class
loc:@dense/bias*
use_locking(
Q
beta2_power/readIdentitybeta2_power*
_class
loc:@dense/bias*
T0
y
#dense/kernel/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense/kernel
?
dense/kernel/Adam
VariableV2*
shape
:*
_class
loc:@dense/kernel*
dtype0*
shared_name *
	container 
?
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
_class
loc:@dense/kernel*
validate_shape(
_
dense/kernel/Adam/readIdentitydense/kernel/Adam*
T0*
_class
loc:@dense/kernel
{
%dense/kernel/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/kernel*
dtype0
?
dense/kernel/Adam_1
VariableV2*
	container *
shared_name *
_class
loc:@dense/kernel*
dtype0*
shape
:
?
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
_class
loc:@dense/kernel*
T0*
validate_shape(*
use_locking(
c
dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel
q
!dense/bias/Adam/Initializer/zerosConst*
_class
loc:@dense/bias*
dtype0*
valueB*    
~
dense/bias/Adam
VariableV2*
shared_name *
	container *
_class
loc:@dense/bias*
dtype0*
shape:
?
dense/bias/Adam/AssignAssigndense/bias/Adam!dense/bias/Adam/Initializer/zeros*
use_locking(*
_class
loc:@dense/bias*
T0*
validate_shape(
Y
dense/bias/Adam/readIdentitydense/bias/Adam*
T0*
_class
loc:@dense/bias
s
#dense/bias/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/bias*
dtype0
?
dense/bias/Adam_1
VariableV2*
shared_name *
	container *
shape:*
dtype0*
_class
loc:@dense/bias
?
dense/bias/Adam_1/AssignAssigndense/bias/Adam_1#dense/bias/Adam_1/Initializer/zeros*
T0*
_class
loc:@dense/bias*
use_locking(*
validate_shape(
]
dense/bias/Adam_1/readIdentitydense/bias/Adam_1*
T0*
_class
loc:@dense/bias
?
Arnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Initializer/zerosConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
dtype0*
valueB(P*    
?
/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam
VariableV2*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
shared_name *
	container *
dtype0*
shape
:(P
?
6rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/AssignAssign/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdamArnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Initializer/zeros*
use_locking(*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
validate_shape(
?
4rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/readIdentity/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
?
Crnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Initializer/zerosConst*
dtype0*
valueB(P*    *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
?
1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1
VariableV2*
shared_name *
shape
:(P*
	container *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
dtype0
?
8rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/AssignAssign1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1Crnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
?
6rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/readIdentity1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
?
?rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/Initializer/zerosConst*
dtype0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
valueBP*    
?
-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam
VariableV2*
dtype0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
	container *
shape:P*
shared_name 
?
4rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/AssignAssign-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam?rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
validate_shape(
?
2rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/readIdentity-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0
?
Arnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/Initializer/zerosConst*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
dtype0*
valueBP*    
?
/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1
VariableV2*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
	container *
shape:P*
dtype0*
shared_name 
?
6rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/AssignAssign/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1Arnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
validate_shape(*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias
?
4rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/readIdentity/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias
?
Arnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/Initializer/zerosConst*
dtype0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
valueB(P*    
?
/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam
VariableV2*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
shape
:(P*
dtype0*
	container *
shared_name 
?
6rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/AssignAssign/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/AdamArnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/Initializer/zeros*
validate_shape(*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
T0*
use_locking(
?
4rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/readIdentity/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
?
Crnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/Initializer/zerosConst*
valueB(P*    *
dtype0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
?
1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1
VariableV2*
dtype0*
	container *
shared_name *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
shape
:(P
?
8rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/AssignAssign1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1Crnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/Initializer/zeros*
use_locking(*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
T0*
validate_shape(
?
6rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/readIdentity1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
?
?rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/Initializer/zerosConst*
valueBP*    *
dtype0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias
?
-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam
VariableV2*
	container *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
shared_name *
dtype0*
shape:P
?
4rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/AssignAssign-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam?rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/Initializer/zeros*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
use_locking(*
validate_shape(
?
2rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/readIdentity-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
T0
?
Arnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1/Initializer/zerosConst*
dtype0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
valueBP*    
?
/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1
VariableV2*
shared_name *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
dtype0*
shape:P*
	container 
?
6rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1/AssignAssign/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1Arnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias
?
4rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1/readIdentity/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias
}
%dense_1/kernel/Adam/Initializer/zerosConst*!
_class
loc:@dense_1/kernel*
valueB*    *
dtype0
?
dense_1/kernel/Adam
VariableV2*
dtype0*!
_class
loc:@dense_1/kernel*
	container *
shared_name *
shape
:
?
dense_1/kernel/Adam/AssignAssigndense_1/kernel/Adam%dense_1/kernel/Adam/Initializer/zeros*
use_locking(*!
_class
loc:@dense_1/kernel*
validate_shape(*
T0
e
dense_1/kernel/Adam/readIdentitydense_1/kernel/Adam*
T0*!
_class
loc:@dense_1/kernel

'dense_1/kernel/Adam_1/Initializer/zerosConst*!
_class
loc:@dense_1/kernel*
dtype0*
valueB*    
?
dense_1/kernel/Adam_1
VariableV2*
shape
:*
shared_name *
dtype0*!
_class
loc:@dense_1/kernel*
	container 
?
dense_1/kernel/Adam_1/AssignAssigndense_1/kernel/Adam_1'dense_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_1/kernel
i
dense_1/kernel/Adam_1/readIdentitydense_1/kernel/Adam_1*!
_class
loc:@dense_1/kernel*
T0
u
#dense_1/bias/Adam/Initializer/zerosConst*
_class
loc:@dense_1/bias*
dtype0*
valueB*    
?
dense_1/bias/Adam
VariableV2*
dtype0*
	container *
_class
loc:@dense_1/bias*
shape:*
shared_name 
?
dense_1/bias/Adam/AssignAssigndense_1/bias/Adam#dense_1/bias/Adam/Initializer/zeros*
_class
loc:@dense_1/bias*
T0*
validate_shape(*
use_locking(
_
dense_1/bias/Adam/readIdentitydense_1/bias/Adam*
T0*
_class
loc:@dense_1/bias
w
%dense_1/bias/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_1/bias*
dtype0
?
dense_1/bias/Adam_1
VariableV2*
	container *
_class
loc:@dense_1/bias*
shared_name *
dtype0*
shape:
?
dense_1/bias/Adam_1/AssignAssigndense_1/bias/Adam_1%dense_1/bias/Adam_1/Initializer/zeros*
validate_shape(*
_class
loc:@dense_1/bias*
T0*
use_locking(
c
dense_1/bias/Adam_1/readIdentitydense_1/bias/Adam_1*
_class
loc:@dense_1/bias*
T0
>
optimizeOp_/beta1Const*
valueB
 *fff?*
dtype0
>
optimizeOp_/beta2Const*
dtype0*
valueB
 *w??
@
optimizeOp_/epsilonConst*
dtype0*
valueB
 *w?+2
?
)optimizeOp_/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readlearn_rate_optimizeOp_/beta1optimizeOp_/beta2optimizeOp_/epsilon*clip_by_global_norm/clip_by_global_norm/_0*
T0*
use_nesterov( *
_class
loc:@dense/kernel*
use_locking( 
?
'optimizeOp_/update_dense/bias/ApplyAdam	ApplyAdam
dense/biasdense/bias/Adamdense/bias/Adam_1beta1_power/readbeta2_power/readlearn_rate_optimizeOp_/beta1optimizeOp_/beta2optimizeOp_/epsilon*clip_by_global_norm/clip_by_global_norm/_1*
T0*
_class
loc:@dense/bias*
use_locking( *
use_nesterov( 
?
GoptimizeOp_/update_rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ApplyAdam	ApplyAdam*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1beta1_power/readbeta2_power/readlearn_rate_optimizeOp_/beta1optimizeOp_/beta2optimizeOp_/epsilon*clip_by_global_norm/clip_by_global_norm/_2*
use_nesterov( *
use_locking( *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
?
EoptimizeOp_/update_rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ApplyAdam	ApplyAdam(rnn/multi_rnn_cell/cell_0/lstm_cell/bias-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1beta1_power/readbeta2_power/readlearn_rate_optimizeOp_/beta1optimizeOp_/beta2optimizeOp_/epsilon*clip_by_global_norm/clip_by_global_norm/_3*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
use_nesterov( *
use_locking( 
?
GoptimizeOp_/update_rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/ApplyAdam	ApplyAdam*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1beta1_power/readbeta2_power/readlearn_rate_optimizeOp_/beta1optimizeOp_/beta2optimizeOp_/epsilon*clip_by_global_norm/clip_by_global_norm/_4*
use_nesterov( *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
use_locking( *
T0
?
EoptimizeOp_/update_rnn/multi_rnn_cell/cell_1/lstm_cell/bias/ApplyAdam	ApplyAdam(rnn/multi_rnn_cell/cell_1/lstm_cell/bias-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1beta1_power/readbeta2_power/readlearn_rate_optimizeOp_/beta1optimizeOp_/beta2optimizeOp_/epsilon*clip_by_global_norm/clip_by_global_norm/_5*
use_nesterov( *
use_locking( *
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias
?
+optimizeOp_/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1beta1_power/readbeta2_power/readlearn_rate_optimizeOp_/beta1optimizeOp_/beta2optimizeOp_/epsilon*clip_by_global_norm/clip_by_global_norm/_6*
T0*
use_nesterov( *!
_class
loc:@dense_1/kernel*
use_locking( 
?
)optimizeOp_/update_dense_1/bias/ApplyAdam	ApplyAdamdense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1beta1_power/readbeta2_power/readlearn_rate_optimizeOp_/beta1optimizeOp_/beta2optimizeOp_/epsilon*clip_by_global_norm/clip_by_global_norm/_7*
T0*
use_locking( *
use_nesterov( *
_class
loc:@dense_1/bias
?
optimizeOp_/mulMulbeta1_power/readoptimizeOp_/beta1*^optimizeOp_/update_dense/kernel/ApplyAdam(^optimizeOp_/update_dense/bias/ApplyAdamH^optimizeOp_/update_rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ApplyAdamF^optimizeOp_/update_rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ApplyAdamH^optimizeOp_/update_rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/ApplyAdamF^optimizeOp_/update_rnn/multi_rnn_cell/cell_1/lstm_cell/bias/ApplyAdam,^optimizeOp_/update_dense_1/kernel/ApplyAdam*^optimizeOp_/update_dense_1/bias/ApplyAdam*
_class
loc:@dense/bias*
T0
?
optimizeOp_/AssignAssignbeta1_poweroptimizeOp_/mul*
_class
loc:@dense/bias*
use_locking( *
validate_shape(*
T0
?
optimizeOp_/mul_1Mulbeta2_power/readoptimizeOp_/beta2*^optimizeOp_/update_dense/kernel/ApplyAdam(^optimizeOp_/update_dense/bias/ApplyAdamH^optimizeOp_/update_rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ApplyAdamF^optimizeOp_/update_rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ApplyAdamH^optimizeOp_/update_rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/ApplyAdamF^optimizeOp_/update_rnn/multi_rnn_cell/cell_1/lstm_cell/bias/ApplyAdam,^optimizeOp_/update_dense_1/kernel/ApplyAdam*^optimizeOp_/update_dense_1/bias/ApplyAdam*
T0*
_class
loc:@dense/bias
?
optimizeOp_/Assign_1Assignbeta2_poweroptimizeOp_/mul_1*
use_locking( *
validate_shape(*
_class
loc:@dense/bias*
T0
?
optimizeOp_NoOp*^optimizeOp_/update_dense/kernel/ApplyAdam(^optimizeOp_/update_dense/bias/ApplyAdamH^optimizeOp_/update_rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ApplyAdamF^optimizeOp_/update_rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ApplyAdamH^optimizeOp_/update_rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/ApplyAdamF^optimizeOp_/update_rnn/multi_rnn_cell/cell_1/lstm_cell/bias/ApplyAdam,^optimizeOp_/update_dense_1/kernel/ApplyAdam*^optimizeOp_/update_dense_1/bias/ApplyAdam^optimizeOp_/Assign^optimizeOp_/Assign_1
?
initNoOp^dense/kernel/Assign^dense/bias/Assign2^rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Assign0^rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Assign2^rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Assign0^rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Assign^dense_1/kernel/Assign^dense_1/bias/Assign^beta1_power/Assign^beta2_power/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense/bias/Adam/Assign^dense/bias/Adam_1/Assign7^rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Assign9^rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Assign5^rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/Assign7^rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/Assign7^rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/Assign9^rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/Assign5^rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/Assign7^rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1/Assign^dense_1/kernel/Adam/Assign^dense_1/kernel/Adam_1/Assign^dense_1/bias/Adam/Assign^dense_1/bias/Adam_1/Assign"