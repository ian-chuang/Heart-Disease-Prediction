??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-0-g3f878cff5b68??
v
layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:)2*
shared_namelayer1/kernel
o
!layer1/kernel/Read/ReadVariableOpReadVariableOplayer1/kernel*
_output_shapes

:)2*
dtype0
n
layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namelayer1/bias
g
layer1/bias/Read/ReadVariableOpReadVariableOplayer1/bias*
_output_shapes
:2*
dtype0
|
dense_487/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*!
shared_namedense_487/kernel
u
$dense_487/kernel/Read/ReadVariableOpReadVariableOpdense_487/kernel*
_output_shapes

:2*
dtype0
t
dense_487/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_487/bias
m
"dense_487/bias/Read/ReadVariableOpReadVariableOpdense_487/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/layer1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:)2*%
shared_nameAdam/layer1/kernel/m
}
(Adam/layer1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/layer1/kernel/m*
_output_shapes

:)2*
dtype0
|
Adam/layer1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*#
shared_nameAdam/layer1/bias/m
u
&Adam/layer1/bias/m/Read/ReadVariableOpReadVariableOpAdam/layer1/bias/m*
_output_shapes
:2*
dtype0
?
Adam/dense_487/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*(
shared_nameAdam/dense_487/kernel/m
?
+Adam/dense_487/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_487/kernel/m*
_output_shapes

:2*
dtype0
?
Adam/dense_487/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_487/bias/m
{
)Adam/dense_487/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_487/bias/m*
_output_shapes
:*
dtype0
?
Adam/layer1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:)2*%
shared_nameAdam/layer1/kernel/v
}
(Adam/layer1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/layer1/kernel/v*
_output_shapes

:)2*
dtype0
|
Adam/layer1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*#
shared_nameAdam/layer1/bias/v
u
&Adam/layer1/bias/v/Read/ReadVariableOpReadVariableOpAdam/layer1/bias/v*
_output_shapes
:2*
dtype0
?
Adam/dense_487/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*(
shared_nameAdam/dense_487/kernel/v
?
+Adam/dense_487/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_487/kernel/v*
_output_shapes

:2*
dtype0
?
Adam/dense_487/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_487/bias/v
{
)Adam/dense_487/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_487/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?&
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?&
value?%B?% B?%
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures*
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses* 
?

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses*
?
$iter

%beta_1

&beta_2
	'decay
(learning_ratemImJmKmLvMvNvOvP*
 
0
1
2
3*
 
0
1
2
3*
* 
?
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
* 
* 
* 

.serving_default* 
]W
VARIABLE_VALUElayer1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElayer1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
/non_trainable_variables

0layers
1metrics
2layer_regularization_losses
3layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEdense_487/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_487/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

>0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	@total
	Acount
B	variables
C	keras_api*
H
	Dtotal
	Ecount
F
_fn_kwargs
G	variables
H	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

@0
A1*

B	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

D0
E1*

G	variables*
?z
VARIABLE_VALUEAdam/layer1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/layer1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/dense_487/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_487/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/layer1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/layer1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/dense_487/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_487/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_layer1_inputPlaceholder*'
_output_shapes
:?????????)*
dtype0*
shape:?????????)
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_layer1_inputlayer1/kernellayer1/biasdense_487/kerneldense_487/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? */
f*R(
&__inference_signature_wrapper_36535155
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!layer1/kernel/Read/ReadVariableOplayer1/bias/Read/ReadVariableOp$dense_487/kernel/Read/ReadVariableOp"dense_487/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/layer1/kernel/m/Read/ReadVariableOp&Adam/layer1/bias/m/Read/ReadVariableOp+Adam/dense_487/kernel/m/Read/ReadVariableOp)Adam/dense_487/bias/m/Read/ReadVariableOp(Adam/layer1/kernel/v/Read/ReadVariableOp&Adam/layer1/bias/v/Read/ReadVariableOp+Adam/dense_487/kernel/v/Read/ReadVariableOp)Adam/dense_487/bias/v/Read/ReadVariableOpConst*"
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_save_36535308
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer1/kernellayer1/biasdense_487/kerneldense_487/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/layer1/kernel/mAdam/layer1/bias/mAdam/dense_487/kernel/mAdam/dense_487/bias/mAdam/layer1/kernel/vAdam/layer1/bias/vAdam/dense_487/kernel/vAdam/dense_487/bias/v*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference__traced_restore_36535381??
?U
?
$__inference__traced_restore_36535381
file_prefix0
assignvariableop_layer1_kernel:)2,
assignvariableop_1_layer1_bias:25
#assignvariableop_2_dense_487_kernel:2/
!assignvariableop_3_dense_487_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: :
(assignvariableop_13_adam_layer1_kernel_m:)24
&assignvariableop_14_adam_layer1_bias_m:2=
+assignvariableop_15_adam_dense_487_kernel_m:27
)assignvariableop_16_adam_dense_487_bias_m::
(assignvariableop_17_adam_layer1_kernel_v:)24
&assignvariableop_18_adam_layer1_bias_v:2=
+assignvariableop_19_adam_dense_487_kernel_v:27
)assignvariableop_20_adam_dense_487_bias_v:
identity_22??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_layer1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_layer1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_487_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_487_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp(assignvariableop_13_adam_layer1_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_layer1_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp+assignvariableop_15_adam_dense_487_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_487_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_layer1_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_layer1_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_dense_487_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_dense_487_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
,__inference_dense_487_layer_call_fn_36535211

inputs
unknown:2
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_487_layer_call_and_return_conditional_losses_36534918o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
-__inference_classifier_layer_call_fn_36535082

inputs
unknown:)2
	unknown_0:2
	unknown_1:2
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_classifier_layer_call_and_return_conditional_losses_36534925o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????): : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?
?
H__inference_classifier_layer_call_and_return_conditional_losses_36535140

