
?
data_Placeholder*
dtype0*
shape:?????????
A
target_Placeholder*
dtype0*
shape:?????????
>
learn_rate_/inputConst*
dtype0*
valueB
 *???=
T
learn_rate_PlaceholderWithDefaultlearn_rate_/input*
shape:*
dtype0
;
hidden_layer/ShapeShapedata_*
out_type0*
T0
N
 hidden_layer/strided_slice/stackConst*
dtype0*
valueB: 
P
"hidden_layer/strided_slice/stack_1Const*
valueB:*
dtype0
P
"hidden_layer/strided_slice/stack_2Const*
valueB:*
dtype0
?
hidden_layer/strided_sliceStridedSlicehidden_layer/Shape hidden_layer/strided_slice/stack"hidden_layer/strided_slice/stack_1"hidden_layer/strided_slice/stack_2*
new_axis_mask *
T0*
ellipsis_mask *
end_mask *
shrink_axis_mask*
Index0*

begin_mask 
?
,dense/kernel/Initializer/random_normal/shapeConst*
valueB"      *
_class
loc:@dense/kernel*
dtype0
y
+dense/kernel/Initializer/random_normal/meanConst*
_class
loc:@dense/kernel*
valueB
 *??8*
dtype0
{
-dense/kernel/Initializer/random_normal/stddevConst*
_class
loc:@dense/kernel*
valueB
 *??8*
dtype0
?
;dense/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal,dense/kernel/Initializer/random_normal/shape*
dtype0*
seed2 *

seed *
_class
loc:@dense/kernel*
T0
?
*dense/kernel/Initializer/random_normal/mulMul;dense/kernel/Initializer/random_normal/RandomStandardNormal-dense/kernel/Initializer/random_normal/stddev*
_class
loc:@dense/kernel*
T0
?
&dense/kernel/Initializer/random_normalAdd*dense/kernel/Initializer/random_normal/mul+dense/kernel/Initializer/random_normal/mean*
_class
loc:@dense/kernel*
T0
?
dense/kernel
VariableV2*
shared_name *
shape
:*
_class
loc:@dense/kernel*
	container *
dtype0
?
dense/kernel/AssignAssigndense/kernel&dense/kernel/Initializer/random_normal*
_class
loc:@dense/kernel*
use_locking(*
T0*
validate_shape(
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
l
dense/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense/bias*
valueB*    
y

dense/bias
VariableV2*
dtype0*
shape:*
_class
loc:@dense/bias*
shared_name *
	container 
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
l
hidden_layer/dense/MatMulMatMuldata_dense/kernel/read*
transpose_a( *
transpose_b( *
T0
q
hidden_layer/dense/BiasAddBiasAddhidden_layer/dense/MatMuldense/bias/read*
data_formatNHWC*
T0
B
hidden_layer/dense/NegNeghidden_layer/dense/BiasAdd*
T0
>
hidden_layer/dense/ExpExphidden_layer/dense/Neg*
T0
E
hidden_layer/dense/sub/xConst*
dtype0*
valueB
 *  ??
X
hidden_layer/dense/subSubhidden_layer/dense/sub/xhidden_layer/dense/Exp*
T0
I
hidden_layer/dense/Maximum/xConst*
valueB
 *    *
dtype0
d
hidden_layer/dense/MaximumMaximumhidden_layer/dense/Maximum/xhidden_layer/dense/sub*
T0
E
hidden_layer/dense/Pow/yConst*
valueB
 *  ??*
dtype0
\
hidden_layer/dense/PowPowhidden_layer/dense/Maximumhidden_layer/dense/Pow/y*
T0
H
hidden_layer/concat/concat_dimConst*
value	B :*
dtype0
@
hidden_layer/concatIdentityhidden_layer/dense/Pow*
T0
?
.dense_1/kernel/Initializer/random_normal/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"      *
dtype0
}
-dense_1/kernel/Initializer/random_normal/meanConst*
valueB
 *??8*!
_class
loc:@dense_1/kernel*
dtype0

/dense_1/kernel/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *??8*!
_class
loc:@dense_1/kernel
?
=dense_1/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal.dense_1/kernel/Initializer/random_normal/shape*!
_class
loc:@dense_1/kernel*

seed *
T0*
seed2 *
dtype0
?
,dense_1/kernel/Initializer/random_normal/mulMul=dense_1/kernel/Initializer/random_normal/RandomStandardNormal/dense_1/kernel/Initializer/random_normal/stddev*
T0*!
_class
loc:@dense_1/kernel
?
(dense_1/kernel/Initializer/random_normalAdd,dense_1/kernel/Initializer/random_normal/mul-dense_1/kernel/Initializer/random_normal/mean*!
_class
loc:@dense_1/kernel*
T0
?
dense_1/kernel
VariableV2*
	container *
shared_name *!
_class
loc:@dense_1/kernel*
shape
:*
dtype0
?
dense_1/kernel/AssignAssigndense_1/kernel(dense_1/kernel/Initializer/random_normal*
T0*
use_locking(*!
_class
loc:@dense_1/kernel*
validate_shape(
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
p
dense_1/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_1/bias*
valueB*    
}
dense_1/bias
VariableV2*
	container *
shared_name *
_class
loc:@dense_1/bias*
shape:*
dtype0
?
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_class
loc:@dense_1/bias
U
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias
|
output_layer/dense/MatMulMatMulhidden_layer/concatdense_1/kernel/read*
transpose_a( *
T0*
transpose_b( 
s
output_layer/dense/BiasAddBiasAddoutput_layer/dense/MatMuldense_1/bias/read*
data_formatNHWC*
T0
B
output_layer/dense/NegNegoutput_layer/dense/BiasAdd*
T0
>
output_layer/dense/ExpExpoutput_layer/dense/Neg*
T0
E
output_layer/dense/sub/xConst*
valueB
 *  ??*
dtype0
X
output_layer/dense/subSuboutput_layer/dense/sub/xoutput_layer/dense/Exp*
T0
I
output_layer/dense/Maximum/xConst*
dtype0*
valueB
 *    
d
output_layer/dense/MaximumMaximumoutput_layer/dense/Maximum/xoutput_layer/dense/sub*
T0
E
output_layer/dense/Pow/yConst*
valueB
 *  ??*
dtype0
\
output_layer/dense/PowPowoutput_layer/dense/Maximumoutput_layer/dense/Pow/y*
T0
@
pred_/shape/1Const*
dtype0*
valueB :
?????????
\
pred_/shapePackhidden_layer/strided_slicepred_/shape/1*
N*
T0*

axis 
L
pred_Reshapeoutput_layer/dense/Powpred_/shape*
Tshape0*
T0
?
SquaredDifferenceSquaredDifferencetarget_pred_*
T0
:
ConstConst*
valueB"       *
dtype0
O
lossOp_MeanSquaredDifferenceConst*
	keep_dims( *

Tidx0*
T0
8
gradients/ShapeConst*
dtype0*
valueB 
@
gradients/grad_ys_0Const*
dtype0*
valueB
 *  ??
E
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0
Y
$gradients/lossOp__grad/Reshape/shapeConst*
dtype0*
valueB"      
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
gradients/lossOp__grad/ConstConst*
dtype0*
valueB: 
?
gradients/lossOp__grad/ProdProdgradients/lossOp__grad/Shape_1gradients/lossOp__grad/Const*
	keep_dims( *
T0*

Tidx0
L
gradients/lossOp__grad/Const_1Const*
dtype0*
valueB: 
?
gradients/lossOp__grad/Prod_1Prodgradients/lossOp__grad/Shape_2gradients/lossOp__grad/Const_1*

Tidx0*
T0*
	keep_dims( 
J
 gradients/lossOp__grad/Maximum/yConst*
value	B :*
dtype0
s
gradients/lossOp__grad/MaximumMaximumgradients/lossOp__grad/Prod_1 gradients/lossOp__grad/Maximum/y*
T0
q
gradients/lossOp__grad/floordivFloorDivgradients/lossOp__grad/Prodgradients/lossOp__grad/Maximum*
T0
\
gradients/lossOp__grad/CastCastgradients/lossOp__grad/floordiv*

DstT0*

SrcT0
l
gradients/lossOp__grad/truedivRealDivgradients/lossOp__grad/Tilegradients/lossOp__grad/Cast*
T0
Q
&gradients/SquaredDifference_grad/ShapeShapetarget_*
out_type0*
T0
Q
(gradients/SquaredDifference_grad/Shape_1Shapepred_*
T0*
out_type0
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
$gradients/SquaredDifference_grad/SumSum&gradients/SquaredDifference_grad/mul_16gradients/SquaredDifference_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
?
(gradients/SquaredDifference_grad/ReshapeReshape$gradients/SquaredDifference_grad/Sum&gradients/SquaredDifference_grad/Shape*
T0*
Tshape0
?
&gradients/SquaredDifference_grad/Sum_1Sum&gradients/SquaredDifference_grad/mul_18gradients/SquaredDifference_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( 
?
*gradients/SquaredDifference_grad/Reshape_1Reshape&gradients/SquaredDifference_grad/Sum_1(gradients/SquaredDifference_grad/Shape_1*
T0*
Tshape0
`
$gradients/SquaredDifference_grad/NegNeg*gradients/SquaredDifference_grad/Reshape_1*
T0
T
gradients/pred__grad/ShapeShapeoutput_layer/dense/Pow*
T0*
out_type0
?
gradients/pred__grad/ReshapeReshape$gradients/SquaredDifference_grad/Neggradients/pred__grad/Shape*
T0*
Tshape0
i
+gradients/output_layer/dense/Pow_grad/ShapeShapeoutput_layer/dense/Maximum*
out_type0*
T0
V
-gradients/output_layer/dense/Pow_grad/Shape_1Const*
valueB *
dtype0
?
;gradients/output_layer/dense/Pow_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/output_layer/dense/Pow_grad/Shape-gradients/output_layer/dense/Pow_grad/Shape_1*
T0
q
)gradients/output_layer/dense/Pow_grad/mulMulgradients/pred__grad/Reshapeoutput_layer/dense/Pow/y*
T0
X
+gradients/output_layer/dense/Pow_grad/sub/yConst*
dtype0*
valueB
 *  ??
?
)gradients/output_layer/dense/Pow_grad/subSuboutput_layer/dense/Pow/y+gradients/output_layer/dense/Pow_grad/sub/y*
T0
?
)gradients/output_layer/dense/Pow_grad/PowPowoutput_layer/dense/Maximum)gradients/output_layer/dense/Pow_grad/sub*
T0
?
+gradients/output_layer/dense/Pow_grad/mul_1Mul)gradients/output_layer/dense/Pow_grad/mul)gradients/output_layer/dense/Pow_grad/Pow*
T0
?
)gradients/output_layer/dense/Pow_grad/SumSum+gradients/output_layer/dense/Pow_grad/mul_1;gradients/output_layer/dense/Pow_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
-gradients/output_layer/dense/Pow_grad/ReshapeReshape)gradients/output_layer/dense/Pow_grad/Sum+gradients/output_layer/dense/Pow_grad/Shape*
T0*
Tshape0
\
/gradients/output_layer/dense/Pow_grad/Greater/yConst*
valueB
 *    *
dtype0
?
-gradients/output_layer/dense/Pow_grad/GreaterGreateroutput_layer/dense/Maximum/gradients/output_layer/dense/Pow_grad/Greater/y*
T0
U
)gradients/output_layer/dense/Pow_grad/LogLogoutput_layer/dense/Maximum*
T0
b
0gradients/output_layer/dense/Pow_grad/zeros_like	ZerosLikeoutput_layer/dense/Maximum*
T0
?
,gradients/output_layer/dense/Pow_grad/SelectSelect-gradients/output_layer/dense/Pow_grad/Greater)gradients/output_layer/dense/Pow_grad/Log0gradients/output_layer/dense/Pow_grad/zeros_like*
T0
q
+gradients/output_layer/dense/Pow_grad/mul_2Mulgradients/pred__grad/Reshapeoutput_layer/dense/Pow*
T0
?
+gradients/output_layer/dense/Pow_grad/mul_3Mul+gradients/output_layer/dense/Pow_grad/mul_2,gradients/output_layer/dense/Pow_grad/Select*
T0
?
+gradients/output_layer/dense/Pow_grad/Sum_1Sum+gradients/output_layer/dense/Pow_grad/mul_3=gradients/output_layer/dense/Pow_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
?
/gradients/output_layer/dense/Pow_grad/Reshape_1Reshape+gradients/output_layer/dense/Pow_grad/Sum_1-gradients/output_layer/dense/Pow_grad/Shape_1*
Tshape0*
T0
X
/gradients/output_layer/dense/Maximum_grad/ShapeConst*
valueB *
dtype0
k
1gradients/output_layer/dense/Maximum_grad/Shape_1Shapeoutput_layer/dense/sub*
T0*
out_type0
?
1gradients/output_layer/dense/Maximum_grad/Shape_2Shape-gradients/output_layer/dense/Pow_grad/Reshape*
T0*
out_type0
b
5gradients/output_layer/dense/Maximum_grad/zeros/ConstConst*
dtype0*
valueB
 *    
?
/gradients/output_layer/dense/Maximum_grad/zerosFill1gradients/output_layer/dense/Maximum_grad/Shape_25gradients/output_layer/dense/Maximum_grad/zeros/Const*
T0
?
6gradients/output_layer/dense/Maximum_grad/GreaterEqualGreaterEqualoutput_layer/dense/Maximum/xoutput_layer/dense/sub*
T0
?
?gradients/output_layer/dense/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/output_layer/dense/Maximum_grad/Shape1gradients/output_layer/dense/Maximum_grad/Shape_1*
T0
?
0gradients/output_layer/dense/Maximum_grad/SelectSelect6gradients/output_layer/dense/Maximum_grad/GreaterEqual-gradients/output_layer/dense/Pow_grad/Reshape/gradients/output_layer/dense/Maximum_grad/zeros*
T0
?
2gradients/output_layer/dense/Maximum_grad/Select_1Select6gradients/output_layer/dense/Maximum_grad/GreaterEqual/gradients/output_layer/dense/Maximum_grad/zeros-gradients/output_layer/dense/Pow_grad/Reshape*
T0
?
-gradients/output_layer/dense/Maximum_grad/SumSum0gradients/output_layer/dense/Maximum_grad/Select?gradients/output_layer/dense/Maximum_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
1gradients/output_layer/dense/Maximum_grad/ReshapeReshape-gradients/output_layer/dense/Maximum_grad/Sum/gradients/output_layer/dense/Maximum_grad/Shape*
T0*
Tshape0
?
/gradients/output_layer/dense/Maximum_grad/Sum_1Sum2gradients/output_layer/dense/Maximum_grad/Select_1Agradients/output_layer/dense/Maximum_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
?
3gradients/output_layer/dense/Maximum_grad/Reshape_1Reshape/gradients/output_layer/dense/Maximum_grad/Sum_11gradients/output_layer/dense/Maximum_grad/Shape_1*
Tshape0*
T0
T
+gradients/output_layer/dense/sub_grad/ShapeConst*
valueB *
dtype0
g
-gradients/output_layer/dense/sub_grad/Shape_1Shapeoutput_layer/dense/Exp*
out_type0*
T0
?
;gradients/output_layer/dense/sub_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/output_layer/dense/sub_grad/Shape-gradients/output_layer/dense/sub_grad/Shape_1*
T0
?
)gradients/output_layer/dense/sub_grad/SumSum3gradients/output_layer/dense/Maximum_grad/Reshape_1;gradients/output_layer/dense/sub_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( 
?
-gradients/output_layer/dense/sub_grad/ReshapeReshape)gradients/output_layer/dense/sub_grad/Sum+gradients/output_layer/dense/sub_grad/Shape*
Tshape0*
T0
?
+gradients/output_layer/dense/sub_grad/Sum_1Sum3gradients/output_layer/dense/Maximum_grad/Reshape_1=gradients/output_layer/dense/sub_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
f
)gradients/output_layer/dense/sub_grad/NegNeg+gradients/output_layer/dense/sub_grad/Sum_1*
T0
?
/gradients/output_layer/dense/sub_grad/Reshape_1Reshape)gradients/output_layer/dense/sub_grad/Neg-gradients/output_layer/dense/sub_grad/Shape_1*
T0*
Tshape0
?
)gradients/output_layer/dense/Exp_grad/mulMul/gradients/output_layer/dense/sub_grad/Reshape_1output_layer/dense/Exp*
T0
d
)gradients/output_layer/dense/Neg_grad/NegNeg)gradients/output_layer/dense/Exp_grad/mul*
T0
?
5gradients/output_layer/dense/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients/output_layer/dense/Neg_grad/Neg*
T0*
data_formatNHWC
?
/gradients/output_layer/dense/MatMul_grad/MatMulMatMul)gradients/output_layer/dense/Neg_grad/Negdense_1/kernel/read*
T0*
transpose_b(*
transpose_a( 
?
1gradients/output_layer/dense/MatMul_grad/MatMul_1MatMulhidden_layer/concat)gradients/output_layer/dense/Neg_grad/Neg*
T0*
transpose_a(*
transpose_b( 
i
+gradients/hidden_layer/dense/Pow_grad/ShapeShapehidden_layer/dense/Maximum*
out_type0*
T0
V
-gradients/hidden_layer/dense/Pow_grad/Shape_1Const*
dtype0*
valueB 
?
;gradients/hidden_layer/dense/Pow_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/hidden_layer/dense/Pow_grad/Shape-gradients/hidden_layer/dense/Pow_grad/Shape_1*
T0
?
)gradients/hidden_layer/dense/Pow_grad/mulMul/gradients/output_layer/dense/MatMul_grad/MatMulhidden_layer/dense/Pow/y*
T0
X
+gradients/hidden_layer/dense/Pow_grad/sub/yConst*
valueB
 *  ??*
dtype0
?
)gradients/hidden_layer/dense/Pow_grad/subSubhidden_layer/dense/Pow/y+gradients/hidden_layer/dense/Pow_grad/sub/y*
T0
?
)gradients/hidden_layer/dense/Pow_grad/PowPowhidden_layer/dense/Maximum)gradients/hidden_layer/dense/Pow_grad/sub*
T0
?
+gradients/hidden_layer/dense/Pow_grad/mul_1Mul)gradients/hidden_layer/dense/Pow_grad/mul)gradients/hidden_layer/dense/Pow_grad/Pow*
T0
?
)gradients/hidden_layer/dense/Pow_grad/SumSum+gradients/hidden_layer/dense/Pow_grad/mul_1;gradients/hidden_layer/dense/Pow_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
?
-gradients/hidden_layer/dense/Pow_grad/ReshapeReshape)gradients/hidden_layer/dense/Pow_grad/Sum+gradients/hidden_layer/dense/Pow_grad/Shape*
Tshape0*
T0
\
/gradients/hidden_layer/dense/Pow_grad/Greater/yConst*
valueB
 *    *
dtype0
?
-gradients/hidden_layer/dense/Pow_grad/GreaterGreaterhidden_layer/dense/Maximum/gradients/hidden_layer/dense/Pow_grad/Greater/y*
T0
U
)gradients/hidden_layer/dense/Pow_grad/LogLoghidden_layer/dense/Maximum*
T0
b
0gradients/hidden_layer/dense/Pow_grad/zeros_like	ZerosLikehidden_layer/dense/Maximum*
T0
?
,gradients/hidden_layer/dense/Pow_grad/SelectSelect-gradients/hidden_layer/dense/Pow_grad/Greater)gradients/hidden_layer/dense/Pow_grad/Log0gradients/hidden_layer/dense/Pow_grad/zeros_like*
T0
?
+gradients/hidden_layer/dense/Pow_grad/mul_2Mul/gradients/output_layer/dense/MatMul_grad/MatMulhidden_layer/dense/Pow*
T0
?
+gradients/hidden_layer/dense/Pow_grad/mul_3Mul+gradients/hidden_layer/dense/Pow_grad/mul_2,gradients/hidden_layer/dense/Pow_grad/Select*
T0
?
+gradients/hidden_layer/dense/Pow_grad/Sum_1Sum+gradients/hidden_layer/dense/Pow_grad/mul_3=gradients/hidden_layer/dense/Pow_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
?
/gradients/hidden_layer/dense/Pow_grad/Reshape_1Reshape+gradients/hidden_layer/dense/Pow_grad/Sum_1-gradients/hidden_layer/dense/Pow_grad/Shape_1*
Tshape0*
T0
X
/gradients/hidden_layer/dense/Maximum_grad/ShapeConst*
valueB *
dtype0
k
1gradients/hidden_layer/dense/Maximum_grad/Shape_1Shapehidden_layer/dense/sub*
out_type0*
T0
?
1gradients/hidden_layer/dense/Maximum_grad/Shape_2Shape-gradients/hidden_layer/dense/Pow_grad/Reshape*
T0*
out_type0
b
5gradients/hidden_layer/dense/Maximum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
?
/gradients/hidden_layer/dense/Maximum_grad/zerosFill1gradients/hidden_layer/dense/Maximum_grad/Shape_25gradients/hidden_layer/dense/Maximum_grad/zeros/Const*
T0
?
6gradients/hidden_layer/dense/Maximum_grad/GreaterEqualGreaterEqualhidden_layer/dense/Maximum/xhidden_layer/dense/sub*
T0
?
?gradients/hidden_layer/dense/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/hidden_layer/dense/Maximum_grad/Shape1gradients/hidden_layer/dense/Maximum_grad/Shape_1*
T0
?
0gradients/hidden_layer/dense/Maximum_grad/SelectSelect6gradients/hidden_layer/dense/Maximum_grad/GreaterEqual-gradients/hidden_layer/dense/Pow_grad/Reshape/gradients/hidden_layer/dense/Maximum_grad/zeros*
T0
?
2gradients/hidden_layer/dense/Maximum_grad/Select_1Select6gradients/hidden_layer/dense/Maximum_grad/GreaterEqual/gradients/hidden_layer/dense/Maximum_grad/zeros-gradients/hidden_layer/dense/Pow_grad/Reshape*
T0
?
-gradients/hidden_layer/dense/Maximum_grad/SumSum0gradients/hidden_layer/dense/Maximum_grad/Select?gradients/hidden_layer/dense/Maximum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
?
1gradients/hidden_layer/dense/Maximum_grad/ReshapeReshape-gradients/hidden_layer/dense/Maximum_grad/Sum/gradients/hidden_layer/dense/Maximum_grad/Shape*
Tshape0*
T0
?
/gradients/hidden_layer/dense/Maximum_grad/Sum_1Sum2gradients/hidden_layer/dense/Maximum_grad/Select_1Agradients/hidden_layer/dense/Maximum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
?
3gradients/hidden_layer/dense/Maximum_grad/Reshape_1Reshape/gradients/hidden_layer/dense/Maximum_grad/Sum_11gradients/hidden_layer/dense/Maximum_grad/Shape_1*
T0*
Tshape0
T
+gradients/hidden_layer/dense/sub_grad/ShapeConst*
dtype0*
valueB 
g
-gradients/hidden_layer/dense/sub_grad/Shape_1Shapehidden_layer/dense/Exp*
out_type0*
T0
?
;gradients/hidden_layer/dense/sub_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/hidden_layer/dense/sub_grad/Shape-gradients/hidden_layer/dense/sub_grad/Shape_1*
T0
?
)gradients/hidden_layer/dense/sub_grad/SumSum3gradients/hidden_layer/dense/Maximum_grad/Reshape_1;gradients/hidden_layer/dense/sub_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
?
-gradients/hidden_layer/dense/sub_grad/ReshapeReshape)gradients/hidden_layer/dense/sub_grad/Sum+gradients/hidden_layer/dense/sub_grad/Shape*
Tshape0*
T0
?
+gradients/hidden_layer/dense/sub_grad/Sum_1Sum3gradients/hidden_layer/dense/Maximum_grad/Reshape_1=gradients/hidden_layer/dense/sub_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( 
f
)gradients/hidden_layer/dense/sub_grad/NegNeg+gradients/hidden_layer/dense/sub_grad/Sum_1*
T0
?
/gradients/hidden_layer/dense/sub_grad/Reshape_1Reshape)gradients/hidden_layer/dense/sub_grad/Neg-gradients/hidden_layer/dense/sub_grad/Shape_1*
Tshape0*
T0
?
)gradients/hidden_layer/dense/Exp_grad/mulMul/gradients/hidden_layer/dense/sub_grad/Reshape_1hidden_layer/dense/Exp*
T0
d
)gradients/hidden_layer/dense/Neg_grad/NegNeg)gradients/hidden_layer/dense/Exp_grad/mul*
T0
?
5gradients/hidden_layer/dense/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients/hidden_layer/dense/Neg_grad/Neg*
T0*
data_formatNHWC
?
/gradients/hidden_layer/dense/MatMul_grad/MatMulMatMul)gradients/hidden_layer/dense/Neg_grad/Negdense/kernel/read*
transpose_b(*
T0*
transpose_a( 
?
1gradients/hidden_layer/dense/MatMul_grad/MatMul_1MatMuldata_)gradients/hidden_layer/dense/Neg_grad/Neg*
transpose_a(*
transpose_b( *
T0
|
&dense/kernel/Adagrad/Initializer/ConstConst*
_class
loc:@dense/kernel*
dtype0*
valueB*???=
?
dense/kernel/Adagrad
VariableV2*
shared_name *
shape
:*
_class
loc:@dense/kernel*
	container *
dtype0
?
dense/kernel/Adagrad/AssignAssigndense/kernel/Adagrad&dense/kernel/Adagrad/Initializer/Const*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel*
T0
e
dense/kernel/Adagrad/readIdentitydense/kernel/Adagrad*
_class
loc:@dense/kernel*
T0
t
$dense/bias/Adagrad/Initializer/ConstConst*
valueB*???=*
_class
loc:@dense/bias*
dtype0
?
dense/bias/Adagrad
VariableV2*
shared_name *
_class
loc:@dense/bias*
	container *
dtype0*
shape:
?
dense/bias/Adagrad/AssignAssigndense/bias/Adagrad$dense/bias/Adagrad/Initializer/Const*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0
_
dense/bias/Adagrad/readIdentitydense/bias/Adagrad*
T0*
_class
loc:@dense/bias
?
(dense_1/kernel/Adagrad/Initializer/ConstConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB*???=
?
dense_1/kernel/Adagrad
VariableV2*
dtype0*
shape
:*!
_class
loc:@dense_1/kernel*
	container *
shared_name 
?
dense_1/kernel/Adagrad/AssignAssigndense_1/kernel/Adagrad(dense_1/kernel/Adagrad/Initializer/Const*
use_locking(*!
_class
loc:@dense_1/kernel*
T0*
validate_shape(
k
dense_1/kernel/Adagrad/readIdentitydense_1/kernel/Adagrad*!
_class
loc:@dense_1/kernel*
T0
x
&dense_1/bias/Adagrad/Initializer/ConstConst*
_class
loc:@dense_1/bias*
valueB*???=*
dtype0
?
dense_1/bias/Adagrad
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense_1/bias
?
dense_1/bias/Adagrad/AssignAssigndense_1/bias/Adagrad&dense_1/bias/Adagrad/Initializer/Const*
_class
loc:@dense_1/bias*
T0*
use_locking(*
validate_shape(
e
dense_1/bias/Adagrad/readIdentitydense_1/bias/Adagrad*
T0*
_class
loc:@dense_1/bias
?
,optimizeOp_/update_dense/kernel/ApplyAdagradApplyAdagraddense/kerneldense/kernel/Adagradlearn_rate_1gradients/hidden_layer/dense/MatMul_grad/MatMul_1*
use_locking( *
_class
loc:@dense/kernel*
T0
?
*optimizeOp_/update_dense/bias/ApplyAdagradApplyAdagrad
dense/biasdense/bias/Adagradlearn_rate_5gradients/hidden_layer/dense/BiasAdd_grad/BiasAddGrad*
_class
loc:@dense/bias*
use_locking( *
T0
?
.optimizeOp_/update_dense_1/kernel/ApplyAdagradApplyAdagraddense_1/kerneldense_1/kernel/Adagradlearn_rate_1gradients/output_layer/dense/MatMul_grad/MatMul_1*
use_locking( *
T0*!
_class
loc:@dense_1/kernel
?
,optimizeOp_/update_dense_1/bias/ApplyAdagradApplyAdagraddense_1/biasdense_1/bias/Adagradlearn_rate_5gradients/output_layer/dense/BiasAdd_grad/BiasAddGrad*
T0*
_class
loc:@dense_1/bias*
use_locking( 
?
optimizeOp_NoOp-^optimizeOp_/update_dense/kernel/ApplyAdagrad+^optimizeOp_/update_dense/bias/ApplyAdagrad/^optimizeOp_/update_dense_1/kernel/ApplyAdagrad-^optimizeOp_/update_dense_1/bias/ApplyAdagrad
?
initNoOp^dense/kernel/Assign^dense/bias/Assign^dense_1/kernel/Assign^dense_1/bias/Assign^dense/kernel/Adagrad/Assign^dense/bias/Adagrad/Assign^dense_1/kernel/Adagrad/Assign^dense_1/bias/Adagrad/Assign"