inputs7
%layer1_matmul_readvariableop_resource:)24
&layer1_biasadd_readvariableop_resource:2:
(dense_487_matmul_readvariableop_resource:27
)dense_487_biasadd_readvariableop_resource:
identity?? dense_487/BiasAdd/ReadVariableOp?dense_487/MatMul/ReadVariableOp?layer1/BiasAdd/ReadVariableOp?layer1/MatMul/ReadVariableOp?
layer1/MatMul/ReadVariableOpReadVariableOp%layer1_matmul_readvariableop_resource*
_output_shapes

:)2*
dtype0w
layer1/MatMulMatMulinputs$layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
layer1/BiasAdd/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
layer1/BiasAddBiasAddlayer1/MatMul:product:0%layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2^
layer1/ReluRelulayer1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2^
dropout_481/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_481/dropout/MulMullayer1/Relu:activations:0"dropout_481/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2b
dropout_481/dropout/ShapeShapelayer1/Relu:activations:0*
T0*
_output_shapes
:?
0dropout_481/dropout/random_uniform/RandomUniformRandomUniform"dropout_481/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0g
"dropout_481/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
 dropout_481/dropout/GreaterEqualGreaterEqual9dropout_481/dropout/random_uniform/RandomUniform:output:0+dropout_481/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2?
dropout_481/dropout/CastCast$dropout_481/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2?
dropout_481/dropout/Mul_1Muldropout_481/dropout/Mul:z:0dropout_481/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2?
dense_487/MatMul/ReadVariableOpReadVariableOp(dense_487_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
dense_487/MatMulMatMuldropout_481/dropout/Mul_1:z:0'dense_487/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_487/BiasAdd/ReadVariableOpReadVariableOp)dense_487_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_487/BiasAddBiasAdddense_487/MatMul:product:0(dense_487/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_487/SigmoidSigmoiddense_487/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_487/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_487/BiasAdd/ReadVariableOp ^dense_487/MatMul/ReadVariableOp^layer1/BiasAdd/ReadVariableOp^layer1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????): : : : 2D
 dense_487/BiasAdd/ReadVariableOp dense_487/BiasAdd/ReadVariableOp2B
dense_487/MatMul/ReadVariableOpdense_487/MatMul/ReadVariableOp2>
layer1/BiasAdd/ReadVariableOplayer1/BiasAdd/ReadVariableOp2<
layer1/MatMul/ReadVariableOplayer1/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?
?
-__inference_classifier_layer_call_fn_36535033
layer1_input
unknown:)2
	unknown_0:2
	unknown_1:2
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllayer1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_classifier_layer_call_and_return_conditional_losses_36535009o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????): : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????)
&
_user_specified_namelayer1_input
?
?
&__inference_signature_wrapper_36535155
layer1_input
unknown:)2
	unknown_0:2
	unknown_1:2
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllayer1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__wrapped_model_36534876o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????): : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????)
&
_user_specified_namelayer1_input
?

?
G__inference_dense_487_layer_call_and_return_conditional_losses_36534918

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
g
.__inference_dropout_481_layer_call_fn_36535185

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dropout_481_layer_call_and_return_conditional_losses_36534966o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????222
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
H__inference_classifier_layer_call_and_return_conditional_losses_36535009

inputs!
layer1_36534997:)2
layer1_36534999:2$
dense_487_36535003:2 
dense_487_36535005:
identity??!dense_487/StatefulPartitionedCall?#dropout_481/StatefulPartitionedCall?layer1/StatefulPartitionedCall?
layer1/StatefulPartitionedCallStatefulPartitionedCallinputslayer1_36534997layer1_36534999*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_layer1_layer_call_and_return_conditional_losses_36534894?
#dropout_481/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dropout_481_layer_call_and_return_conditional_losses_36534966?
!dense_487/StatefulPartitionedCallStatefulPartitionedCall,dropout_481/StatefulPartitionedCall:output:0dense_487_36535003dense_487_36535005*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_487_layer_call_and_return_conditional_losses_36534918y
IdentityIdentity*dense_487/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_487/StatefulPartitionedCall$^dropout_481/StatefulPartitionedCall^layer1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????): : : : 2F
!dense_487/StatefulPartitionedCall!dense_487/StatefulPartitionedCall2J
#dropout_481/StatefulPartitionedCall#dropout_481/StatefulPartitionedCall2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?
?
H__inference_classifier_layer_call_and_return_conditional_losses_36534925

inputs!
layer1_36534895:)2
layer1_36534897:2$
dense_487_36534919:2 
dense_487_36534921:
identity??!dense_487/StatefulPartitionedCall?layer1/StatefulPartitionedCall?
layer1/StatefulPartitionedCallStatefulPartitionedCallinputslayer1_36534895layer1_36534897*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_layer1_layer_call_and_return_conditional_losses_36534894?
dropout_481/PartitionedCallPartitionedCall'layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dropout_481_layer_call_and_return_conditional_losses_36534905?
!dense_487/StatefulPartitionedCallStatefulPartitionedCall$dropout_481/PartitionedCall:output:0dense_487_36534919dense_487_36534921*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_487_layer_call_and_return_conditional_losses_36534918y
IdentityIdentity*dense_487/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_487/StatefulPartitionedCall^layer1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????): : : : 2F
!dense_487/StatefulPartitionedCall!dense_487/StatefulPartitionedCall2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?
g
I__inference_dropout_481_layer_call_and_return_conditional_losses_36534905

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
-__inference_classifier_layer_call_fn_36535095

inputs
unknown:)2
	unknown_0:2
	unknown_1:2
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_classifier_layer_call_and_return_conditional_losses_36535009o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????): : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?
?
-__inference_classifier_layer_call_fn_36534936
layer1_input
unknown:)2
	unknown_0:2
	unknown_1:2
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllayer1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_classifier_layer_call_and_return_conditional_losses_36534925o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????): : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????)
&
_user_specified_namelayer1_input
?
?
H__inference_classifier_layer_call_and_return_conditional_losses_36535063
layer1_input!
layer1_36535051:)2
layer1_36535053:2$
dense_487_36535057:2 
dense_487_36535059:
identity??!dense_487/StatefulPartitionedCall?#dropout_481/StatefulPartitionedCall?layer1/StatefulPartitionedCall?
layer1/StatefulPartitionedCallStatefulPartitionedCalllayer1_inputlayer1_36535051layer1_36535053*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_layer1_layer_call_and_return_conditional_losses_36534894?
#dropout_481/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dropout_481_layer_call_and_return_conditional_losses_36534966?
!dense_487/StatefulPartitionedCallStatefulPartitionedCall,dropout_481/StatefulPartitionedCall:output:0dense_487_36535057dense_487_36535059*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_487_layer_call_and_return_conditional_losses_36534918y
IdentityIdentity*dense_487/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_487/StatefulPartitionedCall$^dropout_481/StatefulPartitionedCall^layer1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????): : : : 2F
!dense_487/StatefulPartitionedCall!dense_487/StatefulPartitionedCall2J
#dropout_481/StatefulPartitionedCall#dropout_481/StatefulPartitionedCall2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall:U Q
'
_output_shapes
:?????????)
&
_user_specified_namelayer1_input
?

?
D__inference_layer1_layer_call_and_return_conditional_losses_36535175

inputs0
matmul_readvariableop_resource:)2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:)2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????): : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?1
?
!__inference__traced_save_36535308
file_prefix,
(savev2_layer1_kernel_read_readvariableop*
&savev2_layer1_bias_read_readvariableop/
+savev2_dense_487_kernel_read_readvariableop-
)savev2_dense_487_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_adam_layer1_kernel_m_read_readvariableop1
-savev2_adam_layer1_bias_m_read_readvariableop6
2savev2_adam_dense_487_kernel_m_read_readvariableop4
0savev2_adam_dense_487_bias_m_read_readvariableop3
/savev2_adam_layer1_kernel_v_read_readvariableop1
-savev2_adam_layer1_bias_v_read_readvariableop6
2savev2_adam_dense_487_kernel_v_read_readvariableop4
0savev2_adam_dense_487_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_layer1_kernel_read_readvariableop&savev2_layer1_bias_read_readvariableop+savev2_dense_487_kernel_read_readvariableop)savev2_dense_487_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_layer1_kernel_m_read_readvariableop-savev2_adam_layer1_bias_m_read_readvariableop2savev2_adam_dense_487_kernel_m_read_readvariableop0savev2_adam_dense_487_bias_m_read_readvariableop/savev2_adam_layer1_kernel_v_read_readvariableop-savev2_adam_layer1_bias_v_read_readvariableop2savev2_adam_dense_487_kernel_v_read_readvariableop0savev2_adam_dense_487_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapesx
v: :)2:2:2:: : : : : : : : : :)2:2:2::)2:2:2:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:)2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:)2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::$ 

_output_shapes

:)2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: 
?
?
H__inference_classifier_layer_call_and_return_conditional_losses_36535114

inputs7
%layer1_matmul_readvariableop_resource:)24
&layer1_biasadd_readvariableop_resource:2:
(dense_487_matmul_readvariableop_resource:27
)dense_487_biasadd_readvariableop_resource:
identity?? dense_487/BiasAdd/ReadVariableOp?dense_487/MatMul/ReadVariableOp?layer1/BiasAdd/ReadVariableOp?layer1/MatMul/ReadVariableOp?
layer1/MatMul/ReadVariableOpReadVariableOp%layer1_matmul_readvariableop_resource*
_output_shapes

:)2*
dtype0w
layer1/MatMulMatMulinputs$layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
layer1/BiasAdd/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
layer1/BiasAddBiasAddlayer1/MatMul:product:0%layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2^
layer1/ReluRelulayer1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2m
dropout_481/IdentityIdentitylayer1/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
dense_487/MatMul/ReadVariableOpReadVariableOp(dense_487_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
dense_487/MatMulMatMuldropout_481/Identity:output:0'dense_487/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_487/BiasAdd/ReadVariableOpReadVariableOp)dense_487_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_487/BiasAddBiasAdddense_487/MatMul:product:0(dense_487/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_487/SigmoidSigmoiddense_487/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_487/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_487/BiasAdd/ReadVariableOp ^dense_487/MatMul/ReadVariableOp^layer1/BiasAdd/ReadVariableOp^layer1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????): : : : 2D
 dense_487/BiasAdd/ReadVariableOp dense_487/BiasAdd/ReadVariableOp2B
dense_487/MatMul/ReadVariableOpdense_487/MatMul/ReadVariableOp2>
layer1/BiasAdd/ReadVariableOplayer1/BiasAdd/ReadVariableOp2<
layer1/MatMul/ReadVariableOplayer1/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?	
h
I__inference_dropout_481_layer_call_and_return_conditional_losses_36534966

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
h
I__inference_dropout_481_layer_call_and_return_conditional_losses_36535202

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
G__inference_dense_487_layer_call_and_return_conditional_losses_36535222

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
J
.__inference_dropout_481_layer_call_fn_36535180

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dropout_481_layer_call_and_return_conditional_losses_36534905`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
D__inference_layer1_layer_call_and_return_conditional_losses_36534894

inputs0
matmul_readvariableop_resource:)2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:)2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????): : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?
?
H__inference_classifier_layer_call_and_return_conditional_losses_36535048
layer1_input!
layer1_36535036:)2
layer1_36535038:2$
dense_487_36535042:2 
dense_487_36535044:
identity??!dense_487/StatefulPartitionedCall?layer1/StatefulPartitionedCall?
layer1/StatefulPartitionedCallStatefulPartitionedCalllayer1_inputlayer1_36535036layer1_36535038*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_layer1_layer_call_and_return_conditional_losses_36534894?
dropout_481/PartitionedCallPartitionedCall'layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dropout_481_layer_call_and_return_conditional_losses_36534905?
!dense_487/StatefulPartitionedCallStatefulPartitionedCall$dropout_481/PartitionedCall:output:0dense_487_36535042dense_487_36535044*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_487_layer_call_and_return_conditional_losses_36534918y
IdentityIdentity*dense_487/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_487/StatefulPartitionedCall^layer1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????): : : : 2F
!dense_487/StatefulPartitionedCall!dense_487/StatefulPartitionedCall2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall:U Q
'
_output_shapes
:?????????)
&
_user_specified_namelayer1_input
?
?
#__inference__wrapped_model_36534876
layer1_inputB
0classifier_layer1_matmul_readvariableop_resource:)2?
1classifier_layer1_biasadd_readvariableop_resource:2E
3classifier_dense_487_matmul_readvariableop_resource:2B
4classifier_dense_487_biasadd_readvariableop_resource:
identity??+classifier/dense_487/BiasAdd/ReadVariableOp?*classifier/dense_487/MatMul/ReadVariableOp?(classifier/layer1/BiasAdd/ReadVariableOp?'classifier/layer1/MatMul/ReadVariableOp?
'classifier/layer1/MatMul/ReadVariableOpReadVariableOp0classifier_layer1_matmul_readvariableop_resource*
_output_shapes

:)2*
dtype0?
classifier/layer1/MatMulMatMullayer1_input/classifier/layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
(classifier/layer1/BiasAdd/ReadVariableOpReadVariableOp1classifier_layer1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
classifier/layer1/BiasAddBiasAdd"classifier/layer1/MatMul:product:00classifier/layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2t
classifier/layer1/ReluRelu"classifier/layer1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
classifier/dropout_481/IdentityIdentity$classifier/layer1/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*classifier/dense_487/MatMul/ReadVariableOpReadVariableOp3classifier_dense_487_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
classifier/dense_487/MatMulMatMul(classifier/dropout_481/Identity:output:02classifier/dense_487/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+classifier/dense_487/BiasAdd/ReadVariableOpReadVariableOp4classifier_dense_487_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
classifier/dense_487/BiasAddBiasAdd%classifier/dense_487/MatMul:product:03classifier/dense_487/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
classifier/dense_487/SigmoidSigmoid%classifier/dense_487/BiasAdd:output:0*
T0*'
_output_shapes
:?????????o
IdentityIdentity classifier/dense_487/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp,^classifier/dense_487/BiasAdd/ReadVariableOp+^classifier/dense_487/MatMul/ReadVariableOp)^classifier/layer1/BiasAdd/ReadVariableOp(^classifier/layer1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????): : : : 2Z
+classifier/dense_487/BiasAdd/ReadVariableOp+classifier/dense_487/BiasAdd/ReadVariableOp2X
*classifier/dense_487/MatMul/ReadVariableOp*classifier/dense_487/MatMul/ReadVariableOp2T
(classifier/layer1/BiasAdd/ReadVariableOp(classifier/layer1/BiasAdd/ReadVariableOp2R
'classifier/layer1/MatMul/ReadVariableOp'classifier/layer1/MatMul/ReadVariableOp:U Q
'
_output_shapes
:?????????)
&
_user_specified_namelayer1_input
?
?
)__inference_layer1_layer_call_fn_36535164

inputs
unknown:)2
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_layer1_layer_call_and_return_conditional_losses_36534894o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????): : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?
g
I__inference_dropout_481_layer_call_and_return_conditional_losses_36535190

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
layer1_input5
serving_default_layer1_input:0?????????)=
	dense_4870
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?P
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
?
$iter

%beta_1

&beta_2
	'decay
(learning_ratemImJmKmLvMvNvOvP"
	optimizer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
?2?
-__inference_classifier_layer_call_fn_36534936
-__inference_classifier_layer_call_fn_36535082
-__inference_classifier_layer_call_fn_36535095
-__inference_classifier_layer_call_fn_36535033?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_classifier_layer_call_and_return_conditional_losses_36535114
H__inference_classifier_layer_call_and_return_conditional_losses_36535140
H__inference_classifier_layer_call_and_return_conditional_losses_36535048
H__inference_classifier_layer_call_and_return_conditional_losses_36535063?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
#__inference__wrapped_model_36534876layer1_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
.serving_default"
signature_map
:)22layer1/kernel
:22layer1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
/non_trainable_variables

0layers
1metrics
2layer_regularization_losses
3layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_layer1_layer_call_fn_36535164?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_layer1_layer_call_and_return_conditional_losses_36535175?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
.__inference_dropout_481_layer_call_fn_36535180
.__inference_dropout_481_layer_call_fn_36535185?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_dropout_481_layer_call_and_return_conditional_losses_36535190
I__inference_dropout_481_layer_call_and_return_conditional_losses_36535202?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
": 22dense_487/kernel
:2dense_487/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
?2?
,__inference_dense_487_layer_call_fn_36535211?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_dense_487_layer_call_and_return_conditional_losses_36535222?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
&__inference_signature_wrapper_36535155layer1_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	@total
	Acount
B	variables
C	keras_api"
_tf_keras_metric
^
	Dtotal
	Ecount
F
_fn_kwargs
G	variables
H	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
@0
A1"
trackable_list_wrapper
-
B	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
D0
E1"
trackable_list_wrapper
-
G	variables"
_generic_user_object
$:")22Adam/layer1/kernel/m
:22Adam/layer1/bias/m
':%22Adam/dense_487/kernel/m
!:2Adam/dense_487/bias/m
$:")22Adam/layer1/kernel/v
:22Adam/layer1/bias/v
':%22Adam/dense_487/kernel/v
!:2Adam/dense_487/bias/v?
#__inference__wrapped_model_36534876t5?2
+?(
&?#
layer1_input?????????)
? "5?2
0
	dense_487#? 
	dense_487??????????
H__inference_classifier_layer_call_and_return_conditional_losses_36535048l=?:
3?0
&?#
layer1_input?????????)
p 

 
? "%?"
?
0?????????
? ?
H__inference_classifier_layer_call_and_return_conditional_losses_36535063l=?:
3?0
&?#
layer1_input?????????)
p

 
? "%?"
?
0?????????
? ?
H__inference_classifier_layer_call_and_return_conditional_losses_36535114f7?4
-?*
 ?
inputs?????????)
p 

 
? "%?"
?
0?????????
? ?
H__inference_classifier_layer_call_and_return_conditional_losses_36535140f7?4
-?*
 ?
inputs?????????)
p

 
? "%?"
?
0?????????
? ?
-__inference_classifier_layer_call_fn_36534936_=?:
3?0
&?#
layer1_input?????????)
p 

 
? "???????????
-__inference_classifier_layer_call_fn_36535033_=?:
3?0
&?#
layer1_input?????????)
p

 
? "???????????
-__inference_classifier_layer_call_fn_36535082Y7?4
-?*
 ?
inputs?????????)
p 

 
? "???????????
-__inference_classifier_layer_call_fn_36535095Y7?4
-?*
 ?
inputs?????????)
p

 
? "???????????
G__inference_dense_487_layer_call_and_return_conditional_losses_36535222\/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????
? 
,__inference_dense_487_layer_call_fn_36535211O/?,
%?"
 ?
inputs?????????2
? "???????????
I__inference_dropout_481_layer_call_and_return_conditional_losses_36535190\3?0
)?&
 ?
inputs?????????2
p 
? "%?"
?
0?????????2
? ?
I__inference_dropout_481_layer_call_and_return_conditional_losses_36535202\3?0
)?&
 ?
inputs?????????2
p
? "%?"
?
0?????????2
? ?
.__inference_dropout_481_layer_call_fn_36535180O3?0
)?&
 ?
inputs?????????2
p 
? "??????????2?
.__inference_dropout_481_layer_call_fn_36535185O3?0
)?&
 ?
inputs?????????2
p
? "??????????2?
D__inference_layer1_layer_call_and_return_conditional_losses_36535175\/?,
%?"
 ?
inputs?????????)
? "%?"
?
0?????????2
? |
)__inference_layer1_layer_call_fn_36535164O/?,
%?"
 ?
inputs?????????)
? "??????????2?
&__inference_signature_wrapper_36535155?E?B
? 
;?8
6
layer1_input&?#
layer1_input?????????)"5?2
0
	dense_487#? 
	dense_487?????????