Ç´
¨ù
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
Á
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
executor_typestring ¨
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.7.02v2.7.0-rc1-69-gc256c071bb28

prune_low_magnitude_dense/maskVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*/
shared_name prune_low_magnitude_dense/mask

2prune_low_magnitude_dense/mask/Read/ReadVariableOpReadVariableOpprune_low_magnitude_dense/mask*
_output_shapes

:*
dtype0

#prune_low_magnitude_dense/thresholdVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#prune_low_magnitude_dense/threshold

7prune_low_magnitude_dense/threshold/Read/ReadVariableOpReadVariableOp#prune_low_magnitude_dense/threshold*
_output_shapes
: *
dtype0
 
&prune_low_magnitude_dense/pruning_stepVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *7
shared_name(&prune_low_magnitude_dense/pruning_step

:prune_low_magnitude_dense/pruning_step/Read/ReadVariableOpReadVariableOp&prune_low_magnitude_dense/pruning_step*
_output_shapes
: *
dtype0	
¤
(prune_low_magnitude_dropout/pruning_stepVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *9
shared_name*(prune_low_magnitude_dropout/pruning_step

<prune_low_magnitude_dropout/pruning_step/Read/ReadVariableOpReadVariableOp(prune_low_magnitude_dropout/pruning_step*
_output_shapes
: *
dtype0	

 prune_low_magnitude_dense_1/maskVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" prune_low_magnitude_dense_1/mask

4prune_low_magnitude_dense_1/mask/Read/ReadVariableOpReadVariableOp prune_low_magnitude_dense_1/mask*
_output_shapes

:*
dtype0

%prune_low_magnitude_dense_1/thresholdVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%prune_low_magnitude_dense_1/threshold

9prune_low_magnitude_dense_1/threshold/Read/ReadVariableOpReadVariableOp%prune_low_magnitude_dense_1/threshold*
_output_shapes
: *
dtype0
¤
(prune_low_magnitude_dense_1/pruning_stepVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *9
shared_name*(prune_low_magnitude_dense_1/pruning_step

<prune_low_magnitude_dense_1/pruning_step/Read/ReadVariableOpReadVariableOp(prune_low_magnitude_dense_1/pruning_step*
_output_shapes
: *
dtype0	
ª
+prune_low_magnitude_activation/pruning_stepVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *<
shared_name-+prune_low_magnitude_activation/pruning_step
£
?prune_low_magnitude_activation/pruning_step/Read/ReadVariableOpReadVariableOp+prune_low_magnitude_activation/pruning_step*
_output_shapes
: *
dtype0	
\
iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameiter
U
iter/Read/ReadVariableOpReadVariableOpiter*
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
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
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

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Ó5
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*5
value5B5 Bú4

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
°
pruning_vars
	layer
prunable_weights
mask
	threshold
pruning_step
	variables
trainable_variables
regularization_losses
	keras_api

pruning_vars
	layer
prunable_weights
pruning_step
	variables
trainable_variables
regularization_losses
	keras_api
°
pruning_vars
	layer
prunable_weights
 mask
!	threshold
"pruning_step
#	variables
$trainable_variables
%regularization_losses
&	keras_api

'pruning_vars
	(layer
)prunable_weights
*pruning_step
+	variables
,trainable_variables
-regularization_losses
.	keras_api

/iter

0beta_1

1beta_2
	2decay
3learning_rate4m5m6m7m4v5v6v7v
V
40
51
2
3
4
5
66
77
 8
!9
"10
*11

40
51
62
73
 
­
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
 

=0
h

4kernel
5bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api

40
hf
VARIABLE_VALUEprune_low_magnitude_dense/mask4layer_with_weights-0/mask/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE#prune_low_magnitude_dense/threshold9layer_with_weights-0/threshold/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE&prune_low_magnitude_dense/pruning_step<layer_with_weights-0/pruning_step/.ATTRIBUTES/VARIABLE_VALUE
#
40
51
2
3
4

40
51
 
­
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
 
R
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
 
zx
VARIABLE_VALUE(prune_low_magnitude_dropout/pruning_step<layer_with_weights-1/pruning_step/.ATTRIBUTES/VARIABLE_VALUE

0
 
 
­
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses

P0
h

6kernel
7bias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api

60
jh
VARIABLE_VALUE prune_low_magnitude_dense_1/mask4layer_with_weights-2/mask/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE%prune_low_magnitude_dense_1/threshold9layer_with_weights-2/threshold/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE(prune_low_magnitude_dense_1/pruning_step<layer_with_weights-2/pruning_step/.ATTRIBUTES/VARIABLE_VALUE
#
60
71
 2
!3
"4

60
71
 
­
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
#	variables
$trainable_variables
%regularization_losses
 
R
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
 
}{
VARIABLE_VALUE+prune_low_magnitude_activation/pruning_step<layer_with_weights-3/pruning_step/.ATTRIBUTES/VARIABLE_VALUE

*0
 
 
­
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
+	variables
,trainable_variables
-regularization_losses
CA
VARIABLE_VALUEiter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEdense/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
FD
VARIABLE_VALUE
dense/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_1/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEdense_1/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
8
0
1
2
3
 4
!5
"6
*7

0
1
2
3

c0
d1
 
 

40
1
2

40
51

40
51
 
­
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
>	variables
?trainable_variables
@regularization_losses

0
1
2

0
 
 
 
 
 
 
­
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses

0

0
 
 
 

60
 1
!2

60
71

60
71
 
­
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses

 0
!1
"2

0
 
 
 
 
 
 
­
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
Z	variables
[trainable_variables
\regularization_losses

*0

(0
 
 
 
4
	ytotal
	zcount
{	variables
|	keras_api
F
	}total
	~count

_fn_kwargs
	variables
	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

y0
z1

{	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

}0
~1

	variables
ki
VARIABLE_VALUEAdam/dense/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/dense/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_1/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEAdam/dense_1/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEAdam/dense/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/dense/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_1/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEAdam/dense_1/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
serving_default_dense_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
¹
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_inputdense/kernelprune_low_magnitude_dense/mask
dense/biasdense_1/kernel prune_low_magnitude_dense_1/maskdense_1/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_26678
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ò
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename2prune_low_magnitude_dense/mask/Read/ReadVariableOp7prune_low_magnitude_dense/threshold/Read/ReadVariableOp:prune_low_magnitude_dense/pruning_step/Read/ReadVariableOp<prune_low_magnitude_dropout/pruning_step/Read/ReadVariableOp4prune_low_magnitude_dense_1/mask/Read/ReadVariableOp9prune_low_magnitude_dense_1/threshold/Read/ReadVariableOp<prune_low_magnitude_dense_1/pruning_step/Read/ReadVariableOp?prune_low_magnitude_activation/pruning_step/Read/ReadVariableOpiter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst**
Tin#
!2					*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_28052
©
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameprune_low_magnitude_dense/mask#prune_low_magnitude_dense/threshold&prune_low_magnitude_dense/pruning_step(prune_low_magnitude_dropout/pruning_step prune_low_magnitude_dense_1/mask%prune_low_magnitude_dense_1/threshold(prune_low_magnitude_dense_1/pruning_step+prune_low_magnitude_activation/pruning_stepiterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratedense/kernel
dense/biasdense_1/kerneldense_1/biastotalcounttotal_1count_1Adam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*)
Tin"
 2*
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_28149
Ü
ÿ
E__inference_sequential_layer_call_and_return_conditional_losses_26653
dense_input)
prune_low_magnitude_dense_26624:	 1
prune_low_magnitude_dense_26626:1
prune_low_magnitude_dense_26628:)
prune_low_magnitude_dense_26630: -
prune_low_magnitude_dense_26632:+
!prune_low_magnitude_dropout_26635:	 +
!prune_low_magnitude_dense_1_26638:	 3
!prune_low_magnitude_dense_1_26640:3
!prune_low_magnitude_dense_1_26642:+
!prune_low_magnitude_dense_1_26644: /
!prune_low_magnitude_dense_1_26646:.
$prune_low_magnitude_activation_26649:	 
identity¢6prune_low_magnitude_activation/StatefulPartitionedCall¢1prune_low_magnitude_dense/StatefulPartitionedCall¢3prune_low_magnitude_dense_1/StatefulPartitionedCall¢3prune_low_magnitude_dropout/StatefulPartitionedCall
1prune_low_magnitude_dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputprune_low_magnitude_dense_26624prune_low_magnitude_dense_26626prune_low_magnitude_dense_26628prune_low_magnitude_dense_26630prune_low_magnitude_dense_26632*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_26481Å
3prune_low_magnitude_dropout/StatefulPartitionedCallStatefulPartitionedCall:prune_low_magnitude_dense/StatefulPartitionedCall:output:0!prune_low_magnitude_dropout_26635*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_prune_low_magnitude_dropout_layer_call_and_return_conditional_losses_26283Ú
3prune_low_magnitude_dense_1/StatefulPartitionedCallStatefulPartitionedCall<prune_low_magnitude_dropout/StatefulPartitionedCall:output:0!prune_low_magnitude_dense_1_26638!prune_low_magnitude_dense_1_26640!prune_low_magnitude_dense_1_26642!prune_low_magnitude_dense_1_26644!prune_low_magnitude_dense_1_26646*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_26165Ð
6prune_low_magnitude_activation/StatefulPartitionedCallStatefulPartitionedCall<prune_low_magnitude_dense_1/StatefulPartitionedCall:output:0$prune_low_magnitude_activation_26649*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *b
f]R[
Y__inference_prune_low_magnitude_activation_layer_call_and_return_conditional_losses_25968
IdentityIdentity?prune_low_magnitude_activation/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp7^prune_low_magnitude_activation/StatefulPartitionedCall2^prune_low_magnitude_dense/StatefulPartitionedCall4^prune_low_magnitude_dense_1/StatefulPartitionedCall4^prune_low_magnitude_dropout/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 2p
6prune_low_magnitude_activation/StatefulPartitionedCall6prune_low_magnitude_activation/StatefulPartitionedCall2f
1prune_low_magnitude_dense/StatefulPartitionedCall1prune_low_magnitude_dense/StatefulPartitionedCall2j
3prune_low_magnitude_dense_1/StatefulPartitionedCall3prune_low_magnitude_dense_1/StatefulPartitionedCall2j
3prune_low_magnitude_dropout/StatefulPartitionedCall3prune_low_magnitude_dropout/StatefulPartitionedCall:T P
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namedense_input
¯
Ù
Nprune_low_magnitude_dropout_assert_greater_equal_Assert_AssertGuard_true_26945
prune_low_magnitude_dropout_assert_greater_equal_assert_assertguard_identity_prune_low_magnitude_dropout_assert_greater_equal_all
S
Oprune_low_magnitude_dropout_assert_greater_equal_assert_assertguard_placeholder	U
Qprune_low_magnitude_dropout_assert_greater_equal_assert_assertguard_placeholder_1	R
Nprune_low_magnitude_dropout_assert_greater_equal_assert_assertguard_identity_1
f
Hprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 È
Lprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/IdentityIdentityprune_low_magnitude_dropout_assert_greater_equal_assert_assertguard_identity_prune_low_magnitude_dropout_assert_greater_equal_allI^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: Ò
Nprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity_1IdentityUprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "©
Nprune_low_magnitude_dropout_assert_greater_equal_assert_assertguard_identity_1Wprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

Å
;__inference_prune_low_magnitude_dense_1_layer_call_fn_27628

inputs
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_25839o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ä
®
Rprune_low_magnitude_activation_assert_greater_equal_Assert_AssertGuard_false_27213
prune_low_magnitude_activation_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_activation_assert_greater_equal_all

prune_low_magnitude_activation_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_activation_assert_greater_equal_readvariableop	
prune_low_magnitude_activation_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_activation_assert_greater_equal_y	U
Qprune_low_magnitude_activation_assert_greater_equal_assert_assertguard_identity_1
¢Mprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Assert¤
Tprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.À
Tprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:à
Tprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*\
valueSBQ BKx (prune_low_magnitude_activation/assert_greater_equal/ReadVariableOp:0) = Ó
Tprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*O
valueFBD B>y (prune_low_magnitude_activation/assert_greater_equal/y:0) = 
Mprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/AssertAssertprune_low_magnitude_activation_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_activation_assert_greater_equal_all]prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Assert/data_0:output:0]prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Assert/data_1:output:0]prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Assert/data_2:output:0prune_low_magnitude_activation_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_activation_assert_greater_equal_readvariableop]prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Assert/data_4:output:0prune_low_magnitude_activation_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_activation_assert_greater_equal_y*
T

2		*
_output_shapes
 Ô
Oprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/IdentityIdentityprune_low_magnitude_activation_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_activation_assert_greater_equal_allN^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: ¦
Qprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity_1IdentityXprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity:output:0L^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: Ý
Kprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/NoOpNoOpN^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Assert*"
_acd_function_control_output(*
_output_shapes
 "¯
Qprune_low_magnitude_activation_assert_greater_equal_assert_assertguard_identity_1Zprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2
Mprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/AssertMprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ã
F
cond_true_27596
cond_identity_logicaland_1

cond_identity_1
-
cond/group_depsNoOp*
_output_shapes
 h
cond/IdentityIdentitycond_identity_logicaland_1^cond/group_deps*
T0
*
_output_shapes
: T
cond/Identity_1Identitycond/Identity:output:0*
T0
*
_output_shapes
: "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 

_output_shapes
: 
ÒO

Y__inference_prune_low_magnitude_activation_layer_call_and_return_conditional_losses_25968

inputs!
readvariableop_resource:	 
identity¢AssignVariableOp¢GreaterEqual/ReadVariableOp¢LessEqual/ReadVariableOp¢ReadVariableOp¢Sub/ReadVariableOp¢'assert_greater_equal/Assert/AssertGuard¢#assert_greater_equal/ReadVariableOp¢0polynomial_decay_pruning_schedule/ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	G
add/yConst*
_output_shapes
: *
dtype0	*
value	B	 RU
addAddV2ReadVariableOp:value:0add/y:output:0*
T0	*
_output_shapes
: z
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*
_output_shapes
 *
dtype0	7
updateNoOp^AssignVariableOp*
_output_shapes
 
#assert_greater_equal/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
: *
dtype0	X
assert_greater_equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
!assert_greater_equal/GreaterEqualGreaterEqual+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
T0	*
_output_shapes
: [
assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :·
assert_greater_equal/rangeRange)assert_greater_equal/range/start:output:0"assert_greater_equal/Rank:output:0)assert_greater_equal/range/delta:output:0*
_output_shapes
: 
assert_greater_equal/AllAll%assert_greater_equal/GreaterEqual:z:0#assert_greater_equal/range:output:0*
_output_shapes
: ñ
!assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.
#assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:
#assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = 
#assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = î
'assert_greater_equal/Assert/AssertGuardIf!assert_greater_equal/All:output:0!assert_greater_equal/All:output:0+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *F
else_branch7R5
3assert_greater_equal_Assert_AssertGuard_false_25898*
output_shapes
: *E
then_branch6R4
2assert_greater_equal_Assert_AssertGuard_true_25897
0assert_greater_equal/Assert/AssertGuard/IdentityIdentity0assert_greater_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: Æ
0polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
'polynomial_decay_pruning_schedule/sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R ¹
%polynomial_decay_pruning_schedule/subSub8polynomial_decay_pruning_schedule/ReadVariableOp:value:00polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: 
&polynomial_decay_pruning_schedule/CastCast)polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: £
+polynomial_decay_pruning_schedule/truediv/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  úC·
)polynomial_decay_pruning_schedule/truedivRealDiv*polynomial_decay_pruning_schedule/Cast:y:04polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: £
+polynomial_decay_pruning_schedule/Maximum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *    º
)polynomial_decay_pruning_schedule/MaximumMaximum4polynomial_decay_pruning_schedule/Maximum/x:output:0-polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: £
+polynomial_decay_pruning_schedule/Minimum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?º
)polynomial_decay_pruning_schedule/MinimumMinimum4polynomial_decay_pruning_schedule/Minimum/x:output:0-polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: ¡
)polynomial_decay_pruning_schedule/sub_1/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?²
'polynomial_decay_pruning_schedule/sub_1Sub2polynomial_decay_pruning_schedule/sub_1/x:output:0-polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: 
'polynomial_decay_pruning_schedule/Pow/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  @@¬
%polynomial_decay_pruning_schedule/PowPow+polynomial_decay_pruning_schedule/sub_1:z:00polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: 
'polynomial_decay_pruning_schedule/Mul/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *¾ª
%polynomial_decay_pruning_schedule/MulMul0polynomial_decay_pruning_schedule/Mul/x:output:0)polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: ¤
,polynomial_decay_pruning_schedule/sparsity/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *?¶
*polynomial_decay_pruning_schedule/sparsityAddV2)polynomial_decay_pruning_schedule/Mul:z:05polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: ±
GreaterEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
GreaterEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R {
GreaterEqualGreaterEqual#GreaterEqual/ReadVariableOp:value:0GreaterEqual/y:output:0*
T0	*
_output_shapes
: ®
LessEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
LessEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rôo
	LessEqual	LessEqual LessEqual/ReadVariableOp:value:0LessEqual/y:output:0*
T0	*
_output_shapes
: |
Less/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rô{
Less/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
LessLessLess/x:output:0Less/y:output:0*
T0	*
_output_shapes
: G
	LogicalOr	LogicalOrLessEqual:z:0Less:z:0*
_output_shapes
: Q

LogicalAnd
LogicalAndGreaterEqual:z:0LogicalOr:z:0*
_output_shapes
: ¨
Sub/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	z
Sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R W
SubSubSub/ReadVariableOp:value:0Sub/y:output:0*
T0	*
_output_shapes
: 

FloorMod/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 RdS
FloorModFloorModSub:z:0FloorMod/y:output:0*
T0	*
_output_shapes
: |
Equal/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
EqualEqualFloorMod:z:0Equal/y:output:0*
T0	*
_output_shapes
: M
LogicalAnd_1
LogicalAndLogicalAnd:z:0	Equal:z:0*
_output_shapes
: 
condStatelessIfLogicalAnd_1:z:0LogicalAnd_1:z:0*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *#
else_branchR
cond_false_25955*
output_shapes
: *"
then_branchR
cond_true_25954I
cond/IdentityIdentitycond:output:0*
T0
*
_output_shapes
: i
update_1NoOp1^assert_greater_equal/Assert/AssertGuard/Identity^cond/Identity*
_output_shapes
 (

group_depsNoOp*
_output_shapes
 L
SigmoidSigmoidinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
NoOpNoOp^AssignVariableOp^GreaterEqual/ReadVariableOp^LessEqual/ReadVariableOp^ReadVariableOp^Sub/ReadVariableOp(^assert_greater_equal/Assert/AssertGuard$^assert_greater_equal/ReadVariableOp1^polynomial_decay_pruning_schedule/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
AssignVariableOpAssignVariableOp2:
GreaterEqual/ReadVariableOpGreaterEqual/ReadVariableOp24
LessEqual/ReadVariableOpLessEqual/ReadVariableOp2 
ReadVariableOpReadVariableOp2(
Sub/ReadVariableOpSub/ReadVariableOp2R
'assert_greater_equal/Assert/AssertGuard'assert_greater_equal/Assert/AssertGuard2J
#assert_greater_equal/ReadVariableOp#assert_greater_equal/ReadVariableOp2d
0polynomial_decay_pruning_schedule/ReadVariableOp0polynomial_decay_pruning_schedule/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¯
2assert_greater_equal_Assert_AssertGuard_true_27676M
Iassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all
7
3assert_greater_equal_assert_assertguard_placeholder	9
5assert_greater_equal_assert_assertguard_placeholder_1	6
2assert_greater_equal_assert_assertguard_identity_1
J
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 ×
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityIassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
>
å
__inference__traced_save_28052
file_prefix=
9savev2_prune_low_magnitude_dense_mask_read_readvariableopB
>savev2_prune_low_magnitude_dense_threshold_read_readvariableopE
Asavev2_prune_low_magnitude_dense_pruning_step_read_readvariableop	G
Csavev2_prune_low_magnitude_dropout_pruning_step_read_readvariableop	?
;savev2_prune_low_magnitude_dense_1_mask_read_readvariableopD
@savev2_prune_low_magnitude_dense_1_threshold_read_readvariableopG
Csavev2_prune_low_magnitude_dense_1_pruning_step_read_readvariableop	J
Fsavev2_prune_low_magnitude_activation_pruning_step_read_readvariableop	#
savev2_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: á
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBýB4layer_with_weights-0/mask/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/threshold/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-0/pruning_step/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-1/pruning_step/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/mask/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-2/threshold/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-2/pruning_step/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-3/pruning_step/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH©
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ó
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:09savev2_prune_low_magnitude_dense_mask_read_readvariableop>savev2_prune_low_magnitude_dense_threshold_read_readvariableopAsavev2_prune_low_magnitude_dense_pruning_step_read_readvariableopCsavev2_prune_low_magnitude_dropout_pruning_step_read_readvariableop;savev2_prune_low_magnitude_dense_1_mask_read_readvariableop@savev2_prune_low_magnitude_dense_1_threshold_read_readvariableopCsavev2_prune_low_magnitude_dense_1_pruning_step_read_readvariableopFsavev2_prune_low_magnitude_activation_pruning_step_read_readvariableopsavev2_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *,
dtypes"
 2					
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*«
_input_shapes
: :: : : :: : : : : : : : ::::: : : : ::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::
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

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
ÿ

3assert_greater_equal_Assert_AssertGuard_false_26322K
Gassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all
V
Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop	I
Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y	6
2assert_greater_equal_assert_assertguard_identity_1
¢.assert_greater_equal/Assert/AssertGuard/Assert
5assert_greater_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.¡
5assert_greater_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:¢
5assert_greater_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = 
5assert_greater_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = Ã
.assert_greater_equal/Assert/AssertGuard/AssertAssertGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all>assert_greater_equal/Assert/AssertGuard/Assert/data_0:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_1:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_2:output:0Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop>assert_greater_equal/Assert/AssertGuard/Assert/data_4:output:0Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y*
T

2		*
_output_shapes
 ×
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all/^assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: É
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp/^assert_greater_equal/Assert/AssertGuard/Assert*"
_acd_function_control_output(*
_output_shapes
 "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2`
.assert_greater_equal/Assert/AssertGuard/Assert.assert_greater_equal/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 


E__inference_sequential_layer_call_and_return_conditional_losses_26621
dense_input1
prune_low_magnitude_dense_26604:1
prune_low_magnitude_dense_26606:-
prune_low_magnitude_dense_26608:3
!prune_low_magnitude_dense_1_26612:3
!prune_low_magnitude_dense_1_26614:/
!prune_low_magnitude_dense_1_26616:
identity¢1prune_low_magnitude_dense/StatefulPartitionedCall¢3prune_low_magnitude_dense_1/StatefulPartitionedCallØ
1prune_low_magnitude_dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputprune_low_magnitude_dense_26604prune_low_magnitude_dense_26606prune_low_magnitude_dense_26608*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_25810
+prune_low_magnitude_dropout/PartitionedCallPartitionedCall:prune_low_magnitude_dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_prune_low_magnitude_dropout_layer_call_and_return_conditional_losses_25823
3prune_low_magnitude_dense_1/StatefulPartitionedCallStatefulPartitionedCall4prune_low_magnitude_dropout/PartitionedCall:output:0!prune_low_magnitude_dense_1_26612!prune_low_magnitude_dense_1_26614!prune_low_magnitude_dense_1_26616*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_25839
.prune_low_magnitude_activation/PartitionedCallPartitionedCall<prune_low_magnitude_dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *b
f]R[
Y__inference_prune_low_magnitude_activation_layer_call_and_return_conditional_losses_25852
IdentityIdentity7prune_low_magnitude_activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
NoOpNoOp2^prune_low_magnitude_dense/StatefulPartitionedCall4^prune_low_magnitude_dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2f
1prune_low_magnitude_dense/StatefulPartitionedCall1prune_low_magnitude_dense/StatefulPartitionedCall2j
3prune_low_magnitude_dense_1/StatefulPartitionedCall3prune_low_magnitude_dense_1/StatefulPartitionedCall:T P
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namedense_input

¯
2assert_greater_equal_Assert_AssertGuard_true_27539M
Iassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all
7
3assert_greater_equal_assert_assertguard_placeholder	9
5assert_greater_equal_assert_assertguard_placeholder_1	6
2assert_greater_equal_assert_assertguard_identity_1
J
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 ×
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityIassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ê

Oprune_low_magnitude_dense_1_assert_greater_equal_Assert_AssertGuard_false_27039
prune_low_magnitude_dense_1_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dense_1_assert_greater_equal_all

prune_low_magnitude_dense_1_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dense_1_assert_greater_equal_readvariableop	
}prune_low_magnitude_dense_1_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dense_1_assert_greater_equal_y	R
Nprune_low_magnitude_dense_1_assert_greater_equal_assert_assertguard_identity_1
¢Jprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Assert¡
Qprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.½
Qprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:Ú
Qprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*Y
valuePBN BHx (prune_low_magnitude_dense_1/assert_greater_equal/ReadVariableOp:0) = Í
Qprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*L
valueCBA B;y (prune_low_magnitude_dense_1/assert_greater_equal/y:0) = ø
Jprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/AssertAssertprune_low_magnitude_dense_1_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dense_1_assert_greater_equal_allZprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Assert/data_0:output:0Zprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Assert/data_1:output:0Zprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Assert/data_2:output:0prune_low_magnitude_dense_1_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dense_1_assert_greater_equal_readvariableopZprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Assert/data_4:output:0}prune_low_magnitude_dense_1_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dense_1_assert_greater_equal_y*
T

2		*
_output_shapes
 Ç
Lprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/IdentityIdentityprune_low_magnitude_dense_1_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dense_1_assert_greater_equal_allK^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 
Nprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity_1IdentityUprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity:output:0I^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: ×
Hprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/NoOpNoOpK^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Assert*"
_acd_function_control_output(*
_output_shapes
 "©
Nprune_low_magnitude_dense_1_assert_greater_equal_assert_assertguard_identity_1Wprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2
Jprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/AssertJprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
¹

>__inference_prune_low_magnitude_activation_layer_call_fn_27847

inputs
unknown:	 
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *b
f]R[
Y__inference_prune_low_magnitude_activation_layer_call_and_return_conditional_losses_25968o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò
í
9__inference_prune_low_magnitude_dense_layer_call_fn_27309

inputs
unknown:	 
	unknown_0:
	unknown_1:
	unknown_2: 
	unknown_3:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_26481o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿U

cond_true_26063H
>cond_polynomial_decay_pruning_schedule_readvariableop_resource:	 >
,cond_pruning_ops_abs_readvariableop_resource:0
cond_assignvariableop_resource:*
 cond_assignvariableop_1_resource: 
cond_identity_logicaland_1

cond_identity_1
¢cond/AssignVariableOp¢cond/AssignVariableOp_1¢ cond/GreaterEqual/ReadVariableOp¢cond/LessEqual/ReadVariableOp¢cond/Sub/ReadVariableOp¢5cond/polynomial_decay_pruning_schedule/ReadVariableOp¢#cond/pruning_ops/Abs/ReadVariableOp¬
5cond/polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	n
,cond/polynomial_decay_pruning_schedule/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R È
*cond/polynomial_decay_pruning_schedule/subSub=cond/polynomial_decay_pruning_schedule/ReadVariableOp:value:05cond/polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: 
+cond/polynomial_decay_pruning_schedule/CastCast.cond/polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  úCÆ
.cond/polynomial_decay_pruning_schedule/truedivRealDiv/cond/polynomial_decay_pruning_schedule/Cast:y:09cond/polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/Maximum/xConst*
_output_shapes
: *
dtype0*
valueB
 *    É
.cond/polynomial_decay_pruning_schedule/MaximumMaximum9cond/polynomial_decay_pruning_schedule/Maximum/x:output:02cond/polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/Minimum/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?É
.cond/polynomial_decay_pruning_schedule/MinimumMinimum9cond/polynomial_decay_pruning_schedule/Minimum/x:output:02cond/polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: s
.cond/polynomial_decay_pruning_schedule/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Á
,cond/polynomial_decay_pruning_schedule/sub_1Sub7cond/polynomial_decay_pruning_schedule/sub_1/x:output:02cond/polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: q
,cond/polynomial_decay_pruning_schedule/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@»
*cond/polynomial_decay_pruning_schedule/PowPow0cond/polynomial_decay_pruning_schedule/sub_1:z:05cond/polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: q
,cond/polynomial_decay_pruning_schedule/Mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¾¹
*cond/polynomial_decay_pruning_schedule/MulMul5cond/polynomial_decay_pruning_schedule/Mul/x:output:0.cond/polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: v
1cond/polynomial_decay_pruning_schedule/sparsity/yConst*
_output_shapes
: *
dtype0*
valueB
 *?Å
/cond/polynomial_decay_pruning_schedule/sparsityAddV2.cond/polynomial_decay_pruning_schedule/Mul:z:0:cond/polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: 
 cond/GreaterEqual/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	U
cond/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
cond/GreaterEqualGreaterEqual(cond/GreaterEqual/ReadVariableOp:value:0cond/GreaterEqual/y:output:0*
T0	*
_output_shapes
: 
cond/LessEqual/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	S
cond/LessEqual/yConst*
_output_shapes
: *
dtype0	*
value
B	 Rô~
cond/LessEqual	LessEqual%cond/LessEqual/ReadVariableOp:value:0cond/LessEqual/y:output:0*
T0	*
_output_shapes
: N
cond/Less/xConst*
_output_shapes
: *
dtype0	*
value
B	 RôM
cond/Less/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ^
	cond/LessLesscond/Less/x:output:0cond/Less/y:output:0*
T0	*
_output_shapes
: V
cond/LogicalOr	LogicalOrcond/LessEqual:z:0cond/Less:z:0*
_output_shapes
: `
cond/LogicalAnd
LogicalAndcond/GreaterEqual:z:0cond/LogicalOr:z:0*
_output_shapes
: 
cond/Sub/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	L

cond/Sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R f
cond/SubSubcond/Sub/ReadVariableOp:value:0cond/Sub/y:output:0*
T0	*
_output_shapes
: Q
cond/FloorMod/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rdb
cond/FloorModFloorModcond/Sub:z:0cond/FloorMod/y:output:0*
T0	*
_output_shapes
: N
cond/Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ^

cond/EqualEqualcond/FloorMod:z:0cond/Equal/y:output:0*
T0	*
_output_shapes
: \
cond/LogicalAnd_1
LogicalAndcond/LogicalAnd:z:0cond/Equal:z:0*
_output_shapes
: 
#cond/pruning_ops/Abs/ReadVariableOpReadVariableOp,cond_pruning_ops_abs_readvariableop_resource*
_output_shapes

:*
dtype0q
cond/pruning_ops/AbsAbs+cond/pruning_ops/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:W
cond/pruning_ops/SizeConst*
_output_shapes
: *
dtype0*
value	B :m
cond/pruning_ops/CastCastcond/pruning_ops/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: [
cond/pruning_ops/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
cond/pruning_ops/subSubcond/pruning_ops/sub/x:output:03cond/polynomial_decay_pruning_schedule/sparsity:z:0*
T0*
_output_shapes
: q
cond/pruning_ops/mulMulcond/pruning_ops/Cast:y:0cond/pruning_ops/sub:z:0*
T0*
_output_shapes
: Z
cond/pruning_ops/RoundRoundcond/pruning_ops/mul:z:0*
T0*
_output_shapes
: _
cond/pruning_ops/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
cond/pruning_ops/MaximumMaximumcond/pruning_ops/Round:y:0#cond/pruning_ops/Maximum/y:output:0*
T0*
_output_shapes
: m
cond/pruning_ops/Cast_1Castcond/pruning_ops/Maximum:z:0*

DstT0*

SrcT0*
_output_shapes
: q
cond/pruning_ops/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
cond/pruning_ops/ReshapeReshapecond/pruning_ops/Abs:y:0'cond/pruning_ops/Reshape/shape:output:0*
T0*
_output_shapes
:Y
cond/pruning_ops/Size_1Const*
_output_shapes
: *
dtype0*
value	B :
cond/pruning_ops/TopKV2TopKV2!cond/pruning_ops/Reshape:output:0 cond/pruning_ops/Size_1:output:0*
T0* 
_output_shapes
::Z
cond/pruning_ops/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :~
cond/pruning_ops/sub_1Subcond/pruning_ops/Cast_1:y:0!cond/pruning_ops/sub_1/y:output:0*
T0*
_output_shapes
: `
cond/pruning_ops/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
cond/pruning_ops/GatherV2GatherV2 cond/pruning_ops/TopKV2:values:0cond/pruning_ops/sub_1:z:0'cond/pruning_ops/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: Z
cond/pruning_ops/sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :~
cond/pruning_ops/sub_2Subcond/pruning_ops/Cast_1:y:0!cond/pruning_ops/sub_2/y:output:0*
T0*
_output_shapes
: b
 cond/pruning_ops/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Õ
cond/pruning_ops/GatherV2_1GatherV2!cond/pruning_ops/TopKV2:indices:0cond/pruning_ops/sub_2:z:0)cond/pruning_ops/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 
cond/pruning_ops/GreaterEqualGreaterEqualcond/pruning_ops/Abs:y:0"cond/pruning_ops/GatherV2:output:0*
T0*
_output_shapes

:Y
cond/pruning_ops/Size_2Const*
_output_shapes
: *
dtype0*
value	B :`
cond/pruning_ops/one_hot/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Zb
 cond/pruning_ops/one_hot/Const_1Const*
_output_shapes
: *
dtype0
*
value	B
 Z í
cond/pruning_ops/one_hotOneHot$cond/pruning_ops/GatherV2_1:output:0 cond/pruning_ops/Size_2:output:0'cond/pruning_ops/one_hot/Const:output:0)cond/pruning_ops/one_hot/Const_1:output:0*
T0
*
TI0*
_output_shapes
:q
 cond/pruning_ops/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
cond/pruning_ops/Reshape_1Reshape!cond/pruning_ops/one_hot:output:0)cond/pruning_ops/Reshape_1/shape:output:0*
T0
*
_output_shapes

:
cond/pruning_ops/LogicalOr	LogicalOr!cond/pruning_ops/GreaterEqual:z:0#cond/pruning_ops/Reshape_1:output:0*
_output_shapes

:i
	cond/CastCastcond/pruning_ops/LogicalOr:z:0*

DstT0*

SrcT0
*
_output_shapes

:{
cond/AssignVariableOpAssignVariableOpcond_assignvariableop_resourcecond/Cast:y:0*
_output_shapes
 *
dtype0
cond/AssignVariableOp_1AssignVariableOp cond_assignvariableop_1_resource"cond/pruning_ops/GatherV2:output:0*
_output_shapes
 *
dtype0
cond/group_depsNoOp^cond/AssignVariableOp^cond/AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 h
cond/IdentityIdentitycond_identity_logicaland_1^cond/group_deps*
T0
*
_output_shapes
: `
cond/Identity_1Identitycond/Identity:output:0
^cond/NoOp*
T0
*
_output_shapes
: ¸
	cond/NoOpNoOp^cond/AssignVariableOp^cond/AssignVariableOp_1!^cond/GreaterEqual/ReadVariableOp^cond/LessEqual/ReadVariableOp^cond/Sub/ReadVariableOp6^cond/polynomial_decay_pruning_schedule/ReadVariableOp$^cond/pruning_ops/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2.
cond/AssignVariableOpcond/AssignVariableOp22
cond/AssignVariableOp_1cond/AssignVariableOp_12D
 cond/GreaterEqual/ReadVariableOp cond/GreaterEqual/ReadVariableOp2>
cond/LessEqual/ReadVariableOpcond/LessEqual/ReadVariableOp22
cond/Sub/ReadVariableOpcond/Sub/ReadVariableOp2n
5cond/polynomial_decay_pruning_schedule/ReadVariableOp5cond/polynomial_decay_pruning_schedule/ReadVariableOp2J
#cond/pruning_ops/Abs/ReadVariableOp#cond/pruning_ops/Abs/ReadVariableOp:

_output_shapes
: 
ú
ý
Mprune_low_magnitude_dense_assert_greater_equal_Assert_AssertGuard_false_26771
{prune_low_magnitude_dense_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dense_assert_greater_equal_all

prune_low_magnitude_dense_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dense_assert_greater_equal_readvariableop	}
yprune_low_magnitude_dense_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dense_assert_greater_equal_y	P
Lprune_low_magnitude_dense_assert_greater_equal_assert_assertguard_identity_1
¢Hprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Assert
Oprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.»
Oprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:Ö
Oprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*W
valueNBL BFx (prune_low_magnitude_dense/assert_greater_equal/ReadVariableOp:0) = É
Oprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*J
valueAB? B9y (prune_low_magnitude_dense/assert_greater_equal/y:0) = â
Hprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/AssertAssert{prune_low_magnitude_dense_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dense_assert_greater_equal_allXprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Assert/data_0:output:0Xprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Assert/data_1:output:0Xprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Assert/data_2:output:0prune_low_magnitude_dense_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dense_assert_greater_equal_readvariableopXprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Assert/data_4:output:0yprune_low_magnitude_dense_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dense_assert_greater_equal_y*
T

2		*
_output_shapes
 ¿
Jprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/IdentityIdentity{prune_low_magnitude_dense_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dense_assert_greater_equal_allI^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 
Lprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity_1IdentitySprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity:output:0G^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: Ó
Fprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/NoOpNoOpI^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Assert*"
_acd_function_control_output(*
_output_shapes
 "¥
Lprune_low_magnitude_dense_assert_greater_equal_assert_assertguard_identity_1Uprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2
Hprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/AssertHprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ÆU

cond_true_26378H
>cond_polynomial_decay_pruning_schedule_readvariableop_resource:	 >
,cond_pruning_ops_abs_readvariableop_resource:0
cond_assignvariableop_resource:*
 cond_assignvariableop_1_resource: 
cond_identity_logicaland_1

cond_identity_1
¢cond/AssignVariableOp¢cond/AssignVariableOp_1¢ cond/GreaterEqual/ReadVariableOp¢cond/LessEqual/ReadVariableOp¢cond/Sub/ReadVariableOp¢5cond/polynomial_decay_pruning_schedule/ReadVariableOp¢#cond/pruning_ops/Abs/ReadVariableOp¬
5cond/polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	n
,cond/polynomial_decay_pruning_schedule/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R È
*cond/polynomial_decay_pruning_schedule/subSub=cond/polynomial_decay_pruning_schedule/ReadVariableOp:value:05cond/polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: 
+cond/polynomial_decay_pruning_schedule/CastCast.cond/polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  úCÆ
.cond/polynomial_decay_pruning_schedule/truedivRealDiv/cond/polynomial_decay_pruning_schedule/Cast:y:09cond/polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/Maximum/xConst*
_output_shapes
: *
dtype0*
valueB
 *    É
.cond/polynomial_decay_pruning_schedule/MaximumMaximum9cond/polynomial_decay_pruning_schedule/Maximum/x:output:02cond/polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/Minimum/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?É
.cond/polynomial_decay_pruning_schedule/MinimumMinimum9cond/polynomial_decay_pruning_schedule/Minimum/x:output:02cond/polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: s
.cond/polynomial_decay_pruning_schedule/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Á
,cond/polynomial_decay_pruning_schedule/sub_1Sub7cond/polynomial_decay_pruning_schedule/sub_1/x:output:02cond/polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: q
,cond/polynomial_decay_pruning_schedule/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@»
*cond/polynomial_decay_pruning_schedule/PowPow0cond/polynomial_decay_pruning_schedule/sub_1:z:05cond/polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: q
,cond/polynomial_decay_pruning_schedule/Mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¾¹
*cond/polynomial_decay_pruning_schedule/MulMul5cond/polynomial_decay_pruning_schedule/Mul/x:output:0.cond/polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: v
1cond/polynomial_decay_pruning_schedule/sparsity/yConst*
_output_shapes
: *
dtype0*
valueB
 *?Å
/cond/polynomial_decay_pruning_schedule/sparsityAddV2.cond/polynomial_decay_pruning_schedule/Mul:z:0:cond/polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: 
 cond/GreaterEqual/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	U
cond/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
cond/GreaterEqualGreaterEqual(cond/GreaterEqual/ReadVariableOp:value:0cond/GreaterEqual/y:output:0*
T0	*
_output_shapes
: 
cond/LessEqual/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	S
cond/LessEqual/yConst*
_output_shapes
: *
dtype0	*
value
B	 Rô~
cond/LessEqual	LessEqual%cond/LessEqual/ReadVariableOp:value:0cond/LessEqual/y:output:0*
T0	*
_output_shapes
: N
cond/Less/xConst*
_output_shapes
: *
dtype0	*
value
B	 RôM
cond/Less/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ^
	cond/LessLesscond/Less/x:output:0cond/Less/y:output:0*
T0	*
_output_shapes
: V
cond/LogicalOr	LogicalOrcond/LessEqual:z:0cond/Less:z:0*
_output_shapes
: `
cond/LogicalAnd
LogicalAndcond/GreaterEqual:z:0cond/LogicalOr:z:0*
_output_shapes
: 
cond/Sub/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	L

cond/Sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R f
cond/SubSubcond/Sub/ReadVariableOp:value:0cond/Sub/y:output:0*
T0	*
_output_shapes
: Q
cond/FloorMod/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rdb
cond/FloorModFloorModcond/Sub:z:0cond/FloorMod/y:output:0*
T0	*
_output_shapes
: N
cond/Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ^

cond/EqualEqualcond/FloorMod:z:0cond/Equal/y:output:0*
T0	*
_output_shapes
: \
cond/LogicalAnd_1
LogicalAndcond/LogicalAnd:z:0cond/Equal:z:0*
_output_shapes
: 
#cond/pruning_ops/Abs/ReadVariableOpReadVariableOp,cond_pruning_ops_abs_readvariableop_resource*
_output_shapes

:*
dtype0q
cond/pruning_ops/AbsAbs+cond/pruning_ops/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:X
cond/pruning_ops/SizeConst*
_output_shapes
: *
dtype0*
value
B :àm
cond/pruning_ops/CastCastcond/pruning_ops/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: [
cond/pruning_ops/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
cond/pruning_ops/subSubcond/pruning_ops/sub/x:output:03cond/polynomial_decay_pruning_schedule/sparsity:z:0*
T0*
_output_shapes
: q
cond/pruning_ops/mulMulcond/pruning_ops/Cast:y:0cond/pruning_ops/sub:z:0*
T0*
_output_shapes
: Z
cond/pruning_ops/RoundRoundcond/pruning_ops/mul:z:0*
T0*
_output_shapes
: _
cond/pruning_ops/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
cond/pruning_ops/MaximumMaximumcond/pruning_ops/Round:y:0#cond/pruning_ops/Maximum/y:output:0*
T0*
_output_shapes
: m
cond/pruning_ops/Cast_1Castcond/pruning_ops/Maximum:z:0*

DstT0*

SrcT0*
_output_shapes
: q
cond/pruning_ops/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
cond/pruning_ops/ReshapeReshapecond/pruning_ops/Abs:y:0'cond/pruning_ops/Reshape/shape:output:0*
T0*
_output_shapes	
:àZ
cond/pruning_ops/Size_1Const*
_output_shapes
: *
dtype0*
value
B :à
cond/pruning_ops/TopKV2TopKV2!cond/pruning_ops/Reshape:output:0 cond/pruning_ops/Size_1:output:0*
T0*"
_output_shapes
:à:àZ
cond/pruning_ops/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :~
cond/pruning_ops/sub_1Subcond/pruning_ops/Cast_1:y:0!cond/pruning_ops/sub_1/y:output:0*
T0*
_output_shapes
: `
cond/pruning_ops/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
cond/pruning_ops/GatherV2GatherV2 cond/pruning_ops/TopKV2:values:0cond/pruning_ops/sub_1:z:0'cond/pruning_ops/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: Z
cond/pruning_ops/sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :~
cond/pruning_ops/sub_2Subcond/pruning_ops/Cast_1:y:0!cond/pruning_ops/sub_2/y:output:0*
T0*
_output_shapes
: b
 cond/pruning_ops/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Õ
cond/pruning_ops/GatherV2_1GatherV2!cond/pruning_ops/TopKV2:indices:0cond/pruning_ops/sub_2:z:0)cond/pruning_ops/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 
cond/pruning_ops/GreaterEqualGreaterEqualcond/pruning_ops/Abs:y:0"cond/pruning_ops/GatherV2:output:0*
T0*
_output_shapes

:Z
cond/pruning_ops/Size_2Const*
_output_shapes
: *
dtype0*
value
B :à`
cond/pruning_ops/one_hot/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Zb
 cond/pruning_ops/one_hot/Const_1Const*
_output_shapes
: *
dtype0
*
value	B
 Z î
cond/pruning_ops/one_hotOneHot$cond/pruning_ops/GatherV2_1:output:0 cond/pruning_ops/Size_2:output:0'cond/pruning_ops/one_hot/Const:output:0)cond/pruning_ops/one_hot/Const_1:output:0*
T0
*
TI0*
_output_shapes	
:àq
 cond/pruning_ops/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
cond/pruning_ops/Reshape_1Reshape!cond/pruning_ops/one_hot:output:0)cond/pruning_ops/Reshape_1/shape:output:0*
T0
*
_output_shapes

:
cond/pruning_ops/LogicalOr	LogicalOr!cond/pruning_ops/GreaterEqual:z:0#cond/pruning_ops/Reshape_1:output:0*
_output_shapes

:i
	cond/CastCastcond/pruning_ops/LogicalOr:z:0*

DstT0*

SrcT0
*
_output_shapes

:{
cond/AssignVariableOpAssignVariableOpcond_assignvariableop_resourcecond/Cast:y:0*
_output_shapes
 *
dtype0
cond/AssignVariableOp_1AssignVariableOp cond_assignvariableop_1_resource"cond/pruning_ops/GatherV2:output:0*
_output_shapes
 *
dtype0
cond/group_depsNoOp^cond/AssignVariableOp^cond/AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 h
cond/IdentityIdentitycond_identity_logicaland_1^cond/group_deps*
T0
*
_output_shapes
: `
cond/Identity_1Identitycond/Identity:output:0
^cond/NoOp*
T0
*
_output_shapes
: ¸
	cond/NoOpNoOp^cond/AssignVariableOp^cond/AssignVariableOp_1!^cond/GreaterEqual/ReadVariableOp^cond/LessEqual/ReadVariableOp^cond/Sub/ReadVariableOp6^cond/polynomial_decay_pruning_schedule/ReadVariableOp$^cond/pruning_ops/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2.
cond/AssignVariableOpcond/AssignVariableOp22
cond/AssignVariableOp_1cond/AssignVariableOp_12D
 cond/GreaterEqual/ReadVariableOp cond/GreaterEqual/ReadVariableOp2>
cond/LessEqual/ReadVariableOpcond/LessEqual/ReadVariableOp22
cond/Sub/ReadVariableOpcond/Sub/ReadVariableOp2n
5cond/polynomial_decay_pruning_schedule/ReadVariableOp5cond/polynomial_decay_pruning_schedule/ReadVariableOp2J
#cond/pruning_ops/Abs/ReadVariableOp#cond/pruning_ops/Abs/ReadVariableOp:

_output_shapes
: 

¥
cond_false_27401
cond_placeholder
cond_placeholder_1
cond_placeholder_2
cond_placeholder_3
cond_identity_logicaland_1

cond_identity_1
'
	cond/NoOpNoOp*
_output_shapes
 b
cond/IdentityIdentitycond_identity_logicaland_1
^cond/NoOp*
T0
*
_output_shapes
: T
cond/Identity_1Identitycond/Identity:output:0*
T0
*
_output_shapes
: "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : :

_output_shapes
: 
Ã
F
cond_true_25954
cond_identity_logicaland_1

cond_identity_1
-
cond/group_depsNoOp*
_output_shapes
 h
cond/IdentityIdentitycond_identity_logicaland_1^cond/group_deps*
T0
*
_output_shapes
: T
cond/Identity_1Identitycond/Identity:output:0*
T0
*
_output_shapes
: "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 

_output_shapes
: 
³

;__inference_prune_low_magnitude_dropout_layer_call_fn_27515

inputs
unknown:	 
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_prune_low_magnitude_dropout_layer_call_and_return_conditional_losses_26283o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ö
ï
;__inference_prune_low_magnitude_dense_1_layer_call_fn_27643

inputs
unknown:	 
	unknown_0:
	unknown_1:
	unknown_2: 
	unknown_3:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_26165o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¯
2assert_greater_equal_Assert_AssertGuard_true_26205M
Iassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all
7
3assert_greater_equal_assert_assertguard_placeholder	9
5assert_greater_equal_assert_assertguard_placeholder_1	6
2assert_greater_equal_assert_assertguard_identity_1
J
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 ×
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityIassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Í
ú
E__inference_sequential_layer_call_and_return_conditional_losses_26545

inputs)
prune_low_magnitude_dense_26516:	 1
prune_low_magnitude_dense_26518:1
prune_low_magnitude_dense_26520:)
prune_low_magnitude_dense_26522: -
prune_low_magnitude_dense_26524:+
!prune_low_magnitude_dropout_26527:	 +
!prune_low_magnitude_dense_1_26530:	 3
!prune_low_magnitude_dense_1_26532:3
!prune_low_magnitude_dense_1_26534:+
!prune_low_magnitude_dense_1_26536: /
!prune_low_magnitude_dense_1_26538:.
$prune_low_magnitude_activation_26541:	 
identity¢6prune_low_magnitude_activation/StatefulPartitionedCall¢1prune_low_magnitude_dense/StatefulPartitionedCall¢3prune_low_magnitude_dense_1/StatefulPartitionedCall¢3prune_low_magnitude_dropout/StatefulPartitionedCall
1prune_low_magnitude_dense/StatefulPartitionedCallStatefulPartitionedCallinputsprune_low_magnitude_dense_26516prune_low_magnitude_dense_26518prune_low_magnitude_dense_26520prune_low_magnitude_dense_26522prune_low_magnitude_dense_26524*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_26481Å
3prune_low_magnitude_dropout/StatefulPartitionedCallStatefulPartitionedCall:prune_low_magnitude_dense/StatefulPartitionedCall:output:0!prune_low_magnitude_dropout_26527*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_prune_low_magnitude_dropout_layer_call_and_return_conditional_losses_26283Ú
3prune_low_magnitude_dense_1/StatefulPartitionedCallStatefulPartitionedCall<prune_low_magnitude_dropout/StatefulPartitionedCall:output:0!prune_low_magnitude_dense_1_26530!prune_low_magnitude_dense_1_26532!prune_low_magnitude_dense_1_26534!prune_low_magnitude_dense_1_26536!prune_low_magnitude_dense_1_26538*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_26165Ð
6prune_low_magnitude_activation/StatefulPartitionedCallStatefulPartitionedCall<prune_low_magnitude_dense_1/StatefulPartitionedCall:output:0$prune_low_magnitude_activation_26541*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *b
f]R[
Y__inference_prune_low_magnitude_activation_layer_call_and_return_conditional_losses_25968
IdentityIdentity?prune_low_magnitude_activation/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp7^prune_low_magnitude_activation/StatefulPartitionedCall2^prune_low_magnitude_dense/StatefulPartitionedCall4^prune_low_magnitude_dense_1/StatefulPartitionedCall4^prune_low_magnitude_dropout/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 2p
6prune_low_magnitude_activation/StatefulPartitionedCall6prune_low_magnitude_activation/StatefulPartitionedCall2f
1prune_low_magnitude_dense/StatefulPartitionedCall1prune_low_magnitude_dense/StatefulPartitionedCall2j
3prune_low_magnitude_dense_1/StatefulPartitionedCall3prune_low_magnitude_dense_1/StatefulPartitionedCall2j
3prune_low_magnitude_dropout/StatefulPartitionedCall3prune_low_magnitude_dropout/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È
Ù
E__inference_sequential_layer_call_and_return_conditional_losses_27283

inputs;
1prune_low_magnitude_dense_readvariableop_resource:	 8
&prune_low_magnitude_dense_cond_input_1:8
&prune_low_magnitude_dense_cond_input_2:0
&prune_low_magnitude_dense_cond_input_3: G
9prune_low_magnitude_dense_biasadd_readvariableop_resource:=
3prune_low_magnitude_dropout_readvariableop_resource:	 =
3prune_low_magnitude_dense_1_readvariableop_resource:	 :
(prune_low_magnitude_dense_1_cond_input_1::
(prune_low_magnitude_dense_1_cond_input_2:2
(prune_low_magnitude_dense_1_cond_input_3: I
;prune_low_magnitude_dense_1_biasadd_readvariableop_resource:@
6prune_low_magnitude_activation_readvariableop_resource:	 
identity¢/prune_low_magnitude_activation/AssignVariableOp¢:prune_low_magnitude_activation/GreaterEqual/ReadVariableOp¢7prune_low_magnitude_activation/LessEqual/ReadVariableOp¢-prune_low_magnitude_activation/ReadVariableOp¢1prune_low_magnitude_activation/Sub/ReadVariableOp¢Fprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard¢Bprune_low_magnitude_activation/assert_greater_equal/ReadVariableOp¢Oprune_low_magnitude_activation/polynomial_decay_pruning_schedule/ReadVariableOp¢*prune_low_magnitude_dense/AssignVariableOp¢,prune_low_magnitude_dense/AssignVariableOp_1¢0prune_low_magnitude_dense/BiasAdd/ReadVariableOp¢5prune_low_magnitude_dense/GreaterEqual/ReadVariableOp¢2prune_low_magnitude_dense/LessEqual/ReadVariableOp¢/prune_low_magnitude_dense/MatMul/ReadVariableOp¢,prune_low_magnitude_dense/Mul/ReadVariableOp¢.prune_low_magnitude_dense/Mul/ReadVariableOp_1¢(prune_low_magnitude_dense/ReadVariableOp¢,prune_low_magnitude_dense/Sub/ReadVariableOp¢Aprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard¢=prune_low_magnitude_dense/assert_greater_equal/ReadVariableOp¢prune_low_magnitude_dense/cond¢Jprune_low_magnitude_dense/polynomial_decay_pruning_schedule/ReadVariableOp¢,prune_low_magnitude_dense_1/AssignVariableOp¢.prune_low_magnitude_dense_1/AssignVariableOp_1¢2prune_low_magnitude_dense_1/BiasAdd/ReadVariableOp¢7prune_low_magnitude_dense_1/GreaterEqual/ReadVariableOp¢4prune_low_magnitude_dense_1/LessEqual/ReadVariableOp¢1prune_low_magnitude_dense_1/MatMul/ReadVariableOp¢.prune_low_magnitude_dense_1/Mul/ReadVariableOp¢0prune_low_magnitude_dense_1/Mul/ReadVariableOp_1¢*prune_low_magnitude_dense_1/ReadVariableOp¢.prune_low_magnitude_dense_1/Sub/ReadVariableOp¢Cprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard¢?prune_low_magnitude_dense_1/assert_greater_equal/ReadVariableOp¢ prune_low_magnitude_dense_1/cond¢Lprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/ReadVariableOp¢,prune_low_magnitude_dropout/AssignVariableOp¢7prune_low_magnitude_dropout/GreaterEqual/ReadVariableOp¢4prune_low_magnitude_dropout/LessEqual/ReadVariableOp¢*prune_low_magnitude_dropout/ReadVariableOp¢.prune_low_magnitude_dropout/Sub/ReadVariableOp¢Cprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard¢?prune_low_magnitude_dropout/assert_greater_equal/ReadVariableOp¢Lprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/ReadVariableOp
(prune_low_magnitude_dense/ReadVariableOpReadVariableOp1prune_low_magnitude_dense_readvariableop_resource*
_output_shapes
: *
dtype0	a
prune_low_magnitude_dense/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R£
prune_low_magnitude_dense/addAddV20prune_low_magnitude_dense/ReadVariableOp:value:0(prune_low_magnitude_dense/add/y:output:0*
T0	*
_output_shapes
: â
*prune_low_magnitude_dense/AssignVariableOpAssignVariableOp1prune_low_magnitude_dense_readvariableop_resource!prune_low_magnitude_dense/add:z:0)^prune_low_magnitude_dense/ReadVariableOp*
_output_shapes
 *
dtype0	k
 prune_low_magnitude_dense/updateNoOp+^prune_low_magnitude_dense/AssignVariableOp*
_output_shapes
 Ô
=prune_low_magnitude_dense/assert_greater_equal/ReadVariableOpReadVariableOp1prune_low_magnitude_dense_readvariableop_resource+^prune_low_magnitude_dense/AssignVariableOp*
_output_shapes
: *
dtype0	r
0prune_low_magnitude_dense/assert_greater_equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rî
;prune_low_magnitude_dense/assert_greater_equal/GreaterEqualGreaterEqualEprune_low_magnitude_dense/assert_greater_equal/ReadVariableOp:value:09prune_low_magnitude_dense/assert_greater_equal/y:output:0*
T0	*
_output_shapes
: u
3prune_low_magnitude_dense/assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : |
:prune_low_magnitude_dense/assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : |
:prune_low_magnitude_dense/assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
4prune_low_magnitude_dense/assert_greater_equal/rangeRangeCprune_low_magnitude_dense/assert_greater_equal/range/start:output:0<prune_low_magnitude_dense/assert_greater_equal/Rank:output:0Cprune_low_magnitude_dense/assert_greater_equal/range/delta:output:0*
_output_shapes
: Ñ
2prune_low_magnitude_dense/assert_greater_equal/AllAll?prune_low_magnitude_dense/assert_greater_equal/GreaterEqual:z:0=prune_low_magnitude_dense/assert_greater_equal/range:output:0*
_output_shapes
: 
;prune_low_magnitude_dense/assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.©
=prune_low_magnitude_dense/assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:Ä
=prune_low_magnitude_dense/assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*W
valueNBL BFx (prune_low_magnitude_dense/assert_greater_equal/ReadVariableOp:0) = ·
=prune_low_magnitude_dense/assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*J
valueAB? B9y (prune_low_magnitude_dense/assert_greater_equal/y:0) = ¤
Aprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuardIf;prune_low_magnitude_dense/assert_greater_equal/All:output:0;prune_low_magnitude_dense/assert_greater_equal/All:output:0Eprune_low_magnitude_dense/assert_greater_equal/ReadVariableOp:value:09prune_low_magnitude_dense/assert_greater_equal/y:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *`
else_branchQRO
Mprune_low_magnitude_dense_assert_greater_equal_Assert_AssertGuard_false_26771*
output_shapes
: *_
then_branchPRN
Lprune_low_magnitude_dense_assert_greater_equal_Assert_AssertGuard_true_26770Ã
Jprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/IdentityIdentityJprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: ®
Jprune_low_magnitude_dense/polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOp1prune_low_magnitude_dense_readvariableop_resource+^prune_low_magnitude_dense/AssignVariableOpK^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	Ð
Aprune_low_magnitude_dense/polynomial_decay_pruning_schedule/sub/yConstK^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R 
?prune_low_magnitude_dense/polynomial_decay_pruning_schedule/subSubRprune_low_magnitude_dense/polynomial_decay_pruning_schedule/ReadVariableOp:value:0Jprune_low_magnitude_dense/polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: ½
@prune_low_magnitude_dense/polynomial_decay_pruning_schedule/CastCastCprune_low_magnitude_dense/polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: ×
Eprune_low_magnitude_dense/polynomial_decay_pruning_schedule/truediv/yConstK^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  úC
Cprune_low_magnitude_dense/polynomial_decay_pruning_schedule/truedivRealDivDprune_low_magnitude_dense/polynomial_decay_pruning_schedule/Cast:y:0Nprune_low_magnitude_dense/polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: ×
Eprune_low_magnitude_dense/polynomial_decay_pruning_schedule/Maximum/xConstK^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *    
Cprune_low_magnitude_dense/polynomial_decay_pruning_schedule/MaximumMaximumNprune_low_magnitude_dense/polynomial_decay_pruning_schedule/Maximum/x:output:0Gprune_low_magnitude_dense/polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: ×
Eprune_low_magnitude_dense/polynomial_decay_pruning_schedule/Minimum/xConstK^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?
Cprune_low_magnitude_dense/polynomial_decay_pruning_schedule/MinimumMinimumNprune_low_magnitude_dense/polynomial_decay_pruning_schedule/Minimum/x:output:0Gprune_low_magnitude_dense/polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: Õ
Cprune_low_magnitude_dense/polynomial_decay_pruning_schedule/sub_1/xConstK^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?
Aprune_low_magnitude_dense/polynomial_decay_pruning_schedule/sub_1SubLprune_low_magnitude_dense/polynomial_decay_pruning_schedule/sub_1/x:output:0Gprune_low_magnitude_dense/polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: Ó
Aprune_low_magnitude_dense/polynomial_decay_pruning_schedule/Pow/yConstK^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  @@ú
?prune_low_magnitude_dense/polynomial_decay_pruning_schedule/PowPowEprune_low_magnitude_dense/polynomial_decay_pruning_schedule/sub_1:z:0Jprune_low_magnitude_dense/polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: Ó
Aprune_low_magnitude_dense/polynomial_decay_pruning_schedule/Mul/xConstK^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *¾ø
?prune_low_magnitude_dense/polynomial_decay_pruning_schedule/MulMulJprune_low_magnitude_dense/polynomial_decay_pruning_schedule/Mul/x:output:0Cprune_low_magnitude_dense/polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: Ø
Fprune_low_magnitude_dense/polynomial_decay_pruning_schedule/sparsity/yConstK^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *?
Dprune_low_magnitude_dense/polynomial_decay_pruning_schedule/sparsityAddV2Cprune_low_magnitude_dense/polynomial_decay_pruning_schedule/Mul:z:0Oprune_low_magnitude_dense/polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: 
5prune_low_magnitude_dense/GreaterEqual/ReadVariableOpReadVariableOp1prune_low_magnitude_dense_readvariableop_resource+^prune_low_magnitude_dense/AssignVariableOpK^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	·
(prune_low_magnitude_dense/GreaterEqual/yConstK^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R É
&prune_low_magnitude_dense/GreaterEqualGreaterEqual=prune_low_magnitude_dense/GreaterEqual/ReadVariableOp:value:01prune_low_magnitude_dense/GreaterEqual/y:output:0*
T0	*
_output_shapes
: 
2prune_low_magnitude_dense/LessEqual/ReadVariableOpReadVariableOp1prune_low_magnitude_dense_readvariableop_resource+^prune_low_magnitude_dense/AssignVariableOpK^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	µ
%prune_low_magnitude_dense/LessEqual/yConstK^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rô½
#prune_low_magnitude_dense/LessEqual	LessEqual:prune_low_magnitude_dense/LessEqual/ReadVariableOp:value:0.prune_low_magnitude_dense/LessEqual/y:output:0*
T0	*
_output_shapes
: °
 prune_low_magnitude_dense/Less/xConstK^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rô¯
 prune_low_magnitude_dense/Less/yConstK^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R 
prune_low_magnitude_dense/LessLess)prune_low_magnitude_dense/Less/x:output:0)prune_low_magnitude_dense/Less/y:output:0*
T0	*
_output_shapes
: 
#prune_low_magnitude_dense/LogicalOr	LogicalOr'prune_low_magnitude_dense/LessEqual:z:0"prune_low_magnitude_dense/Less:z:0*
_output_shapes
: 
$prune_low_magnitude_dense/LogicalAnd
LogicalAnd*prune_low_magnitude_dense/GreaterEqual:z:0'prune_low_magnitude_dense/LogicalOr:z:0*
_output_shapes
: 
,prune_low_magnitude_dense/Sub/ReadVariableOpReadVariableOp1prune_low_magnitude_dense_readvariableop_resource+^prune_low_magnitude_dense/AssignVariableOpK^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	®
prune_low_magnitude_dense/Sub/yConstK^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R ¥
prune_low_magnitude_dense/SubSub4prune_low_magnitude_dense/Sub/ReadVariableOp:value:0(prune_low_magnitude_dense/Sub/y:output:0*
T0	*
_output_shapes
: ³
$prune_low_magnitude_dense/FloorMod/yConstK^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 Rd¡
"prune_low_magnitude_dense/FloorModFloorMod!prune_low_magnitude_dense/Sub:z:0-prune_low_magnitude_dense/FloorMod/y:output:0*
T0	*
_output_shapes
: °
!prune_low_magnitude_dense/Equal/yConstK^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R 
prune_low_magnitude_dense/EqualEqual&prune_low_magnitude_dense/FloorMod:z:0*prune_low_magnitude_dense/Equal/y:output:0*
T0	*
_output_shapes
: 
&prune_low_magnitude_dense/LogicalAnd_1
LogicalAnd(prune_low_magnitude_dense/LogicalAnd:z:0#prune_low_magnitude_dense/Equal:z:0*
_output_shapes
: õ
prune_low_magnitude_dense/condIf*prune_low_magnitude_dense/LogicalAnd_1:z:01prune_low_magnitude_dense_readvariableop_resource&prune_low_magnitude_dense_cond_input_1&prune_low_magnitude_dense_cond_input_2&prune_low_magnitude_dense_cond_input_3*prune_low_magnitude_dense/LogicalAnd_1:z:0+^prune_low_magnitude_dense/AssignVariableOp*
Tcond0
*
Tin	
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: *$
_read_only_resource_inputs
*=
else_branch.R,
*prune_low_magnitude_dense_cond_false_26828*
output_shapes
: *<
then_branch-R+
)prune_low_magnitude_dense_cond_true_26827}
'prune_low_magnitude_dense/cond/IdentityIdentity'prune_low_magnitude_dense/cond:output:0*
T0
*
_output_shapes
: ·
"prune_low_magnitude_dense/update_1NoOpK^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity(^prune_low_magnitude_dense/cond/Identity*
_output_shapes
 
,prune_low_magnitude_dense/Mul/ReadVariableOpReadVariableOp&prune_low_magnitude_dense_cond_input_1*
_output_shapes

:*
dtype0¶
.prune_low_magnitude_dense/Mul/ReadVariableOp_1ReadVariableOp&prune_low_magnitude_dense_cond_input_2^prune_low_magnitude_dense/cond*
_output_shapes

:*
dtype0»
prune_low_magnitude_dense/MulMul4prune_low_magnitude_dense/Mul/ReadVariableOp:value:06prune_low_magnitude_dense/Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:þ
,prune_low_magnitude_dense/AssignVariableOp_1AssignVariableOp&prune_low_magnitude_dense_cond_input_1!prune_low_magnitude_dense/Mul:z:0-^prune_low_magnitude_dense/Mul/ReadVariableOp^prune_low_magnitude_dense/cond*
_output_shapes
 *
dtype0
$prune_low_magnitude_dense/group_depsNoOp-^prune_low_magnitude_dense/AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 
&prune_low_magnitude_dense/group_deps_1NoOp%^prune_low_magnitude_dense/group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 Å
/prune_low_magnitude_dense/MatMul/ReadVariableOpReadVariableOp&prune_low_magnitude_dense_cond_input_1-^prune_low_magnitude_dense/AssignVariableOp_1*
_output_shapes

:*
dtype0
 prune_low_magnitude_dense/MatMulMatMulinputs7prune_low_magnitude_dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0prune_low_magnitude_dense/BiasAdd/ReadVariableOpReadVariableOp9prune_low_magnitude_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ä
!prune_low_magnitude_dense/BiasAddBiasAdd*prune_low_magnitude_dense/MatMul:product:08prune_low_magnitude_dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
prune_low_magnitude_dense/ReluRelu*prune_low_magnitude_dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*prune_low_magnitude_dropout/ReadVariableOpReadVariableOp3prune_low_magnitude_dropout_readvariableop_resource*
_output_shapes
: *
dtype0	c
!prune_low_magnitude_dropout/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
prune_low_magnitude_dropout/addAddV22prune_low_magnitude_dropout/ReadVariableOp:value:0*prune_low_magnitude_dropout/add/y:output:0*
T0	*
_output_shapes
: ê
,prune_low_magnitude_dropout/AssignVariableOpAssignVariableOp3prune_low_magnitude_dropout_readvariableop_resource#prune_low_magnitude_dropout/add:z:0+^prune_low_magnitude_dropout/ReadVariableOp*
_output_shapes
 *
dtype0	o
"prune_low_magnitude_dropout/updateNoOp-^prune_low_magnitude_dropout/AssignVariableOp*
_output_shapes
 Ú
?prune_low_magnitude_dropout/assert_greater_equal/ReadVariableOpReadVariableOp3prune_low_magnitude_dropout_readvariableop_resource-^prune_low_magnitude_dropout/AssignVariableOp*
_output_shapes
: *
dtype0	t
2prune_low_magnitude_dropout/assert_greater_equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rô
=prune_low_magnitude_dropout/assert_greater_equal/GreaterEqualGreaterEqualGprune_low_magnitude_dropout/assert_greater_equal/ReadVariableOp:value:0;prune_low_magnitude_dropout/assert_greater_equal/y:output:0*
T0	*
_output_shapes
: w
5prune_low_magnitude_dropout/assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : ~
<prune_low_magnitude_dropout/assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : ~
<prune_low_magnitude_dropout/assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :§
6prune_low_magnitude_dropout/assert_greater_equal/rangeRangeEprune_low_magnitude_dropout/assert_greater_equal/range/start:output:0>prune_low_magnitude_dropout/assert_greater_equal/Rank:output:0Eprune_low_magnitude_dropout/assert_greater_equal/range/delta:output:0*
_output_shapes
: ×
4prune_low_magnitude_dropout/assert_greater_equal/AllAllAprune_low_magnitude_dropout/assert_greater_equal/GreaterEqual:z:0?prune_low_magnitude_dropout/assert_greater_equal/range:output:0*
_output_shapes
: 
=prune_low_magnitude_dropout/assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.«
?prune_low_magnitude_dropout/assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:È
?prune_low_magnitude_dropout/assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*Y
valuePBN BHx (prune_low_magnitude_dropout/assert_greater_equal/ReadVariableOp:0) = »
?prune_low_magnitude_dropout/assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*L
valueCBA B;y (prune_low_magnitude_dropout/assert_greater_equal/y:0) = ö
Cprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuardIf=prune_low_magnitude_dropout/assert_greater_equal/All:output:0=prune_low_magnitude_dropout/assert_greater_equal/All:output:0Gprune_low_magnitude_dropout/assert_greater_equal/ReadVariableOp:value:0;prune_low_magnitude_dropout/assert_greater_equal/y:output:0B^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *b
else_branchSRQ
Oprune_low_magnitude_dropout_assert_greater_equal_Assert_AssertGuard_false_26946*
output_shapes
: *a
then_branchRRP
Nprune_low_magnitude_dropout_assert_greater_equal_Assert_AssertGuard_true_26945Ç
Lprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/IdentityIdentityLprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: ¶
Lprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOp3prune_low_magnitude_dropout_readvariableop_resource-^prune_low_magnitude_dropout/AssignVariableOpM^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	Ô
Cprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/sub/yConstM^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R 
Aprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/subSubTprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/ReadVariableOp:value:0Lprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: Á
Bprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/CastCastEprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: Û
Gprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/truediv/yConstM^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  úC
Eprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/truedivRealDivFprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/Cast:y:0Pprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: Û
Gprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/Maximum/xConstM^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *    
Eprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/MaximumMaximumPprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/Maximum/x:output:0Iprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: Û
Gprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/Minimum/xConstM^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?
Eprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/MinimumMinimumPprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/Minimum/x:output:0Iprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: Ù
Eprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/sub_1/xConstM^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?
Cprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/sub_1SubNprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/sub_1/x:output:0Iprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: ×
Cprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/Pow/yConstM^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  @@
Aprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/PowPowGprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/sub_1:z:0Lprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: ×
Cprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/Mul/xConstM^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *¾þ
Aprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/MulMulLprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/Mul/x:output:0Eprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: Ü
Hprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/sparsity/yConstM^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *?
Fprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/sparsityAddV2Eprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/Mul:z:0Qprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: ¡
7prune_low_magnitude_dropout/GreaterEqual/ReadVariableOpReadVariableOp3prune_low_magnitude_dropout_readvariableop_resource-^prune_low_magnitude_dropout/AssignVariableOpM^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	»
*prune_low_magnitude_dropout/GreaterEqual/yConstM^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R Ï
(prune_low_magnitude_dropout/GreaterEqualGreaterEqual?prune_low_magnitude_dropout/GreaterEqual/ReadVariableOp:value:03prune_low_magnitude_dropout/GreaterEqual/y:output:0*
T0	*
_output_shapes
: 
4prune_low_magnitude_dropout/LessEqual/ReadVariableOpReadVariableOp3prune_low_magnitude_dropout_readvariableop_resource-^prune_low_magnitude_dropout/AssignVariableOpM^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	¹
'prune_low_magnitude_dropout/LessEqual/yConstM^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 RôÃ
%prune_low_magnitude_dropout/LessEqual	LessEqual<prune_low_magnitude_dropout/LessEqual/ReadVariableOp:value:00prune_low_magnitude_dropout/LessEqual/y:output:0*
T0	*
_output_shapes
: ´
"prune_low_magnitude_dropout/Less/xConstM^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rô³
"prune_low_magnitude_dropout/Less/yConstM^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R £
 prune_low_magnitude_dropout/LessLess+prune_low_magnitude_dropout/Less/x:output:0+prune_low_magnitude_dropout/Less/y:output:0*
T0	*
_output_shapes
: 
%prune_low_magnitude_dropout/LogicalOr	LogicalOr)prune_low_magnitude_dropout/LessEqual:z:0$prune_low_magnitude_dropout/Less:z:0*
_output_shapes
: ¥
&prune_low_magnitude_dropout/LogicalAnd
LogicalAnd,prune_low_magnitude_dropout/GreaterEqual:z:0)prune_low_magnitude_dropout/LogicalOr:z:0*
_output_shapes
: 
.prune_low_magnitude_dropout/Sub/ReadVariableOpReadVariableOp3prune_low_magnitude_dropout_readvariableop_resource-^prune_low_magnitude_dropout/AssignVariableOpM^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	²
!prune_low_magnitude_dropout/Sub/yConstM^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R «
prune_low_magnitude_dropout/SubSub6prune_low_magnitude_dropout/Sub/ReadVariableOp:value:0*prune_low_magnitude_dropout/Sub/y:output:0*
T0	*
_output_shapes
: ·
&prune_low_magnitude_dropout/FloorMod/yConstM^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 Rd§
$prune_low_magnitude_dropout/FloorModFloorMod#prune_low_magnitude_dropout/Sub:z:0/prune_low_magnitude_dropout/FloorMod/y:output:0*
T0	*
_output_shapes
: ´
#prune_low_magnitude_dropout/Equal/yConstM^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R £
!prune_low_magnitude_dropout/EqualEqual(prune_low_magnitude_dropout/FloorMod:z:0,prune_low_magnitude_dropout/Equal/y:output:0*
T0	*
_output_shapes
: ¡
(prune_low_magnitude_dropout/LogicalAnd_1
LogicalAnd*prune_low_magnitude_dropout/LogicalAnd:z:0%prune_low_magnitude_dropout/Equal:z:0*
_output_shapes
: ¨
 prune_low_magnitude_dropout/condStatelessIf,prune_low_magnitude_dropout/LogicalAnd_1:z:0,prune_low_magnitude_dropout/LogicalAnd_1:z:0*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *?
else_branch0R.
,prune_low_magnitude_dropout_cond_false_27003*
output_shapes
: *>
then_branch/R-
+prune_low_magnitude_dropout_cond_true_27002
)prune_low_magnitude_dropout/cond/IdentityIdentity)prune_low_magnitude_dropout/cond:output:0*
T0
*
_output_shapes
: ½
$prune_low_magnitude_dropout/update_1NoOpM^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity*^prune_low_magnitude_dropout/cond/Identity*
_output_shapes
 D
&prune_low_magnitude_dropout/group_depsNoOp*
_output_shapes
 n
)prune_low_magnitude_dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Â
'prune_low_magnitude_dropout/dropout/MulMul,prune_low_magnitude_dense/Relu:activations:02prune_low_magnitude_dropout/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)prune_low_magnitude_dropout/dropout/ShapeShape,prune_low_magnitude_dense/Relu:activations:0*
T0*
_output_shapes
:Ä
@prune_low_magnitude_dropout/dropout/random_uniform/RandomUniformRandomUniform2prune_low_magnitude_dropout/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0w
2prune_low_magnitude_dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>ú
0prune_low_magnitude_dropout/dropout/GreaterEqualGreaterEqualIprune_low_magnitude_dropout/dropout/random_uniform/RandomUniform:output:0;prune_low_magnitude_dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
(prune_low_magnitude_dropout/dropout/CastCast4prune_low_magnitude_dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
)prune_low_magnitude_dropout/dropout/Mul_1Mul+prune_low_magnitude_dropout/dropout/Mul:z:0,prune_low_magnitude_dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*prune_low_magnitude_dense_1/ReadVariableOpReadVariableOp3prune_low_magnitude_dense_1_readvariableop_resource*
_output_shapes
: *
dtype0	c
!prune_low_magnitude_dense_1/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
prune_low_magnitude_dense_1/addAddV22prune_low_magnitude_dense_1/ReadVariableOp:value:0*prune_low_magnitude_dense_1/add/y:output:0*
T0	*
_output_shapes
: ê
,prune_low_magnitude_dense_1/AssignVariableOpAssignVariableOp3prune_low_magnitude_dense_1_readvariableop_resource#prune_low_magnitude_dense_1/add:z:0+^prune_low_magnitude_dense_1/ReadVariableOp*
_output_shapes
 *
dtype0	o
"prune_low_magnitude_dense_1/updateNoOp-^prune_low_magnitude_dense_1/AssignVariableOp*
_output_shapes
 Ú
?prune_low_magnitude_dense_1/assert_greater_equal/ReadVariableOpReadVariableOp3prune_low_magnitude_dense_1_readvariableop_resource-^prune_low_magnitude_dense_1/AssignVariableOp*
_output_shapes
: *
dtype0	t
2prune_low_magnitude_dense_1/assert_greater_equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rô
=prune_low_magnitude_dense_1/assert_greater_equal/GreaterEqualGreaterEqualGprune_low_magnitude_dense_1/assert_greater_equal/ReadVariableOp:value:0;prune_low_magnitude_dense_1/assert_greater_equal/y:output:0*
T0	*
_output_shapes
: w
5prune_low_magnitude_dense_1/assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : ~
<prune_low_magnitude_dense_1/assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : ~
<prune_low_magnitude_dense_1/assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :§
6prune_low_magnitude_dense_1/assert_greater_equal/rangeRangeEprune_low_magnitude_dense_1/assert_greater_equal/range/start:output:0>prune_low_magnitude_dense_1/assert_greater_equal/Rank:output:0Eprune_low_magnitude_dense_1/assert_greater_equal/range/delta:output:0*
_output_shapes
: ×
4prune_low_magnitude_dense_1/assert_greater_equal/AllAllAprune_low_magnitude_dense_1/assert_greater_equal/GreaterEqual:z:0?prune_low_magnitude_dense_1/assert_greater_equal/range:output:0*
_output_shapes
: 
=prune_low_magnitude_dense_1/assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.«
?prune_low_magnitude_dense_1/assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:È
?prune_low_magnitude_dense_1/assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*Y
valuePBN BHx (prune_low_magnitude_dense_1/assert_greater_equal/ReadVariableOp:0) = »
?prune_low_magnitude_dense_1/assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*L
valueCBA B;y (prune_low_magnitude_dense_1/assert_greater_equal/y:0) = ø
Cprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuardIf=prune_low_magnitude_dense_1/assert_greater_equal/All:output:0=prune_low_magnitude_dense_1/assert_greater_equal/All:output:0Gprune_low_magnitude_dense_1/assert_greater_equal/ReadVariableOp:value:0;prune_low_magnitude_dense_1/assert_greater_equal/y:output:0D^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *b
else_branchSRQ
Oprune_low_magnitude_dense_1_assert_greater_equal_Assert_AssertGuard_false_27039*
output_shapes
: *a
then_branchRRP
Nprune_low_magnitude_dense_1_assert_greater_equal_Assert_AssertGuard_true_27038Ç
Lprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/IdentityIdentityLprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: ¶
Lprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOp3prune_low_magnitude_dense_1_readvariableop_resource-^prune_low_magnitude_dense_1/AssignVariableOpM^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	Ô
Cprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/sub/yConstM^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R 
Aprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/subSubTprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/ReadVariableOp:value:0Lprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: Á
Bprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/CastCastEprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: Û
Gprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/truediv/yConstM^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  úC
Eprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/truedivRealDivFprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/Cast:y:0Pprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: Û
Gprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/Maximum/xConstM^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *    
Eprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/MaximumMaximumPprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/Maximum/x:output:0Iprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: Û
Gprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/Minimum/xConstM^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?
Eprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/MinimumMinimumPprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/Minimum/x:output:0Iprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: Ù
Eprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/sub_1/xConstM^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?
Cprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/sub_1SubNprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/sub_1/x:output:0Iprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: ×
Cprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/Pow/yConstM^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  @@
Aprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/PowPowGprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/sub_1:z:0Lprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: ×
Cprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/Mul/xConstM^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *¾þ
Aprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/MulMulLprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/Mul/x:output:0Eprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: Ü
Hprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/sparsity/yConstM^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *?
Fprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/sparsityAddV2Eprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/Mul:z:0Qprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: ¡
7prune_low_magnitude_dense_1/GreaterEqual/ReadVariableOpReadVariableOp3prune_low_magnitude_dense_1_readvariableop_resource-^prune_low_magnitude_dense_1/AssignVariableOpM^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	»
*prune_low_magnitude_dense_1/GreaterEqual/yConstM^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R Ï
(prune_low_magnitude_dense_1/GreaterEqualGreaterEqual?prune_low_magnitude_dense_1/GreaterEqual/ReadVariableOp:value:03prune_low_magnitude_dense_1/GreaterEqual/y:output:0*
T0	*
_output_shapes
: 
4prune_low_magnitude_dense_1/LessEqual/ReadVariableOpReadVariableOp3prune_low_magnitude_dense_1_readvariableop_resource-^prune_low_magnitude_dense_1/AssignVariableOpM^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	¹
'prune_low_magnitude_dense_1/LessEqual/yConstM^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 RôÃ
%prune_low_magnitude_dense_1/LessEqual	LessEqual<prune_low_magnitude_dense_1/LessEqual/ReadVariableOp:value:00prune_low_magnitude_dense_1/LessEqual/y:output:0*
T0	*
_output_shapes
: ´
"prune_low_magnitude_dense_1/Less/xConstM^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rô³
"prune_low_magnitude_dense_1/Less/yConstM^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R £
 prune_low_magnitude_dense_1/LessLess+prune_low_magnitude_dense_1/Less/x:output:0+prune_low_magnitude_dense_1/Less/y:output:0*
T0	*
_output_shapes
: 
%prune_low_magnitude_dense_1/LogicalOr	LogicalOr)prune_low_magnitude_dense_1/LessEqual:z:0$prune_low_magnitude_dense_1/Less:z:0*
_output_shapes
: ¥
&prune_low_magnitude_dense_1/LogicalAnd
LogicalAnd,prune_low_magnitude_dense_1/GreaterEqual:z:0)prune_low_magnitude_dense_1/LogicalOr:z:0*
_output_shapes
: 
.prune_low_magnitude_dense_1/Sub/ReadVariableOpReadVariableOp3prune_low_magnitude_dense_1_readvariableop_resource-^prune_low_magnitude_dense_1/AssignVariableOpM^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	²
!prune_low_magnitude_dense_1/Sub/yConstM^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R «
prune_low_magnitude_dense_1/SubSub6prune_low_magnitude_dense_1/Sub/ReadVariableOp:value:0*prune_low_magnitude_dense_1/Sub/y:output:0*
T0	*
_output_shapes
: ·
&prune_low_magnitude_dense_1/FloorMod/yConstM^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 Rd§
$prune_low_magnitude_dense_1/FloorModFloorMod#prune_low_magnitude_dense_1/Sub:z:0/prune_low_magnitude_dense_1/FloorMod/y:output:0*
T0	*
_output_shapes
: ´
#prune_low_magnitude_dense_1/Equal/yConstM^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R £
!prune_low_magnitude_dense_1/EqualEqual(prune_low_magnitude_dense_1/FloorMod:z:0,prune_low_magnitude_dense_1/Equal/y:output:0*
T0	*
_output_shapes
: ¡
(prune_low_magnitude_dense_1/LogicalAnd_1
LogicalAnd*prune_low_magnitude_dense_1/LogicalAnd:z:0%prune_low_magnitude_dense_1/Equal:z:0*
_output_shapes
: 
 prune_low_magnitude_dense_1/condIf,prune_low_magnitude_dense_1/LogicalAnd_1:z:03prune_low_magnitude_dense_1_readvariableop_resource(prune_low_magnitude_dense_1_cond_input_1(prune_low_magnitude_dense_1_cond_input_2(prune_low_magnitude_dense_1_cond_input_3,prune_low_magnitude_dense_1/LogicalAnd_1:z:0-^prune_low_magnitude_dense_1/AssignVariableOp*
Tcond0
*
Tin	
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: *$
_read_only_resource_inputs
*?
else_branch0R.
,prune_low_magnitude_dense_1_cond_false_27096*
output_shapes
: *>
then_branch/R-
+prune_low_magnitude_dense_1_cond_true_27095
)prune_low_magnitude_dense_1/cond/IdentityIdentity)prune_low_magnitude_dense_1/cond:output:0*
T0
*
_output_shapes
: ½
$prune_low_magnitude_dense_1/update_1NoOpM^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity*^prune_low_magnitude_dense_1/cond/Identity*
_output_shapes
 
.prune_low_magnitude_dense_1/Mul/ReadVariableOpReadVariableOp(prune_low_magnitude_dense_1_cond_input_1*
_output_shapes

:*
dtype0¼
0prune_low_magnitude_dense_1/Mul/ReadVariableOp_1ReadVariableOp(prune_low_magnitude_dense_1_cond_input_2!^prune_low_magnitude_dense_1/cond*
_output_shapes

:*
dtype0Á
prune_low_magnitude_dense_1/MulMul6prune_low_magnitude_dense_1/Mul/ReadVariableOp:value:08prune_low_magnitude_dense_1/Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:
.prune_low_magnitude_dense_1/AssignVariableOp_1AssignVariableOp(prune_low_magnitude_dense_1_cond_input_1#prune_low_magnitude_dense_1/Mul:z:0/^prune_low_magnitude_dense_1/Mul/ReadVariableOp!^prune_low_magnitude_dense_1/cond*
_output_shapes
 *
dtype0£
&prune_low_magnitude_dense_1/group_depsNoOp/^prune_low_magnitude_dense_1/AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 
(prune_low_magnitude_dense_1/group_deps_1NoOp'^prune_low_magnitude_dense_1/group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 Ë
1prune_low_magnitude_dense_1/MatMul/ReadVariableOpReadVariableOp(prune_low_magnitude_dense_1_cond_input_1/^prune_low_magnitude_dense_1/AssignVariableOp_1*
_output_shapes

:*
dtype0È
"prune_low_magnitude_dense_1/MatMulMatMul-prune_low_magnitude_dropout/dropout/Mul_1:z:09prune_low_magnitude_dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
2prune_low_magnitude_dense_1/BiasAdd/ReadVariableOpReadVariableOp;prune_low_magnitude_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ê
#prune_low_magnitude_dense_1/BiasAddBiasAdd,prune_low_magnitude_dense_1/MatMul:product:0:prune_low_magnitude_dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-prune_low_magnitude_activation/ReadVariableOpReadVariableOp6prune_low_magnitude_activation_readvariableop_resource*
_output_shapes
: *
dtype0	f
$prune_low_magnitude_activation/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R²
"prune_low_magnitude_activation/addAddV25prune_low_magnitude_activation/ReadVariableOp:value:0-prune_low_magnitude_activation/add/y:output:0*
T0	*
_output_shapes
: ö
/prune_low_magnitude_activation/AssignVariableOpAssignVariableOp6prune_low_magnitude_activation_readvariableop_resource&prune_low_magnitude_activation/add:z:0.^prune_low_magnitude_activation/ReadVariableOp*
_output_shapes
 *
dtype0	u
%prune_low_magnitude_activation/updateNoOp0^prune_low_magnitude_activation/AssignVariableOp*
_output_shapes
 ã
Bprune_low_magnitude_activation/assert_greater_equal/ReadVariableOpReadVariableOp6prune_low_magnitude_activation_readvariableop_resource0^prune_low_magnitude_activation/AssignVariableOp*
_output_shapes
: *
dtype0	w
5prune_low_magnitude_activation/assert_greater_equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rý
@prune_low_magnitude_activation/assert_greater_equal/GreaterEqualGreaterEqualJprune_low_magnitude_activation/assert_greater_equal/ReadVariableOp:value:0>prune_low_magnitude_activation/assert_greater_equal/y:output:0*
T0	*
_output_shapes
: z
8prune_low_magnitude_activation/assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : 
?prune_low_magnitude_activation/assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
?prune_low_magnitude_activation/assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :³
9prune_low_magnitude_activation/assert_greater_equal/rangeRangeHprune_low_magnitude_activation/assert_greater_equal/range/start:output:0Aprune_low_magnitude_activation/assert_greater_equal/Rank:output:0Hprune_low_magnitude_activation/assert_greater_equal/range/delta:output:0*
_output_shapes
: à
7prune_low_magnitude_activation/assert_greater_equal/AllAllDprune_low_magnitude_activation/assert_greater_equal/GreaterEqual:z:0Bprune_low_magnitude_activation/assert_greater_equal/range:output:0*
_output_shapes
: 
@prune_low_magnitude_activation/assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.®
Bprune_low_magnitude_activation/assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:Î
Bprune_low_magnitude_activation/assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*\
valueSBQ BKx (prune_low_magnitude_activation/assert_greater_equal/ReadVariableOp:0) = Á
Bprune_low_magnitude_activation/assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*O
valueFBD B>y (prune_low_magnitude_activation/assert_greater_equal/y:0) = 
Fprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuardIf@prune_low_magnitude_activation/assert_greater_equal/All:output:0@prune_low_magnitude_activation/assert_greater_equal/All:output:0Jprune_low_magnitude_activation/assert_greater_equal/ReadVariableOp:value:0>prune_low_magnitude_activation/assert_greater_equal/y:output:0D^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *e
else_branchVRT
Rprune_low_magnitude_activation_assert_greater_equal_Assert_AssertGuard_false_27213*
output_shapes
: *d
then_branchURS
Qprune_low_magnitude_activation_assert_greater_equal_Assert_AssertGuard_true_27212Í
Oprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/IdentityIdentityOprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: Â
Oprune_low_magnitude_activation/polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOp6prune_low_magnitude_activation_readvariableop_resource0^prune_low_magnitude_activation/AssignVariableOpP^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	Ú
Fprune_low_magnitude_activation/polynomial_decay_pruning_schedule/sub/yConstP^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R 
Dprune_low_magnitude_activation/polynomial_decay_pruning_schedule/subSubWprune_low_magnitude_activation/polynomial_decay_pruning_schedule/ReadVariableOp:value:0Oprune_low_magnitude_activation/polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: Ç
Eprune_low_magnitude_activation/polynomial_decay_pruning_schedule/CastCastHprune_low_magnitude_activation/polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: á
Jprune_low_magnitude_activation/polynomial_decay_pruning_schedule/truediv/yConstP^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  úC
Hprune_low_magnitude_activation/polynomial_decay_pruning_schedule/truedivRealDivIprune_low_magnitude_activation/polynomial_decay_pruning_schedule/Cast:y:0Sprune_low_magnitude_activation/polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: á
Jprune_low_magnitude_activation/polynomial_decay_pruning_schedule/Maximum/xConstP^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *    
Hprune_low_magnitude_activation/polynomial_decay_pruning_schedule/MaximumMaximumSprune_low_magnitude_activation/polynomial_decay_pruning_schedule/Maximum/x:output:0Lprune_low_magnitude_activation/polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: á
Jprune_low_magnitude_activation/polynomial_decay_pruning_schedule/Minimum/xConstP^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?
Hprune_low_magnitude_activation/polynomial_decay_pruning_schedule/MinimumMinimumSprune_low_magnitude_activation/polynomial_decay_pruning_schedule/Minimum/x:output:0Lprune_low_magnitude_activation/polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: ß
Hprune_low_magnitude_activation/polynomial_decay_pruning_schedule/sub_1/xConstP^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?
Fprune_low_magnitude_activation/polynomial_decay_pruning_schedule/sub_1SubQprune_low_magnitude_activation/polynomial_decay_pruning_schedule/sub_1/x:output:0Lprune_low_magnitude_activation/polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: Ý
Fprune_low_magnitude_activation/polynomial_decay_pruning_schedule/Pow/yConstP^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  @@
Dprune_low_magnitude_activation/polynomial_decay_pruning_schedule/PowPowJprune_low_magnitude_activation/polynomial_decay_pruning_schedule/sub_1:z:0Oprune_low_magnitude_activation/polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: Ý
Fprune_low_magnitude_activation/polynomial_decay_pruning_schedule/Mul/xConstP^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *¾
Dprune_low_magnitude_activation/polynomial_decay_pruning_schedule/MulMulOprune_low_magnitude_activation/polynomial_decay_pruning_schedule/Mul/x:output:0Hprune_low_magnitude_activation/polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: â
Kprune_low_magnitude_activation/polynomial_decay_pruning_schedule/sparsity/yConstP^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *?
Iprune_low_magnitude_activation/polynomial_decay_pruning_schedule/sparsityAddV2Hprune_low_magnitude_activation/polynomial_decay_pruning_schedule/Mul:z:0Tprune_low_magnitude_activation/polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: ­
:prune_low_magnitude_activation/GreaterEqual/ReadVariableOpReadVariableOp6prune_low_magnitude_activation_readvariableop_resource0^prune_low_magnitude_activation/AssignVariableOpP^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	Á
-prune_low_magnitude_activation/GreaterEqual/yConstP^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R Ø
+prune_low_magnitude_activation/GreaterEqualGreaterEqualBprune_low_magnitude_activation/GreaterEqual/ReadVariableOp:value:06prune_low_magnitude_activation/GreaterEqual/y:output:0*
T0	*
_output_shapes
: ª
7prune_low_magnitude_activation/LessEqual/ReadVariableOpReadVariableOp6prune_low_magnitude_activation_readvariableop_resource0^prune_low_magnitude_activation/AssignVariableOpP^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	¿
*prune_low_magnitude_activation/LessEqual/yConstP^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 RôÌ
(prune_low_magnitude_activation/LessEqual	LessEqual?prune_low_magnitude_activation/LessEqual/ReadVariableOp:value:03prune_low_magnitude_activation/LessEqual/y:output:0*
T0	*
_output_shapes
: º
%prune_low_magnitude_activation/Less/xConstP^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rô¹
%prune_low_magnitude_activation/Less/yConstP^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R ¬
#prune_low_magnitude_activation/LessLess.prune_low_magnitude_activation/Less/x:output:0.prune_low_magnitude_activation/Less/y:output:0*
T0	*
_output_shapes
: ¤
(prune_low_magnitude_activation/LogicalOr	LogicalOr,prune_low_magnitude_activation/LessEqual:z:0'prune_low_magnitude_activation/Less:z:0*
_output_shapes
: ®
)prune_low_magnitude_activation/LogicalAnd
LogicalAnd/prune_low_magnitude_activation/GreaterEqual:z:0,prune_low_magnitude_activation/LogicalOr:z:0*
_output_shapes
: ¤
1prune_low_magnitude_activation/Sub/ReadVariableOpReadVariableOp6prune_low_magnitude_activation_readvariableop_resource0^prune_low_magnitude_activation/AssignVariableOpP^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	¸
$prune_low_magnitude_activation/Sub/yConstP^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R ´
"prune_low_magnitude_activation/SubSub9prune_low_magnitude_activation/Sub/ReadVariableOp:value:0-prune_low_magnitude_activation/Sub/y:output:0*
T0	*
_output_shapes
: ½
)prune_low_magnitude_activation/FloorMod/yConstP^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 Rd°
'prune_low_magnitude_activation/FloorModFloorMod&prune_low_magnitude_activation/Sub:z:02prune_low_magnitude_activation/FloorMod/y:output:0*
T0	*
_output_shapes
: º
&prune_low_magnitude_activation/Equal/yConstP^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R ¬
$prune_low_magnitude_activation/EqualEqual+prune_low_magnitude_activation/FloorMod:z:0/prune_low_magnitude_activation/Equal/y:output:0*
T0	*
_output_shapes
: ª
+prune_low_magnitude_activation/LogicalAnd_1
LogicalAnd-prune_low_magnitude_activation/LogicalAnd:z:0(prune_low_magnitude_activation/Equal:z:0*
_output_shapes
: ·
#prune_low_magnitude_activation/condStatelessIf/prune_low_magnitude_activation/LogicalAnd_1:z:0/prune_low_magnitude_activation/LogicalAnd_1:z:0*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *B
else_branch3R1
/prune_low_magnitude_activation_cond_false_27270*
output_shapes
: *A
then_branch2R0
.prune_low_magnitude_activation_cond_true_27269
,prune_low_magnitude_activation/cond/IdentityIdentity,prune_low_magnitude_activation/cond:output:0*
T0
*
_output_shapes
: Æ
'prune_low_magnitude_activation/update_1NoOpP^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity-^prune_low_magnitude_activation/cond/Identity*
_output_shapes
 G
)prune_low_magnitude_activation/group_depsNoOp*
_output_shapes
 
&prune_low_magnitude_activation/SigmoidSigmoid,prune_low_magnitude_dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
IdentityIdentity*prune_low_magnitude_activation/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
NoOpNoOp0^prune_low_magnitude_activation/AssignVariableOp;^prune_low_magnitude_activation/GreaterEqual/ReadVariableOp8^prune_low_magnitude_activation/LessEqual/ReadVariableOp.^prune_low_magnitude_activation/ReadVariableOp2^prune_low_magnitude_activation/Sub/ReadVariableOpG^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuardC^prune_low_magnitude_activation/assert_greater_equal/ReadVariableOpP^prune_low_magnitude_activation/polynomial_decay_pruning_schedule/ReadVariableOp+^prune_low_magnitude_dense/AssignVariableOp-^prune_low_magnitude_dense/AssignVariableOp_11^prune_low_magnitude_dense/BiasAdd/ReadVariableOp6^prune_low_magnitude_dense/GreaterEqual/ReadVariableOp3^prune_low_magnitude_dense/LessEqual/ReadVariableOp0^prune_low_magnitude_dense/MatMul/ReadVariableOp-^prune_low_magnitude_dense/Mul/ReadVariableOp/^prune_low_magnitude_dense/Mul/ReadVariableOp_1)^prune_low_magnitude_dense/ReadVariableOp-^prune_low_magnitude_dense/Sub/ReadVariableOpB^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard>^prune_low_magnitude_dense/assert_greater_equal/ReadVariableOp^prune_low_magnitude_dense/condK^prune_low_magnitude_dense/polynomial_decay_pruning_schedule/ReadVariableOp-^prune_low_magnitude_dense_1/AssignVariableOp/^prune_low_magnitude_dense_1/AssignVariableOp_13^prune_low_magnitude_dense_1/BiasAdd/ReadVariableOp8^prune_low_magnitude_dense_1/GreaterEqual/ReadVariableOp5^prune_low_magnitude_dense_1/LessEqual/ReadVariableOp2^prune_low_magnitude_dense_1/MatMul/ReadVariableOp/^prune_low_magnitude_dense_1/Mul/ReadVariableOp1^prune_low_magnitude_dense_1/Mul/ReadVariableOp_1+^prune_low_magnitude_dense_1/ReadVariableOp/^prune_low_magnitude_dense_1/Sub/ReadVariableOpD^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard@^prune_low_magnitude_dense_1/assert_greater_equal/ReadVariableOp!^prune_low_magnitude_dense_1/condM^prune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/ReadVariableOp-^prune_low_magnitude_dropout/AssignVariableOp8^prune_low_magnitude_dropout/GreaterEqual/ReadVariableOp5^prune_low_magnitude_dropout/LessEqual/ReadVariableOp+^prune_low_magnitude_dropout/ReadVariableOp/^prune_low_magnitude_dropout/Sub/ReadVariableOpD^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard@^prune_low_magnitude_dropout/assert_greater_equal/ReadVariableOpM^prune_low_magnitude_dropout/polynomial_decay_pruning_schedule/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 2b
/prune_low_magnitude_activation/AssignVariableOp/prune_low_magnitude_activation/AssignVariableOp2x
:prune_low_magnitude_activation/GreaterEqual/ReadVariableOp:prune_low_magnitude_activation/GreaterEqual/ReadVariableOp2r
7prune_low_magnitude_activation/LessEqual/ReadVariableOp7prune_low_magnitude_activation/LessEqual/ReadVariableOp2^
-prune_low_magnitude_activation/ReadVariableOp-prune_low_magnitude_activation/ReadVariableOp2f
1prune_low_magnitude_activation/Sub/ReadVariableOp1prune_low_magnitude_activation/Sub/ReadVariableOp2
Fprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuardFprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard2
Bprune_low_magnitude_activation/assert_greater_equal/ReadVariableOpBprune_low_magnitude_activation/assert_greater_equal/ReadVariableOp2¢
Oprune_low_magnitude_activation/polynomial_decay_pruning_schedule/ReadVariableOpOprune_low_magnitude_activation/polynomial_decay_pruning_schedule/ReadVariableOp2X
*prune_low_magnitude_dense/AssignVariableOp*prune_low_magnitude_dense/AssignVariableOp2\
,prune_low_magnitude_dense/AssignVariableOp_1,prune_low_magnitude_dense/AssignVariableOp_12d
0prune_low_magnitude_dense/BiasAdd/ReadVariableOp0prune_low_magnitude_dense/BiasAdd/ReadVariableOp2n
5prune_low_magnitude_dense/GreaterEqual/ReadVariableOp5prune_low_magnitude_dense/GreaterEqual/ReadVariableOp2h
2prune_low_magnitude_dense/LessEqual/ReadVariableOp2prune_low_magnitude_dense/LessEqual/ReadVariableOp2b
/prune_low_magnitude_dense/MatMul/ReadVariableOp/prune_low_magnitude_dense/MatMul/ReadVariableOp2\
,prune_low_magnitude_dense/Mul/ReadVariableOp,prune_low_magnitude_dense/Mul/ReadVariableOp2`
.prune_low_magnitude_dense/Mul/ReadVariableOp_1.prune_low_magnitude_dense/Mul/ReadVariableOp_12T
(prune_low_magnitude_dense/ReadVariableOp(prune_low_magnitude_dense/ReadVariableOp2\
,prune_low_magnitude_dense/Sub/ReadVariableOp,prune_low_magnitude_dense/Sub/ReadVariableOp2
Aprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuardAprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard2~
=prune_low_magnitude_dense/assert_greater_equal/ReadVariableOp=prune_low_magnitude_dense/assert_greater_equal/ReadVariableOp2@
prune_low_magnitude_dense/condprune_low_magnitude_dense/cond2
Jprune_low_magnitude_dense/polynomial_decay_pruning_schedule/ReadVariableOpJprune_low_magnitude_dense/polynomial_decay_pruning_schedule/ReadVariableOp2\
,prune_low_magnitude_dense_1/AssignVariableOp,prune_low_magnitude_dense_1/AssignVariableOp2`
.prune_low_magnitude_dense_1/AssignVariableOp_1.prune_low_magnitude_dense_1/AssignVariableOp_12h
2prune_low_magnitude_dense_1/BiasAdd/ReadVariableOp2prune_low_magnitude_dense_1/BiasAdd/ReadVariableOp2r
7prune_low_magnitude_dense_1/GreaterEqual/ReadVariableOp7prune_low_magnitude_dense_1/GreaterEqual/ReadVariableOp2l
4prune_low_magnitude_dense_1/LessEqual/ReadVariableOp4prune_low_magnitude_dense_1/LessEqual/ReadVariableOp2f
1prune_low_magnitude_dense_1/MatMul/ReadVariableOp1prune_low_magnitude_dense_1/MatMul/ReadVariableOp2`
.prune_low_magnitude_dense_1/Mul/ReadVariableOp.prune_low_magnitude_dense_1/Mul/ReadVariableOp2d
0prune_low_magnitude_dense_1/Mul/ReadVariableOp_10prune_low_magnitude_dense_1/Mul/ReadVariableOp_12X
*prune_low_magnitude_dense_1/ReadVariableOp*prune_low_magnitude_dense_1/ReadVariableOp2`
.prune_low_magnitude_dense_1/Sub/ReadVariableOp.prune_low_magnitude_dense_1/Sub/ReadVariableOp2
Cprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuardCprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard2
?prune_low_magnitude_dense_1/assert_greater_equal/ReadVariableOp?prune_low_magnitude_dense_1/assert_greater_equal/ReadVariableOp2D
 prune_low_magnitude_dense_1/cond prune_low_magnitude_dense_1/cond2
Lprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/ReadVariableOpLprune_low_magnitude_dense_1/polynomial_decay_pruning_schedule/ReadVariableOp2\
,prune_low_magnitude_dropout/AssignVariableOp,prune_low_magnitude_dropout/AssignVariableOp2r
7prune_low_magnitude_dropout/GreaterEqual/ReadVariableOp7prune_low_magnitude_dropout/GreaterEqual/ReadVariableOp2l
4prune_low_magnitude_dropout/LessEqual/ReadVariableOp4prune_low_magnitude_dropout/LessEqual/ReadVariableOp2X
*prune_low_magnitude_dropout/ReadVariableOp*prune_low_magnitude_dropout/ReadVariableOp2`
.prune_low_magnitude_dropout/Sub/ReadVariableOp.prune_low_magnitude_dropout/Sub/ReadVariableOp2
Cprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuardCprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard2
?prune_low_magnitude_dropout/assert_greater_equal/ReadVariableOp?prune_low_magnitude_dropout/assert_greater_equal/ReadVariableOp2
Lprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/ReadVariableOpLprune_low_magnitude_dropout/polynomial_decay_pruning_schedule/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ

3assert_greater_equal_Assert_AssertGuard_false_26206K
Gassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all
V
Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop	I
Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y	6
2assert_greater_equal_assert_assertguard_identity_1
¢.assert_greater_equal/Assert/AssertGuard/Assert
5assert_greater_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.¡
5assert_greater_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:¢
5assert_greater_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = 
5assert_greater_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = Ã
.assert_greater_equal/Assert/AssertGuard/AssertAssertGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all>assert_greater_equal/Assert/AssertGuard/Assert/data_0:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_1:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_2:output:0Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop>assert_greater_equal/Assert/AssertGuard/Assert/data_4:output:0Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y*
T

2		*
_output_shapes
 ×
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all/^assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: É
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp/^assert_greater_equal/Assert/AssertGuard/Assert*"
_acd_function_control_output(*
_output_shapes
 "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2`
.assert_greater_equal/Assert/AssertGuard/Assert.assert_greater_equal/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

¥
cond_false_26064
cond_placeholder
cond_placeholder_1
cond_placeholder_2
cond_placeholder_3
cond_identity_logicaland_1

cond_identity_1
'
	cond/NoOpNoOp*
_output_shapes
 b
cond/IdentityIdentitycond_identity_logicaland_1
^cond/NoOp*
T0
*
_output_shapes
: T
cond/Identity_1Identitycond/Identity:output:0*
T0
*
_output_shapes
: "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : :

_output_shapes
: 

¯
2assert_greater_equal_Assert_AssertGuard_true_27871M
Iassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all
7
3assert_greater_equal_assert_assertguard_placeholder	9
5assert_greater_equal_assert_assertguard_placeholder_1	6
2assert_greater_equal_assert_assertguard_identity_1
J
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 ×
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityIassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

Ì
Lprune_low_magnitude_dense_assert_greater_equal_Assert_AssertGuard_true_26770
}prune_low_magnitude_dense_assert_greater_equal_assert_assertguard_identity_prune_low_magnitude_dense_assert_greater_equal_all
Q
Mprune_low_magnitude_dense_assert_greater_equal_assert_assertguard_placeholder	S
Oprune_low_magnitude_dense_assert_greater_equal_assert_assertguard_placeholder_1	P
Lprune_low_magnitude_dense_assert_greater_equal_assert_assertguard_identity_1
d
Fprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 ¿
Jprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/IdentityIdentity}prune_low_magnitude_dense_assert_greater_equal_assert_assertguard_identity_prune_low_magnitude_dense_assert_greater_equal_allG^prune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: Î
Lprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity_1IdentitySprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "¥
Lprune_low_magnitude_dense_assert_greater_equal_assert_assertguard_identity_1Uprune_low_magnitude_dense/assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ç
t
V__inference_prune_low_magnitude_dropout_layer_call_and_return_conditional_losses_25823

inputs

identity_1'
	no_updateNoOp*
_output_shapes
 )
no_update_1NoOp*
_output_shapes
 (

group_depsNoOp*
_output_shapes
 N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í<

E__inference_sequential_layer_call_and_return_conditional_losses_26751

inputsG
5prune_low_magnitude_dense_mul_readvariableop_resource:I
7prune_low_magnitude_dense_mul_readvariableop_1_resource:G
9prune_low_magnitude_dense_biasadd_readvariableop_resource:I
7prune_low_magnitude_dense_1_mul_readvariableop_resource:K
9prune_low_magnitude_dense_1_mul_readvariableop_1_resource:I
;prune_low_magnitude_dense_1_biasadd_readvariableop_resource:
identity¢*prune_low_magnitude_dense/AssignVariableOp¢0prune_low_magnitude_dense/BiasAdd/ReadVariableOp¢/prune_low_magnitude_dense/MatMul/ReadVariableOp¢,prune_low_magnitude_dense/Mul/ReadVariableOp¢.prune_low_magnitude_dense/Mul/ReadVariableOp_1¢,prune_low_magnitude_dense_1/AssignVariableOp¢2prune_low_magnitude_dense_1/BiasAdd/ReadVariableOp¢1prune_low_magnitude_dense_1/MatMul/ReadVariableOp¢.prune_low_magnitude_dense_1/Mul/ReadVariableOp¢0prune_low_magnitude_dense_1/Mul/ReadVariableOp_1A
#prune_low_magnitude_dense/no_updateNoOp*
_output_shapes
 C
%prune_low_magnitude_dense/no_update_1NoOp*
_output_shapes
 ¢
,prune_low_magnitude_dense/Mul/ReadVariableOpReadVariableOp5prune_low_magnitude_dense_mul_readvariableop_resource*
_output_shapes

:*
dtype0¦
.prune_low_magnitude_dense/Mul/ReadVariableOp_1ReadVariableOp7prune_low_magnitude_dense_mul_readvariableop_1_resource*
_output_shapes

:*
dtype0»
prune_low_magnitude_dense/MulMul4prune_low_magnitude_dense/Mul/ReadVariableOp:value:06prune_low_magnitude_dense/Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:ê
*prune_low_magnitude_dense/AssignVariableOpAssignVariableOp5prune_low_magnitude_dense_mul_readvariableop_resource!prune_low_magnitude_dense/Mul:z:0-^prune_low_magnitude_dense/Mul/ReadVariableOp*
_output_shapes
 *
dtype0
$prune_low_magnitude_dense/group_depsNoOp+^prune_low_magnitude_dense/AssignVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 
&prune_low_magnitude_dense/group_deps_1NoOp%^prune_low_magnitude_dense/group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 Ò
/prune_low_magnitude_dense/MatMul/ReadVariableOpReadVariableOp5prune_low_magnitude_dense_mul_readvariableop_resource+^prune_low_magnitude_dense/AssignVariableOp*
_output_shapes

:*
dtype0
 prune_low_magnitude_dense/MatMulMatMulinputs7prune_low_magnitude_dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0prune_low_magnitude_dense/BiasAdd/ReadVariableOpReadVariableOp9prune_low_magnitude_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ä
!prune_low_magnitude_dense/BiasAddBiasAdd*prune_low_magnitude_dense/MatMul:product:08prune_low_magnitude_dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
prune_low_magnitude_dense/ReluRelu*prune_low_magnitude_dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
%prune_low_magnitude_dropout/no_updateNoOp*
_output_shapes
 E
'prune_low_magnitude_dropout/no_update_1NoOp*
_output_shapes
 D
&prune_low_magnitude_dropout/group_depsNoOp*
_output_shapes
 
$prune_low_magnitude_dropout/IdentityIdentity,prune_low_magnitude_dense/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
%prune_low_magnitude_dense_1/no_updateNoOp*
_output_shapes
 E
'prune_low_magnitude_dense_1/no_update_1NoOp*
_output_shapes
 ¦
.prune_low_magnitude_dense_1/Mul/ReadVariableOpReadVariableOp7prune_low_magnitude_dense_1_mul_readvariableop_resource*
_output_shapes

:*
dtype0ª
0prune_low_magnitude_dense_1/Mul/ReadVariableOp_1ReadVariableOp9prune_low_magnitude_dense_1_mul_readvariableop_1_resource*
_output_shapes

:*
dtype0Á
prune_low_magnitude_dense_1/MulMul6prune_low_magnitude_dense_1/Mul/ReadVariableOp:value:08prune_low_magnitude_dense_1/Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:ò
,prune_low_magnitude_dense_1/AssignVariableOpAssignVariableOp7prune_low_magnitude_dense_1_mul_readvariableop_resource#prune_low_magnitude_dense_1/Mul:z:0/^prune_low_magnitude_dense_1/Mul/ReadVariableOp*
_output_shapes
 *
dtype0¡
&prune_low_magnitude_dense_1/group_depsNoOp-^prune_low_magnitude_dense_1/AssignVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 
(prune_low_magnitude_dense_1/group_deps_1NoOp'^prune_low_magnitude_dense_1/group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 Ø
1prune_low_magnitude_dense_1/MatMul/ReadVariableOpReadVariableOp7prune_low_magnitude_dense_1_mul_readvariableop_resource-^prune_low_magnitude_dense_1/AssignVariableOp*
_output_shapes

:*
dtype0È
"prune_low_magnitude_dense_1/MatMulMatMul-prune_low_magnitude_dropout/Identity:output:09prune_low_magnitude_dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
2prune_low_magnitude_dense_1/BiasAdd/ReadVariableOpReadVariableOp;prune_low_magnitude_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ê
#prune_low_magnitude_dense_1/BiasAddBiasAdd,prune_low_magnitude_dense_1/MatMul:product:0:prune_low_magnitude_dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
(prune_low_magnitude_activation/no_updateNoOp*
_output_shapes
 H
*prune_low_magnitude_activation/no_update_1NoOp*
_output_shapes
 G
)prune_low_magnitude_activation/group_depsNoOp*
_output_shapes
 
&prune_low_magnitude_activation/SigmoidSigmoid,prune_low_magnitude_dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
IdentityIdentity*prune_low_magnitude_activation/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
NoOpNoOp+^prune_low_magnitude_dense/AssignVariableOp1^prune_low_magnitude_dense/BiasAdd/ReadVariableOp0^prune_low_magnitude_dense/MatMul/ReadVariableOp-^prune_low_magnitude_dense/Mul/ReadVariableOp/^prune_low_magnitude_dense/Mul/ReadVariableOp_1-^prune_low_magnitude_dense_1/AssignVariableOp3^prune_low_magnitude_dense_1/BiasAdd/ReadVariableOp2^prune_low_magnitude_dense_1/MatMul/ReadVariableOp/^prune_low_magnitude_dense_1/Mul/ReadVariableOp1^prune_low_magnitude_dense_1/Mul/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2X
*prune_low_magnitude_dense/AssignVariableOp*prune_low_magnitude_dense/AssignVariableOp2d
0prune_low_magnitude_dense/BiasAdd/ReadVariableOp0prune_low_magnitude_dense/BiasAdd/ReadVariableOp2b
/prune_low_magnitude_dense/MatMul/ReadVariableOp/prune_low_magnitude_dense/MatMul/ReadVariableOp2\
,prune_low_magnitude_dense/Mul/ReadVariableOp,prune_low_magnitude_dense/Mul/ReadVariableOp2`
.prune_low_magnitude_dense/Mul/ReadVariableOp_1.prune_low_magnitude_dense/Mul/ReadVariableOp_12\
,prune_low_magnitude_dense_1/AssignVariableOp,prune_low_magnitude_dense_1/AssignVariableOp2h
2prune_low_magnitude_dense_1/BiasAdd/ReadVariableOp2prune_low_magnitude_dense_1/BiasAdd/ReadVariableOp2f
1prune_low_magnitude_dense_1/MatMul/ReadVariableOp1prune_low_magnitude_dense_1/MatMul/ReadVariableOp2`
.prune_low_magnitude_dense_1/Mul/ReadVariableOp.prune_low_magnitude_dense_1/Mul/ReadVariableOp2d
0prune_low_magnitude_dense_1/Mul/ReadVariableOp_10prune_low_magnitude_dense_1/Mul/ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü
ë
Qprune_low_magnitude_activation_assert_greater_equal_Assert_AssertGuard_true_27212
prune_low_magnitude_activation_assert_greater_equal_assert_assertguard_identity_prune_low_magnitude_activation_assert_greater_equal_all
V
Rprune_low_magnitude_activation_assert_greater_equal_assert_assertguard_placeholder	X
Tprune_low_magnitude_activation_assert_greater_equal_assert_assertguard_placeholder_1	U
Qprune_low_magnitude_activation_assert_greater_equal_assert_assertguard_identity_1
i
Kprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 Ô
Oprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/IdentityIdentityprune_low_magnitude_activation_assert_greater_equal_assert_assertguard_identity_prune_low_magnitude_activation_assert_greater_equal_allL^prune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: Ø
Qprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity_1IdentityXprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "¯
Qprune_low_magnitude_activation_assert_greater_equal_assert_assertguard_identity_1Zprune_low_magnitude_activation/assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
÷U

V__inference_prune_low_magnitude_dropout_layer_call_and_return_conditional_losses_27617

inputs!
readvariableop_resource:	 
identity¢AssignVariableOp¢GreaterEqual/ReadVariableOp¢LessEqual/ReadVariableOp¢ReadVariableOp¢Sub/ReadVariableOp¢'assert_greater_equal/Assert/AssertGuard¢#assert_greater_equal/ReadVariableOp¢0polynomial_decay_pruning_schedule/ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	G
add/yConst*
_output_shapes
: *
dtype0	*
value	B	 RU
addAddV2ReadVariableOp:value:0add/y:output:0*
T0	*
_output_shapes
: z
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*
_output_shapes
 *
dtype0	7
updateNoOp^AssignVariableOp*
_output_shapes
 
#assert_greater_equal/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
: *
dtype0	X
assert_greater_equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
!assert_greater_equal/GreaterEqualGreaterEqual+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
T0	*
_output_shapes
: [
assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :·
assert_greater_equal/rangeRange)assert_greater_equal/range/start:output:0"assert_greater_equal/Rank:output:0)assert_greater_equal/range/delta:output:0*
_output_shapes
: 
assert_greater_equal/AllAll%assert_greater_equal/GreaterEqual:z:0#assert_greater_equal/range:output:0*
_output_shapes
: ñ
!assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.
#assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:
#assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = 
#assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = î
'assert_greater_equal/Assert/AssertGuardIf!assert_greater_equal/All:output:0!assert_greater_equal/All:output:0+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *F
else_branch7R5
3assert_greater_equal_Assert_AssertGuard_false_27540*
output_shapes
: *E
then_branch6R4
2assert_greater_equal_Assert_AssertGuard_true_27539
0assert_greater_equal/Assert/AssertGuard/IdentityIdentity0assert_greater_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: Æ
0polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
'polynomial_decay_pruning_schedule/sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R ¹
%polynomial_decay_pruning_schedule/subSub8polynomial_decay_pruning_schedule/ReadVariableOp:value:00polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: 
&polynomial_decay_pruning_schedule/CastCast)polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: £
+polynomial_decay_pruning_schedule/truediv/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  úC·
)polynomial_decay_pruning_schedule/truedivRealDiv*polynomial_decay_pruning_schedule/Cast:y:04polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: £
+polynomial_decay_pruning_schedule/Maximum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *    º
)polynomial_decay_pruning_schedule/MaximumMaximum4polynomial_decay_pruning_schedule/Maximum/x:output:0-polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: £
+polynomial_decay_pruning_schedule/Minimum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?º
)polynomial_decay_pruning_schedule/MinimumMinimum4polynomial_decay_pruning_schedule/Minimum/x:output:0-polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: ¡
)polynomial_decay_pruning_schedule/sub_1/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?²
'polynomial_decay_pruning_schedule/sub_1Sub2polynomial_decay_pruning_schedule/sub_1/x:output:0-polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: 
'polynomial_decay_pruning_schedule/Pow/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  @@¬
%polynomial_decay_pruning_schedule/PowPow+polynomial_decay_pruning_schedule/sub_1:z:00polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: 
'polynomial_decay_pruning_schedule/Mul/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *¾ª
%polynomial_decay_pruning_schedule/MulMul0polynomial_decay_pruning_schedule/Mul/x:output:0)polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: ¤
,polynomial_decay_pruning_schedule/sparsity/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *?¶
*polynomial_decay_pruning_schedule/sparsityAddV2)polynomial_decay_pruning_schedule/Mul:z:05polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: ±
GreaterEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
GreaterEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R {
GreaterEqualGreaterEqual#GreaterEqual/ReadVariableOp:value:0GreaterEqual/y:output:0*
T0	*
_output_shapes
: ®
LessEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
LessEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rôo
	LessEqual	LessEqual LessEqual/ReadVariableOp:value:0LessEqual/y:output:0*
T0	*
_output_shapes
: |
Less/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rô{
Less/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
LessLessLess/x:output:0Less/y:output:0*
T0	*
_output_shapes
: G
	LogicalOr	LogicalOrLessEqual:z:0Less:z:0*
_output_shapes
: Q

LogicalAnd
LogicalAndGreaterEqual:z:0LogicalOr:z:0*
_output_shapes
: ¨
Sub/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	z
Sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R W
SubSubSub/ReadVariableOp:value:0Sub/y:output:0*
T0	*
_output_shapes
: 

FloorMod/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 RdS
FloorModFloorModSub:z:0FloorMod/y:output:0*
T0	*
_output_shapes
: |
Equal/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
EqualEqualFloorMod:z:0Equal/y:output:0*
T0	*
_output_shapes
: M
LogicalAnd_1
LogicalAndLogicalAnd:z:0	Equal:z:0*
_output_shapes
: 
condStatelessIfLogicalAnd_1:z:0LogicalAnd_1:z:0*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *#
else_branchR
cond_false_27597*
output_shapes
: *"
then_branchR
cond_true_27596I
cond/IdentityIdentitycond:output:0*
T0
*
_output_shapes
: i
update_1NoOp1^assert_greater_equal/Assert/AssertGuard/Identity^cond/Identity*
_output_shapes
 (

group_depsNoOp*
_output_shapes
 R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitydropout/Mul_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
NoOpNoOp^AssignVariableOp^GreaterEqual/ReadVariableOp^LessEqual/ReadVariableOp^ReadVariableOp^Sub/ReadVariableOp(^assert_greater_equal/Assert/AssertGuard$^assert_greater_equal/ReadVariableOp1^polynomial_decay_pruning_schedule/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
AssignVariableOpAssignVariableOp2:
GreaterEqual/ReadVariableOpGreaterEqual/ReadVariableOp24
LessEqual/ReadVariableOpLessEqual/ReadVariableOp2 
ReadVariableOpReadVariableOp2(
Sub/ReadVariableOpSub/ReadVariableOp2R
'assert_greater_equal/Assert/AssertGuard'assert_greater_equal/Assert/AssertGuard2J
#assert_greater_equal/ReadVariableOp#assert_greater_equal/ReadVariableOp2d
0polynomial_decay_pruning_schedule/ReadVariableOp0polynomial_decay_pruning_schedule/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
]

V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_26165

inputs!
readvariableop_resource:	 
cond_input_1:
cond_input_2:
cond_input_3: -
biasadd_readvariableop_resource:
identity¢AssignVariableOp¢AssignVariableOp_1¢BiasAdd/ReadVariableOp¢GreaterEqual/ReadVariableOp¢LessEqual/ReadVariableOp¢MatMul/ReadVariableOp¢Mul/ReadVariableOp¢Mul/ReadVariableOp_1¢ReadVariableOp¢Sub/ReadVariableOp¢'assert_greater_equal/Assert/AssertGuard¢#assert_greater_equal/ReadVariableOp¢cond¢0polynomial_decay_pruning_schedule/ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	G
add/yConst*
_output_shapes
: *
dtype0	*
value	B	 RU
addAddV2ReadVariableOp:value:0add/y:output:0*
T0	*
_output_shapes
: z
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*
_output_shapes
 *
dtype0	7
updateNoOp^AssignVariableOp*
_output_shapes
 
#assert_greater_equal/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
: *
dtype0	X
assert_greater_equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
!assert_greater_equal/GreaterEqualGreaterEqual+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
T0	*
_output_shapes
: [
assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :·
assert_greater_equal/rangeRange)assert_greater_equal/range/start:output:0"assert_greater_equal/Rank:output:0)assert_greater_equal/range/delta:output:0*
_output_shapes
: 
assert_greater_equal/AllAll%assert_greater_equal/GreaterEqual:z:0#assert_greater_equal/range:output:0*
_output_shapes
: ñ
!assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.
#assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:
#assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = 
#assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = î
'assert_greater_equal/Assert/AssertGuardIf!assert_greater_equal/All:output:0!assert_greater_equal/All:output:0+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *F
else_branch7R5
3assert_greater_equal_Assert_AssertGuard_false_26007*
output_shapes
: *E
then_branch6R4
2assert_greater_equal_Assert_AssertGuard_true_26006
0assert_greater_equal/Assert/AssertGuard/IdentityIdentity0assert_greater_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: Æ
0polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
'polynomial_decay_pruning_schedule/sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R ¹
%polynomial_decay_pruning_schedule/subSub8polynomial_decay_pruning_schedule/ReadVariableOp:value:00polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: 
&polynomial_decay_pruning_schedule/CastCast)polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: £
+polynomial_decay_pruning_schedule/truediv/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  úC·
)polynomial_decay_pruning_schedule/truedivRealDiv*polynomial_decay_pruning_schedule/Cast:y:04polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: £
+polynomial_decay_pruning_schedule/Maximum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *    º
)polynomial_decay_pruning_schedule/MaximumMaximum4polynomial_decay_pruning_schedule/Maximum/x:output:0-polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: £
+polynomial_decay_pruning_schedule/Minimum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?º
)polynomial_decay_pruning_schedule/MinimumMinimum4polynomial_decay_pruning_schedule/Minimum/x:output:0-polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: ¡
)polynomial_decay_pruning_schedule/sub_1/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?²
'polynomial_decay_pruning_schedule/sub_1Sub2polynomial_decay_pruning_schedule/sub_1/x:output:0-polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: 
'polynomial_decay_pruning_schedule/Pow/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  @@¬
%polynomial_decay_pruning_schedule/PowPow+polynomial_decay_pruning_schedule/sub_1:z:00polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: 
'polynomial_decay_pruning_schedule/Mul/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *¾ª
%polynomial_decay_pruning_schedule/MulMul0polynomial_decay_pruning_schedule/Mul/x:output:0)polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: ¤
,polynomial_decay_pruning_schedule/sparsity/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *?¶
*polynomial_decay_pruning_schedule/sparsityAddV2)polynomial_decay_pruning_schedule/Mul:z:05polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: ±
GreaterEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
GreaterEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R {
GreaterEqualGreaterEqual#GreaterEqual/ReadVariableOp:value:0GreaterEqual/y:output:0*
T0	*
_output_shapes
: ®
LessEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
LessEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rôo
	LessEqual	LessEqual LessEqual/ReadVariableOp:value:0LessEqual/y:output:0*
T0	*
_output_shapes
: |
Less/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rô{
Less/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
LessLessLess/x:output:0Less/y:output:0*
T0	*
_output_shapes
: G
	LogicalOr	LogicalOrLessEqual:z:0Less:z:0*
_output_shapes
: Q

LogicalAnd
LogicalAndGreaterEqual:z:0LogicalOr:z:0*
_output_shapes
: ¨
Sub/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	z
Sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R W
SubSubSub/ReadVariableOp:value:0Sub/y:output:0*
T0	*
_output_shapes
: 

FloorMod/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 RdS
FloorModFloorModSub:z:0FloorMod/y:output:0*
T0	*
_output_shapes
: |
Equal/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
EqualEqualFloorMod:z:0Equal/y:output:0*
T0	*
_output_shapes
: M
LogicalAnd_1
LogicalAndLogicalAnd:z:0	Equal:z:0*
_output_shapes
: ñ
condIfLogicalAnd_1:z:0readvariableop_resourcecond_input_1cond_input_2cond_input_3LogicalAnd_1:z:0^AssignVariableOp*
Tcond0
*
Tin	
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: *$
_read_only_resource_inputs
*#
else_branchR
cond_false_26064*
output_shapes
: *"
then_branchR
cond_true_26063I
cond/IdentityIdentitycond:output:0*
T0
*
_output_shapes
: i
update_1NoOp1^assert_greater_equal/Assert/AssertGuard/Identity^cond/Identity*
_output_shapes
 _
Mul/ReadVariableOpReadVariableOpcond_input_1*
_output_shapes

:*
dtype0h
Mul/ReadVariableOp_1ReadVariableOpcond_input_2^cond*
_output_shapes

:*
dtype0m
MulMulMul/ReadVariableOp:value:0Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:|
AssignVariableOp_1AssignVariableOpcond_input_1Mul:z:0^Mul/ReadVariableOp^cond*
_output_shapes
 *
dtype0k

group_depsNoOp^AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 e
group_deps_1NoOp^group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 w
MatMul/ReadVariableOpReadVariableOpcond_input_1^AssignVariableOp_1*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^BiasAdd/ReadVariableOp^GreaterEqual/ReadVariableOp^LessEqual/ReadVariableOp^MatMul/ReadVariableOp^Mul/ReadVariableOp^Mul/ReadVariableOp_1^ReadVariableOp^Sub/ReadVariableOp(^assert_greater_equal/Assert/AssertGuard$^assert_greater_equal/ReadVariableOp^cond1^polynomial_decay_pruning_schedule/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_120
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2:
GreaterEqual/ReadVariableOpGreaterEqual/ReadVariableOp24
LessEqual/ReadVariableOpLessEqual/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
Mul/ReadVariableOpMul/ReadVariableOp2,
Mul/ReadVariableOp_1Mul/ReadVariableOp_12 
ReadVariableOpReadVariableOp2(
Sub/ReadVariableOpSub/ReadVariableOp2R
'assert_greater_equal/Assert/AssertGuard'assert_greater_equal/Assert/AssertGuard2J
#assert_greater_equal/ReadVariableOp#assert_greater_equal/ReadVariableOp2
condcond2d
0polynomial_decay_pruning_schedule/ReadVariableOp0polynomial_decay_pruning_schedule/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸
G
cond_false_26263
cond_identity_logicaland_1

cond_identity_1
'
	cond/NoOpNoOp*
_output_shapes
 b
cond/IdentityIdentitycond_identity_logicaland_1
^cond/NoOp*
T0
*
_output_shapes
: T
cond/Identity_1Identitycond/Identity:output:0*
T0
*
_output_shapes
: "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 

_output_shapes
: 
÷U

V__inference_prune_low_magnitude_dropout_layer_call_and_return_conditional_losses_26283

inputs!
readvariableop_resource:	 
identity¢AssignVariableOp¢GreaterEqual/ReadVariableOp¢LessEqual/ReadVariableOp¢ReadVariableOp¢Sub/ReadVariableOp¢'assert_greater_equal/Assert/AssertGuard¢#assert_greater_equal/ReadVariableOp¢0polynomial_decay_pruning_schedule/ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	G
add/yConst*
_output_shapes
: *
dtype0	*
value	B	 RU
addAddV2ReadVariableOp:value:0add/y:output:0*
T0	*
_output_shapes
: z
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*
_output_shapes
 *
dtype0	7
updateNoOp^AssignVariableOp*
_output_shapes
 
#assert_greater_equal/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
: *
dtype0	X
assert_greater_equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
!assert_greater_equal/GreaterEqualGreaterEqual+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
T0	*
_output_shapes
: [
assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :·
assert_greater_equal/rangeRange)assert_greater_equal/range/start:output:0"assert_greater_equal/Rank:output:0)assert_greater_equal/range/delta:output:0*
_output_shapes
: 
assert_greater_equal/AllAll%assert_greater_equal/GreaterEqual:z:0#assert_greater_equal/range:output:0*
_output_shapes
: ñ
!assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.
#assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:
#assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = 
#assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = î
'assert_greater_equal/Assert/AssertGuardIf!assert_greater_equal/All:output:0!assert_greater_equal/All:output:0+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *F
else_branch7R5
3assert_greater_equal_Assert_AssertGuard_false_26206*
output_shapes
: *E
then_branch6R4
2assert_greater_equal_Assert_AssertGuard_true_26205
0assert_greater_equal/Assert/AssertGuard/IdentityIdentity0assert_greater_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: Æ
0polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
'polynomial_decay_pruning_schedule/sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R ¹
%polynomial_decay_pruning_schedule/subSub8polynomial_decay_pruning_schedule/ReadVariableOp:value:00polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: 
&polynomial_decay_pruning_schedule/CastCast)polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: £
+polynomial_decay_pruning_schedule/truediv/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  úC·
)polynomial_decay_pruning_schedule/truedivRealDiv*polynomial_decay_pruning_schedule/Cast:y:04polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: £
+polynomial_decay_pruning_schedule/Maximum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *    º
)polynomial_decay_pruning_schedule/MaximumMaximum4polynomial_decay_pruning_schedule/Maximum/x:output:0-polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: £
+polynomial_decay_pruning_schedule/Minimum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?º
)polynomial_decay_pruning_schedule/MinimumMinimum4polynomial_decay_pruning_schedule/Minimum/x:output:0-polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: ¡
)polynomial_decay_pruning_schedule/sub_1/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?²
'polynomial_decay_pruning_schedule/sub_1Sub2polynomial_decay_pruning_schedule/sub_1/x:output:0-polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: 
'polynomial_decay_pruning_schedule/Pow/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  @@¬
%polynomial_decay_pruning_schedule/PowPow+polynomial_decay_pruning_schedule/sub_1:z:00polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: 
'polynomial_decay_pruning_schedule/Mul/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *¾ª
%polynomial_decay_pruning_schedule/MulMul0polynomial_decay_pruning_schedule/Mul/x:output:0)polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: ¤
,polynomial_decay_pruning_schedule/sparsity/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *?¶
*polynomial_decay_pruning_schedule/sparsityAddV2)polynomial_decay_pruning_schedule/Mul:z:05polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: ±
GreaterEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
GreaterEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R {
GreaterEqualGreaterEqual#GreaterEqual/ReadVariableOp:value:0GreaterEqual/y:output:0*
T0	*
_output_shapes
: ®
LessEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
LessEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rôo
	LessEqual	LessEqual LessEqual/ReadVariableOp:value:0LessEqual/y:output:0*
T0	*
_output_shapes
: |
Less/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rô{
Less/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
LessLessLess/x:output:0Less/y:output:0*
T0	*
_output_shapes
: G
	LogicalOr	LogicalOrLessEqual:z:0Less:z:0*
_output_shapes
: Q

LogicalAnd
LogicalAndGreaterEqual:z:0LogicalOr:z:0*
_output_shapes
: ¨
Sub/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	z
Sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R W
SubSubSub/ReadVariableOp:value:0Sub/y:output:0*
T0	*
_output_shapes
: 

FloorMod/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 RdS
FloorModFloorModSub:z:0FloorMod/y:output:0*
T0	*
_output_shapes
: |
Equal/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
EqualEqualFloorMod:z:0Equal/y:output:0*
T0	*
_output_shapes
: M
LogicalAnd_1
LogicalAndLogicalAnd:z:0	Equal:z:0*
_output_shapes
: 
condStatelessIfLogicalAnd_1:z:0LogicalAnd_1:z:0*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *#
else_branchR
cond_false_26263*
output_shapes
: *"
then_branchR
cond_true_26262I
cond/IdentityIdentitycond:output:0*
T0
*
_output_shapes
: i
update_1NoOp1^assert_greater_equal/Assert/AssertGuard/Identity^cond/Identity*
_output_shapes
 (

group_depsNoOp*
_output_shapes
 R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitydropout/Mul_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
NoOpNoOp^AssignVariableOp^GreaterEqual/ReadVariableOp^LessEqual/ReadVariableOp^ReadVariableOp^Sub/ReadVariableOp(^assert_greater_equal/Assert/AssertGuard$^assert_greater_equal/ReadVariableOp1^polynomial_decay_pruning_schedule/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
AssignVariableOpAssignVariableOp2:
GreaterEqual/ReadVariableOpGreaterEqual/ReadVariableOp24
LessEqual/ReadVariableOpLessEqual/ReadVariableOp2 
ReadVariableOpReadVariableOp2(
Sub/ReadVariableOpSub/ReadVariableOp2R
'assert_greater_equal/Assert/AssertGuard'assert_greater_equal/Assert/AssertGuard2J
#assert_greater_equal/ReadVariableOp#assert_greater_equal/ReadVariableOp2d
0polynomial_decay_pruning_schedule/ReadVariableOp0polynomial_decay_pruning_schedule/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
~
¤
)prune_low_magnitude_dense_cond_true_26827b
Xprune_low_magnitude_dense_cond_polynomial_decay_pruning_schedule_readvariableop_resource:	 X
Fprune_low_magnitude_dense_cond_pruning_ops_abs_readvariableop_resource:J
8prune_low_magnitude_dense_cond_assignvariableop_resource:D
:prune_low_magnitude_dense_cond_assignvariableop_1_resource: R
Nprune_low_magnitude_dense_cond_identity_prune_low_magnitude_dense_logicaland_1
-
)prune_low_magnitude_dense_cond_identity_1
¢/prune_low_magnitude_dense/cond/AssignVariableOp¢1prune_low_magnitude_dense/cond/AssignVariableOp_1¢:prune_low_magnitude_dense/cond/GreaterEqual/ReadVariableOp¢7prune_low_magnitude_dense/cond/LessEqual/ReadVariableOp¢1prune_low_magnitude_dense/cond/Sub/ReadVariableOp¢Oprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/ReadVariableOp¢=prune_low_magnitude_dense/cond/pruning_ops/Abs/ReadVariableOpà
Oprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOpXprune_low_magnitude_dense_cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	
Fprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Dprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/subSubWprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/ReadVariableOp:value:0Oprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: Ç
Eprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/CastCastHprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 
Jprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  úC
Hprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/truedivRealDivIprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/Cast:y:0Sprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: 
Jprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/Maximum/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
Hprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/MaximumMaximumSprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/Maximum/x:output:0Lprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: 
Jprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/Minimum/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Hprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/MinimumMinimumSprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/Minimum/x:output:0Lprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: 
Hprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Fprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/sub_1SubQprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/sub_1/x:output:0Lprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: 
Fprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@
Dprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/PowPowJprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/sub_1:z:0Oprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: 
Fprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/Mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¾
Dprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/MulMulOprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/Mul/x:output:0Hprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: 
Kprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/sparsity/yConst*
_output_shapes
: *
dtype0*
valueB
 *?
Iprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/sparsityAddV2Hprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/Mul:z:0Tprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: Ë
:prune_low_magnitude_dense/cond/GreaterEqual/ReadVariableOpReadVariableOpXprune_low_magnitude_dense_cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	o
-prune_low_magnitude_dense/cond/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R Ø
+prune_low_magnitude_dense/cond/GreaterEqualGreaterEqualBprune_low_magnitude_dense/cond/GreaterEqual/ReadVariableOp:value:06prune_low_magnitude_dense/cond/GreaterEqual/y:output:0*
T0	*
_output_shapes
: È
7prune_low_magnitude_dense/cond/LessEqual/ReadVariableOpReadVariableOpXprune_low_magnitude_dense_cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	m
*prune_low_magnitude_dense/cond/LessEqual/yConst*
_output_shapes
: *
dtype0	*
value
B	 RôÌ
(prune_low_magnitude_dense/cond/LessEqual	LessEqual?prune_low_magnitude_dense/cond/LessEqual/ReadVariableOp:value:03prune_low_magnitude_dense/cond/LessEqual/y:output:0*
T0	*
_output_shapes
: h
%prune_low_magnitude_dense/cond/Less/xConst*
_output_shapes
: *
dtype0	*
value
B	 Rôg
%prune_low_magnitude_dense/cond/Less/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ¬
#prune_low_magnitude_dense/cond/LessLess.prune_low_magnitude_dense/cond/Less/x:output:0.prune_low_magnitude_dense/cond/Less/y:output:0*
T0	*
_output_shapes
: ¤
(prune_low_magnitude_dense/cond/LogicalOr	LogicalOr,prune_low_magnitude_dense/cond/LessEqual:z:0'prune_low_magnitude_dense/cond/Less:z:0*
_output_shapes
: ®
)prune_low_magnitude_dense/cond/LogicalAnd
LogicalAnd/prune_low_magnitude_dense/cond/GreaterEqual:z:0,prune_low_magnitude_dense/cond/LogicalOr:z:0*
_output_shapes
: Â
1prune_low_magnitude_dense/cond/Sub/ReadVariableOpReadVariableOpXprune_low_magnitude_dense_cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	f
$prune_low_magnitude_dense/cond/Sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ´
"prune_low_magnitude_dense/cond/SubSub9prune_low_magnitude_dense/cond/Sub/ReadVariableOp:value:0-prune_low_magnitude_dense/cond/Sub/y:output:0*
T0	*
_output_shapes
: k
)prune_low_magnitude_dense/cond/FloorMod/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rd°
'prune_low_magnitude_dense/cond/FloorModFloorMod&prune_low_magnitude_dense/cond/Sub:z:02prune_low_magnitude_dense/cond/FloorMod/y:output:0*
T0	*
_output_shapes
: h
&prune_low_magnitude_dense/cond/Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ¬
$prune_low_magnitude_dense/cond/EqualEqual+prune_low_magnitude_dense/cond/FloorMod:z:0/prune_low_magnitude_dense/cond/Equal/y:output:0*
T0	*
_output_shapes
: ª
+prune_low_magnitude_dense/cond/LogicalAnd_1
LogicalAnd-prune_low_magnitude_dense/cond/LogicalAnd:z:0(prune_low_magnitude_dense/cond/Equal:z:0*
_output_shapes
: Ä
=prune_low_magnitude_dense/cond/pruning_ops/Abs/ReadVariableOpReadVariableOpFprune_low_magnitude_dense_cond_pruning_ops_abs_readvariableop_resource*
_output_shapes

:*
dtype0¥
.prune_low_magnitude_dense/cond/pruning_ops/AbsAbsEprune_low_magnitude_dense/cond/pruning_ops/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:r
/prune_low_magnitude_dense/cond/pruning_ops/SizeConst*
_output_shapes
: *
dtype0*
value
B :à¡
/prune_low_magnitude_dense/cond/pruning_ops/CastCast8prune_low_magnitude_dense/cond/pruning_ops/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: u
0prune_low_magnitude_dense/cond/pruning_ops/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?à
.prune_low_magnitude_dense/cond/pruning_ops/subSub9prune_low_magnitude_dense/cond/pruning_ops/sub/x:output:0Mprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/sparsity:z:0*
T0*
_output_shapes
: ¿
.prune_low_magnitude_dense/cond/pruning_ops/mulMul3prune_low_magnitude_dense/cond/pruning_ops/Cast:y:02prune_low_magnitude_dense/cond/pruning_ops/sub:z:0*
T0*
_output_shapes
: 
0prune_low_magnitude_dense/cond/pruning_ops/RoundRound2prune_low_magnitude_dense/cond/pruning_ops/mul:z:0*
T0*
_output_shapes
: y
4prune_low_magnitude_dense/cond/pruning_ops/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ó
2prune_low_magnitude_dense/cond/pruning_ops/MaximumMaximum4prune_low_magnitude_dense/cond/pruning_ops/Round:y:0=prune_low_magnitude_dense/cond/pruning_ops/Maximum/y:output:0*
T0*
_output_shapes
: ¡
1prune_low_magnitude_dense/cond/pruning_ops/Cast_1Cast6prune_low_magnitude_dense/cond/pruning_ops/Maximum:z:0*

DstT0*

SrcT0*
_output_shapes
: 
8prune_low_magnitude_dense/cond/pruning_ops/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿÚ
2prune_low_magnitude_dense/cond/pruning_ops/ReshapeReshape2prune_low_magnitude_dense/cond/pruning_ops/Abs:y:0Aprune_low_magnitude_dense/cond/pruning_ops/Reshape/shape:output:0*
T0*
_output_shapes	
:àt
1prune_low_magnitude_dense/cond/pruning_ops/Size_1Const*
_output_shapes
: *
dtype0*
value
B :àá
1prune_low_magnitude_dense/cond/pruning_ops/TopKV2TopKV2;prune_low_magnitude_dense/cond/pruning_ops/Reshape:output:0:prune_low_magnitude_dense/cond/pruning_ops/Size_1:output:0*
T0*"
_output_shapes
:à:àt
2prune_low_magnitude_dense/cond/pruning_ops/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ì
0prune_low_magnitude_dense/cond/pruning_ops/sub_1Sub5prune_low_magnitude_dense/cond/pruning_ops/Cast_1:y:0;prune_low_magnitude_dense/cond/pruning_ops/sub_1/y:output:0*
T0*
_output_shapes
: z
8prune_low_magnitude_dense/cond/pruning_ops/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¸
3prune_low_magnitude_dense/cond/pruning_ops/GatherV2GatherV2:prune_low_magnitude_dense/cond/pruning_ops/TopKV2:values:04prune_low_magnitude_dense/cond/pruning_ops/sub_1:z:0Aprune_low_magnitude_dense/cond/pruning_ops/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: t
2prune_low_magnitude_dense/cond/pruning_ops/sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :Ì
0prune_low_magnitude_dense/cond/pruning_ops/sub_2Sub5prune_low_magnitude_dense/cond/pruning_ops/Cast_1:y:0;prune_low_magnitude_dense/cond/pruning_ops/sub_2/y:output:0*
T0*
_output_shapes
: |
:prune_low_magnitude_dense/cond/pruning_ops/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ½
5prune_low_magnitude_dense/cond/pruning_ops/GatherV2_1GatherV2;prune_low_magnitude_dense/cond/pruning_ops/TopKV2:indices:04prune_low_magnitude_dense/cond/pruning_ops/sub_2:z:0Cprune_low_magnitude_dense/cond/pruning_ops/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: â
7prune_low_magnitude_dense/cond/pruning_ops/GreaterEqualGreaterEqual2prune_low_magnitude_dense/cond/pruning_ops/Abs:y:0<prune_low_magnitude_dense/cond/pruning_ops/GatherV2:output:0*
T0*
_output_shapes

:t
1prune_low_magnitude_dense/cond/pruning_ops/Size_2Const*
_output_shapes
: *
dtype0*
value
B :àz
8prune_low_magnitude_dense/cond/pruning_ops/one_hot/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Z|
:prune_low_magnitude_dense/cond/pruning_ops/one_hot/Const_1Const*
_output_shapes
: *
dtype0
*
value	B
 Z ð
2prune_low_magnitude_dense/cond/pruning_ops/one_hotOneHot>prune_low_magnitude_dense/cond/pruning_ops/GatherV2_1:output:0:prune_low_magnitude_dense/cond/pruning_ops/Size_2:output:0Aprune_low_magnitude_dense/cond/pruning_ops/one_hot/Const:output:0Cprune_low_magnitude_dense/cond/pruning_ops/one_hot/Const_1:output:0*
T0
*
TI0*
_output_shapes	
:à
:prune_low_magnitude_dense/cond/pruning_ops/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ê
4prune_low_magnitude_dense/cond/pruning_ops/Reshape_1Reshape;prune_low_magnitude_dense/cond/pruning_ops/one_hot:output:0Cprune_low_magnitude_dense/cond/pruning_ops/Reshape_1/shape:output:0*
T0
*
_output_shapes

:Ý
4prune_low_magnitude_dense/cond/pruning_ops/LogicalOr	LogicalOr;prune_low_magnitude_dense/cond/pruning_ops/GreaterEqual:z:0=prune_low_magnitude_dense/cond/pruning_ops/Reshape_1:output:0*
_output_shapes

:
#prune_low_magnitude_dense/cond/CastCast8prune_low_magnitude_dense/cond/pruning_ops/LogicalOr:z:0*

DstT0*

SrcT0
*
_output_shapes

:É
/prune_low_magnitude_dense/cond/AssignVariableOpAssignVariableOp8prune_low_magnitude_dense_cond_assignvariableop_resource'prune_low_magnitude_dense/cond/Cast:y:0*
_output_shapes
 *
dtype0â
1prune_low_magnitude_dense/cond/AssignVariableOp_1AssignVariableOp:prune_low_magnitude_dense_cond_assignvariableop_1_resource<prune_low_magnitude_dense/cond/pruning_ops/GatherV2:output:0*
_output_shapes
 *
dtype0Û
)prune_low_magnitude_dense/cond/group_depsNoOp0^prune_low_magnitude_dense/cond/AssignVariableOp2^prune_low_magnitude_dense/cond/AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 Ð
'prune_low_magnitude_dense/cond/IdentityIdentityNprune_low_magnitude_dense_cond_identity_prune_low_magnitude_dense_logicaland_1*^prune_low_magnitude_dense/cond/group_deps*
T0
*
_output_shapes
: ®
)prune_low_magnitude_dense/cond/Identity_1Identity0prune_low_magnitude_dense/cond/Identity:output:0$^prune_low_magnitude_dense/cond/NoOp*
T0
*
_output_shapes
: 
#prune_low_magnitude_dense/cond/NoOpNoOp0^prune_low_magnitude_dense/cond/AssignVariableOp2^prune_low_magnitude_dense/cond/AssignVariableOp_1;^prune_low_magnitude_dense/cond/GreaterEqual/ReadVariableOp8^prune_low_magnitude_dense/cond/LessEqual/ReadVariableOp2^prune_low_magnitude_dense/cond/Sub/ReadVariableOpP^prune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/ReadVariableOp>^prune_low_magnitude_dense/cond/pruning_ops/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "_
)prune_low_magnitude_dense_cond_identity_12prune_low_magnitude_dense/cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2b
/prune_low_magnitude_dense/cond/AssignVariableOp/prune_low_magnitude_dense/cond/AssignVariableOp2f
1prune_low_magnitude_dense/cond/AssignVariableOp_11prune_low_magnitude_dense/cond/AssignVariableOp_12x
:prune_low_magnitude_dense/cond/GreaterEqual/ReadVariableOp:prune_low_magnitude_dense/cond/GreaterEqual/ReadVariableOp2r
7prune_low_magnitude_dense/cond/LessEqual/ReadVariableOp7prune_low_magnitude_dense/cond/LessEqual/ReadVariableOp2f
1prune_low_magnitude_dense/cond/Sub/ReadVariableOp1prune_low_magnitude_dense/cond/Sub/ReadVariableOp2¢
Oprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/ReadVariableOpOprune_low_magnitude_dense/cond/polynomial_decay_pruning_schedule/ReadVariableOp2~
=prune_low_magnitude_dense/cond/pruning_ops/Abs/ReadVariableOp=prune_low_magnitude_dense/cond/pruning_ops/Abs/ReadVariableOp:

_output_shapes
: 
Û
õ
*prune_low_magnitude_dense_cond_false_26828.
*prune_low_magnitude_dense_cond_placeholder0
,prune_low_magnitude_dense_cond_placeholder_10
,prune_low_magnitude_dense_cond_placeholder_20
,prune_low_magnitude_dense_cond_placeholder_3R
Nprune_low_magnitude_dense_cond_identity_prune_low_magnitude_dense_logicaland_1
-
)prune_low_magnitude_dense_cond_identity_1
A
#prune_low_magnitude_dense/cond/NoOpNoOp*
_output_shapes
 Ê
'prune_low_magnitude_dense/cond/IdentityIdentityNprune_low_magnitude_dense_cond_identity_prune_low_magnitude_dense_logicaland_1$^prune_low_magnitude_dense/cond/NoOp*
T0
*
_output_shapes
: 
)prune_low_magnitude_dense/cond/Identity_1Identity0prune_low_magnitude_dense/cond/Identity:output:0*
T0
*
_output_shapes
: "_
)prune_low_magnitude_dense_cond_identity_12prune_low_magnitude_dense/cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : :

_output_shapes
: 
Ê

Oprune_low_magnitude_dropout_assert_greater_equal_Assert_AssertGuard_false_26946
prune_low_magnitude_dropout_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dropout_assert_greater_equal_all

prune_low_magnitude_dropout_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dropout_assert_greater_equal_readvariableop	
}prune_low_magnitude_dropout_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dropout_assert_greater_equal_y	R
Nprune_low_magnitude_dropout_assert_greater_equal_assert_assertguard_identity_1
¢Jprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Assert¡
Qprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.½
Qprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:Ú
Qprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*Y
valuePBN BHx (prune_low_magnitude_dropout/assert_greater_equal/ReadVariableOp:0) = Í
Qprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*L
valueCBA B;y (prune_low_magnitude_dropout/assert_greater_equal/y:0) = ø
Jprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/AssertAssertprune_low_magnitude_dropout_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dropout_assert_greater_equal_allZprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Assert/data_0:output:0Zprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Assert/data_1:output:0Zprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Assert/data_2:output:0prune_low_magnitude_dropout_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dropout_assert_greater_equal_readvariableopZprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Assert/data_4:output:0}prune_low_magnitude_dropout_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dropout_assert_greater_equal_y*
T

2		*
_output_shapes
 Ç
Lprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/IdentityIdentityprune_low_magnitude_dropout_assert_greater_equal_assert_assertguard_assert_prune_low_magnitude_dropout_assert_greater_equal_allK^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 
Nprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity_1IdentityUprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity:output:0I^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: ×
Hprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/NoOpNoOpK^prune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Assert*"
_acd_function_control_output(*
_output_shapes
 "©
Nprune_low_magnitude_dropout_assert_greater_equal_assert_assertguard_identity_1Wprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2
Jprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/AssertJprune_low_magnitude_dropout/assert_greater_equal/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ÿ

3assert_greater_equal_Assert_AssertGuard_false_27677K
Gassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all
V
Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop	I
Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y	6
2assert_greater_equal_assert_assertguard_identity_1
¢.assert_greater_equal/Assert/AssertGuard/Assert
5assert_greater_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.¡
5assert_greater_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:¢
5assert_greater_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = 
5assert_greater_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = Ã
.assert_greater_equal/Assert/AssertGuard/AssertAssertGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all>assert_greater_equal/Assert/AssertGuard/Assert/data_0:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_1:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_2:output:0Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop>assert_greater_equal/Assert/AssertGuard/Assert/data_4:output:0Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y*
T

2		*
_output_shapes
 ×
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all/^assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: É
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp/^assert_greater_equal/Assert/AssertGuard/Assert*"
_acd_function_control_output(*
_output_shapes
 "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2`
.assert_greater_equal/Assert/AssertGuard/Assert.assert_greater_equal/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

¥
cond_false_26379
cond_placeholder
cond_placeholder_1
cond_placeholder_2
cond_placeholder_3
cond_identity_logicaland_1

cond_identity_1
'
	cond/NoOpNoOp*
_output_shapes
 b
cond/IdentityIdentitycond_identity_logicaland_1
^cond/NoOp*
T0
*
_output_shapes
: T
cond/Identity_1Identitycond/Identity:output:0*
T0
*
_output_shapes
: "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : :

_output_shapes
: 
ÿ

3assert_greater_equal_Assert_AssertGuard_false_27540K
Gassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all
V
Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop	I
Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y	6
2assert_greater_equal_assert_assertguard_identity_1
¢.assert_greater_equal/Assert/AssertGuard/Assert
5assert_greater_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.¡
5assert_greater_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:¢
5assert_greater_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = 
5assert_greater_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = Ã
.assert_greater_equal/Assert/AssertGuard/AssertAssertGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all>assert_greater_equal/Assert/AssertGuard/Assert/data_0:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_1:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_2:output:0Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop>assert_greater_equal/Assert/AssertGuard/Assert/data_4:output:0Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y*
T

2		*
_output_shapes
 ×
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all/^assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: É
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp/^assert_greater_equal/Assert/AssertGuard/Assert*"
_acd_function_control_output(*
_output_shapes
 "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2`
.assert_greater_equal/Assert/AssertGuard/Assert.assert_greater_equal/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ÒO

Y__inference_prune_low_magnitude_activation_layer_call_and_return_conditional_losses_27942

inputs!
readvariableop_resource:	 
identity¢AssignVariableOp¢GreaterEqual/ReadVariableOp¢LessEqual/ReadVariableOp¢ReadVariableOp¢Sub/ReadVariableOp¢'assert_greater_equal/Assert/AssertGuard¢#assert_greater_equal/ReadVariableOp¢0polynomial_decay_pruning_schedule/ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	G
add/yConst*
_output_shapes
: *
dtype0	*
value	B	 RU
addAddV2ReadVariableOp:value:0add/y:output:0*
T0	*
_output_shapes
: z
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*
_output_shapes
 *
dtype0	7
updateNoOp^AssignVariableOp*
_output_shapes
 
#assert_greater_equal/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
: *
dtype0	X
assert_greater_equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
!assert_greater_equal/GreaterEqualGreaterEqual+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
T0	*
_output_shapes
: [
assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :·
assert_greater_equal/rangeRange)assert_greater_equal/range/start:output:0"assert_greater_equal/Rank:output:0)assert_greater_equal/range/delta:output:0*
_output_shapes
: 
assert_greater_equal/AllAll%assert_greater_equal/GreaterEqual:z:0#assert_greater_equal/range:output:0*
_output_shapes
: ñ
!assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.
#assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:
#assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = 
#assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = î
'assert_greater_equal/Assert/AssertGuardIf!assert_greater_equal/All:output:0!assert_greater_equal/All:output:0+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *F
else_branch7R5
3assert_greater_equal_Assert_AssertGuard_false_27872*
output_shapes
: *E
then_branch6R4
2assert_greater_equal_Assert_AssertGuard_true_27871
0assert_greater_equal/Assert/AssertGuard/IdentityIdentity0assert_greater_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: Æ
0polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
'polynomial_decay_pruning_schedule/sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R ¹
%polynomial_decay_pruning_schedule/subSub8polynomial_decay_pruning_schedule/ReadVariableOp:value:00polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: 
&polynomial_decay_pruning_schedule/CastCast)polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: £
+polynomial_decay_pruning_schedule/truediv/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  úC·
)polynomial_decay_pruning_schedule/truedivRealDiv*polynomial_decay_pruning_schedule/Cast:y:04polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: £
+polynomial_decay_pruning_schedule/Maximum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *    º
)polynomial_decay_pruning_schedule/MaximumMaximum4polynomial_decay_pruning_schedule/Maximum/x:output:0-polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: £
+polynomial_decay_pruning_schedule/Minimum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?º
)polynomial_decay_pruning_schedule/MinimumMinimum4polynomial_decay_pruning_schedule/Minimum/x:output:0-polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: ¡
)polynomial_decay_pruning_schedule/sub_1/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?²
'polynomial_decay_pruning_schedule/sub_1Sub2polynomial_decay_pruning_schedule/sub_1/x:output:0-polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: 
'polynomial_decay_pruning_schedule/Pow/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  @@¬
%polynomial_decay_pruning_schedule/PowPow+polynomial_decay_pruning_schedule/sub_1:z:00polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: 
'polynomial_decay_pruning_schedule/Mul/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *¾ª
%polynomial_decay_pruning_schedule/MulMul0polynomial_decay_pruning_schedule/Mul/x:output:0)polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: ¤
,polynomial_decay_pruning_schedule/sparsity/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *?¶
*polynomial_decay_pruning_schedule/sparsityAddV2)polynomial_decay_pruning_schedule/Mul:z:05polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: ±
GreaterEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
GreaterEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R {
GreaterEqualGreaterEqual#GreaterEqual/ReadVariableOp:value:0GreaterEqual/y:output:0*
T0	*
_output_shapes
: ®
LessEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
LessEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rôo
	LessEqual	LessEqual LessEqual/ReadVariableOp:value:0LessEqual/y:output:0*
T0	*
_output_shapes
: |
Less/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rô{
Less/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
LessLessLess/x:output:0Less/y:output:0*
T0	*
_output_shapes
: G
	LogicalOr	LogicalOrLessEqual:z:0Less:z:0*
_output_shapes
: Q

LogicalAnd
LogicalAndGreaterEqual:z:0LogicalOr:z:0*
_output_shapes
: ¨
Sub/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	z
Sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R W
SubSubSub/ReadVariableOp:value:0Sub/y:output:0*
T0	*
_output_shapes
: 

FloorMod/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 RdS
FloorModFloorModSub:z:0FloorMod/y:output:0*
T0	*
_output_shapes
: |
Equal/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
EqualEqualFloorMod:z:0Equal/y:output:0*
T0	*
_output_shapes
: M
LogicalAnd_1
LogicalAndLogicalAnd:z:0	Equal:z:0*
_output_shapes
: 
condStatelessIfLogicalAnd_1:z:0LogicalAnd_1:z:0*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *#
else_branchR
cond_false_27929*
output_shapes
: *"
then_branchR
cond_true_27928I
cond/IdentityIdentitycond:output:0*
T0
*
_output_shapes
: i
update_1NoOp1^assert_greater_equal/Assert/AssertGuard/Identity^cond/Identity*
_output_shapes
 (

group_depsNoOp*
_output_shapes
 L
SigmoidSigmoidinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
NoOpNoOp^AssignVariableOp^GreaterEqual/ReadVariableOp^LessEqual/ReadVariableOp^ReadVariableOp^Sub/ReadVariableOp(^assert_greater_equal/Assert/AssertGuard$^assert_greater_equal/ReadVariableOp1^polynomial_decay_pruning_schedule/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
AssignVariableOpAssignVariableOp2:
GreaterEqual/ReadVariableOpGreaterEqual/ReadVariableOp24
LessEqual/ReadVariableOpLessEqual/ReadVariableOp2 
ReadVariableOpReadVariableOp2(
Sub/ReadVariableOpSub/ReadVariableOp2R
'assert_greater_equal/Assert/AssertGuard'assert_greater_equal/Assert/AssertGuard2J
#assert_greater_equal/ReadVariableOp#assert_greater_equal/ReadVariableOp2d
0polynomial_decay_pruning_schedule/ReadVariableOp0polynomial_decay_pruning_schedule/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
F
cond_true_26262
cond_identity_logicaland_1

cond_identity_1
-
cond/group_depsNoOp*
_output_shapes
 h
cond/IdentityIdentitycond_identity_logicaland_1^cond/group_deps*
T0
*
_output_shapes
: T
cond/Identity_1Identitycond/Identity:output:0*
T0
*
_output_shapes
: "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 

_output_shapes
: 
Î
Ã
/prune_low_magnitude_activation_cond_false_27270\
Xprune_low_magnitude_activation_cond_identity_prune_low_magnitude_activation_logicaland_1
2
.prune_low_magnitude_activation_cond_identity_1
F
(prune_low_magnitude_activation/cond/NoOpNoOp*
_output_shapes
 Þ
,prune_low_magnitude_activation/cond/IdentityIdentityXprune_low_magnitude_activation_cond_identity_prune_low_magnitude_activation_logicaland_1)^prune_low_magnitude_activation/cond/NoOp*
T0
*
_output_shapes
: 
.prune_low_magnitude_activation/cond/Identity_1Identity5prune_low_magnitude_activation/cond/Identity:output:0*
T0
*
_output_shapes
: "i
.prune_low_magnitude_activation_cond_identity_17prune_low_magnitude_activation/cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 

_output_shapes
: 
Ñ

#__inference_signature_wrapper_26678
dense_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCallì
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_25788o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namedense_input

¯
2assert_greater_equal_Assert_AssertGuard_true_26006M
Iassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all
7
3assert_greater_equal_assert_assertguard_placeholder	9
5assert_greater_equal_assert_assertguard_placeholder_1	6
2assert_greater_equal_assert_assertguard_identity_1
J
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 ×
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityIassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

¯
2assert_greater_equal_Assert_AssertGuard_true_25897M
Iassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all
7
3assert_greater_equal_assert_assertguard_placeholder	9
5assert_greater_equal_assert_assertguard_placeholder_1	6
2assert_greater_equal_assert_assertguard_identity_1
J
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 ×
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityIassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ã
F
cond_true_27928
cond_identity_logicaland_1

cond_identity_1
-
cond/group_depsNoOp*
_output_shapes
 h
cond/IdentityIdentitycond_identity_logicaland_1^cond/group_deps*
T0
*
_output_shapes
: T
cond/Identity_1Identitycond/Identity:output:0*
T0
*
_output_shapes
: "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 

_output_shapes
: 
ç
t
V__inference_prune_low_magnitude_dropout_layer_call_and_return_conditional_losses_27520

inputs

identity_1'
	no_updateNoOp*
_output_shapes
 )
no_update_1NoOp*
_output_shapes
 (

group_depsNoOp*
_output_shapes
 N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò]

T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_27503

inputs!
readvariableop_resource:	 
cond_input_1:
cond_input_2:
cond_input_3: -
biasadd_readvariableop_resource:
identity¢AssignVariableOp¢AssignVariableOp_1¢BiasAdd/ReadVariableOp¢GreaterEqual/ReadVariableOp¢LessEqual/ReadVariableOp¢MatMul/ReadVariableOp¢Mul/ReadVariableOp¢Mul/ReadVariableOp_1¢ReadVariableOp¢Sub/ReadVariableOp¢'assert_greater_equal/Assert/AssertGuard¢#assert_greater_equal/ReadVariableOp¢cond¢0polynomial_decay_pruning_schedule/ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	G
add/yConst*
_output_shapes
: *
dtype0	*
value	B	 RU
addAddV2ReadVariableOp:value:0add/y:output:0*
T0	*
_output_shapes
: z
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*
_output_shapes
 *
dtype0	7
updateNoOp^AssignVariableOp*
_output_shapes
 
#assert_greater_equal/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
: *
dtype0	X
assert_greater_equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
!assert_greater_equal/GreaterEqualGreaterEqual+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
T0	*
_output_shapes
: [
assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :·
assert_greater_equal/rangeRange)assert_greater_equal/range/start:output:0"assert_greater_equal/Rank:output:0)assert_greater_equal/range/delta:output:0*
_output_shapes
: 
assert_greater_equal/AllAll%assert_greater_equal/GreaterEqual:z:0#assert_greater_equal/range:output:0*
_output_shapes
: ñ
!assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.
#assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:
#assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = 
#assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = î
'assert_greater_equal/Assert/AssertGuardIf!assert_greater_equal/All:output:0!assert_greater_equal/All:output:0+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *F
else_branch7R5
3assert_greater_equal_Assert_AssertGuard_false_27344*
output_shapes
: *E
then_branch6R4
2assert_greater_equal_Assert_AssertGuard_true_27343
0assert_greater_equal/Assert/AssertGuard/IdentityIdentity0assert_greater_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: Æ
0polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
'polynomial_decay_pruning_schedule/sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R ¹
%polynomial_decay_pruning_schedule/subSub8polynomial_decay_pruning_schedule/ReadVariableOp:value:00polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: 
&polynomial_decay_pruning_schedule/CastCast)polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: £
+polynomial_decay_pruning_schedule/truediv/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  úC·
)polynomial_decay_pruning_schedule/truedivRealDiv*polynomial_decay_pruning_schedule/Cast:y:04polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: £
+polynomial_decay_pruning_schedule/Maximum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *    º
)polynomial_decay_pruning_schedule/MaximumMaximum4polynomial_decay_pruning_schedule/Maximum/x:output:0-polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: £
+polynomial_decay_pruning_schedule/Minimum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?º
)polynomial_decay_pruning_schedule/MinimumMinimum4polynomial_decay_pruning_schedule/Minimum/x:output:0-polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: ¡
)polynomial_decay_pruning_schedule/sub_1/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?²
'polynomial_decay_pruning_schedule/sub_1Sub2polynomial_decay_pruning_schedule/sub_1/x:output:0-polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: 
'polynomial_decay_pruning_schedule/Pow/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  @@¬
%polynomial_decay_pruning_schedule/PowPow+polynomial_decay_pruning_schedule/sub_1:z:00polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: 
'polynomial_decay_pruning_schedule/Mul/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *¾ª
%polynomial_decay_pruning_schedule/MulMul0polynomial_decay_pruning_schedule/Mul/x:output:0)polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: ¤
,polynomial_decay_pruning_schedule/sparsity/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *?¶
*polynomial_decay_pruning_schedule/sparsityAddV2)polynomial_decay_pruning_schedule/Mul:z:05polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: ±
GreaterEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
GreaterEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R {
GreaterEqualGreaterEqual#GreaterEqual/ReadVariableOp:value:0GreaterEqual/y:output:0*
T0	*
_output_shapes
: ®
LessEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
LessEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rôo
	LessEqual	LessEqual LessEqual/ReadVariableOp:value:0LessEqual/y:output:0*
T0	*
_output_shapes
: |
Less/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rô{
Less/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
LessLessLess/x:output:0Less/y:output:0*
T0	*
_output_shapes
: G
	LogicalOr	LogicalOrLessEqual:z:0Less:z:0*
_output_shapes
: Q

LogicalAnd
LogicalAndGreaterEqual:z:0LogicalOr:z:0*
_output_shapes
: ¨
Sub/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	z
Sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R W
SubSubSub/ReadVariableOp:value:0Sub/y:output:0*
T0	*
_output_shapes
: 

FloorMod/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 RdS
FloorModFloorModSub:z:0FloorMod/y:output:0*
T0	*
_output_shapes
: |
Equal/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
EqualEqualFloorMod:z:0Equal/y:output:0*
T0	*
_output_shapes
: M
LogicalAnd_1
LogicalAndLogicalAnd:z:0	Equal:z:0*
_output_shapes
: ñ
condIfLogicalAnd_1:z:0readvariableop_resourcecond_input_1cond_input_2cond_input_3LogicalAnd_1:z:0^AssignVariableOp*
Tcond0
*
Tin	
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: *$
_read_only_resource_inputs
*#
else_branchR
cond_false_27401*
output_shapes
: *"
then_branchR
cond_true_27400I
cond/IdentityIdentitycond:output:0*
T0
*
_output_shapes
: i
update_1NoOp1^assert_greater_equal/Assert/AssertGuard/Identity^cond/Identity*
_output_shapes
 _
Mul/ReadVariableOpReadVariableOpcond_input_1*
_output_shapes

:*
dtype0h
Mul/ReadVariableOp_1ReadVariableOpcond_input_2^cond*
_output_shapes

:*
dtype0m
MulMulMul/ReadVariableOp:value:0Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:|
AssignVariableOp_1AssignVariableOpcond_input_1Mul:z:0^Mul/ReadVariableOp^cond*
_output_shapes
 *
dtype0k

group_depsNoOp^AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 e
group_deps_1NoOp^group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 w
MatMul/ReadVariableOpReadVariableOpcond_input_1^AssignVariableOp_1*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^BiasAdd/ReadVariableOp^GreaterEqual/ReadVariableOp^LessEqual/ReadVariableOp^MatMul/ReadVariableOp^Mul/ReadVariableOp^Mul/ReadVariableOp_1^ReadVariableOp^Sub/ReadVariableOp(^assert_greater_equal/Assert/AssertGuard$^assert_greater_equal/ReadVariableOp^cond1^polynomial_decay_pruning_schedule/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_120
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2:
GreaterEqual/ReadVariableOpGreaterEqual/ReadVariableOp24
LessEqual/ReadVariableOpLessEqual/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
Mul/ReadVariableOpMul/ReadVariableOp2,
Mul/ReadVariableOp_1Mul/ReadVariableOp_12 
ReadVariableOpReadVariableOp2(
Sub/ReadVariableOpSub/ReadVariableOp2R
'assert_greater_equal/Assert/AssertGuard'assert_greater_equal/Assert/AssertGuard2J
#assert_greater_equal/ReadVariableOp#assert_greater_equal/ReadVariableOp2
condcond2d
0polynomial_decay_pruning_schedule/ReadVariableOp0polynomial_decay_pruning_schedule/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾F
¢	
 __inference__wrapped_model_25788
dense_inputR
@sequential_prune_low_magnitude_dense_mul_readvariableop_resource:T
Bsequential_prune_low_magnitude_dense_mul_readvariableop_1_resource:R
Dsequential_prune_low_magnitude_dense_biasadd_readvariableop_resource:T
Bsequential_prune_low_magnitude_dense_1_mul_readvariableop_resource:V
Dsequential_prune_low_magnitude_dense_1_mul_readvariableop_1_resource:T
Fsequential_prune_low_magnitude_dense_1_biasadd_readvariableop_resource:
identity¢5sequential/prune_low_magnitude_dense/AssignVariableOp¢;sequential/prune_low_magnitude_dense/BiasAdd/ReadVariableOp¢:sequential/prune_low_magnitude_dense/MatMul/ReadVariableOp¢7sequential/prune_low_magnitude_dense/Mul/ReadVariableOp¢9sequential/prune_low_magnitude_dense/Mul/ReadVariableOp_1¢7sequential/prune_low_magnitude_dense_1/AssignVariableOp¢=sequential/prune_low_magnitude_dense_1/BiasAdd/ReadVariableOp¢<sequential/prune_low_magnitude_dense_1/MatMul/ReadVariableOp¢9sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp¢;sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp_1L
.sequential/prune_low_magnitude_dense/no_updateNoOp*
_output_shapes
 N
0sequential/prune_low_magnitude_dense/no_update_1NoOp*
_output_shapes
 ¸
7sequential/prune_low_magnitude_dense/Mul/ReadVariableOpReadVariableOp@sequential_prune_low_magnitude_dense_mul_readvariableop_resource*
_output_shapes

:*
dtype0¼
9sequential/prune_low_magnitude_dense/Mul/ReadVariableOp_1ReadVariableOpBsequential_prune_low_magnitude_dense_mul_readvariableop_1_resource*
_output_shapes

:*
dtype0Ü
(sequential/prune_low_magnitude_dense/MulMul?sequential/prune_low_magnitude_dense/Mul/ReadVariableOp:value:0Asequential/prune_low_magnitude_dense/Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:
5sequential/prune_low_magnitude_dense/AssignVariableOpAssignVariableOp@sequential_prune_low_magnitude_dense_mul_readvariableop_resource,sequential/prune_low_magnitude_dense/Mul:z:08^sequential/prune_low_magnitude_dense/Mul/ReadVariableOp*
_output_shapes
 *
dtype0³
/sequential/prune_low_magnitude_dense/group_depsNoOp6^sequential/prune_low_magnitude_dense/AssignVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 ¯
1sequential/prune_low_magnitude_dense/group_deps_1NoOp0^sequential/prune_low_magnitude_dense/group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 ó
:sequential/prune_low_magnitude_dense/MatMul/ReadVariableOpReadVariableOp@sequential_prune_low_magnitude_dense_mul_readvariableop_resource6^sequential/prune_low_magnitude_dense/AssignVariableOp*
_output_shapes

:*
dtype0¸
+sequential/prune_low_magnitude_dense/MatMulMatMuldense_inputBsequential/prune_low_magnitude_dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
;sequential/prune_low_magnitude_dense/BiasAdd/ReadVariableOpReadVariableOpDsequential_prune_low_magnitude_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0å
,sequential/prune_low_magnitude_dense/BiasAddBiasAdd5sequential/prune_low_magnitude_dense/MatMul:product:0Csequential/prune_low_magnitude_dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)sequential/prune_low_magnitude_dense/ReluRelu5sequential/prune_low_magnitude_dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
0sequential/prune_low_magnitude_dropout/no_updateNoOp*
_output_shapes
 P
2sequential/prune_low_magnitude_dropout/no_update_1NoOp*
_output_shapes
 O
1sequential/prune_low_magnitude_dropout/group_depsNoOp*
_output_shapes
 ¦
/sequential/prune_low_magnitude_dropout/IdentityIdentity7sequential/prune_low_magnitude_dense/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
0sequential/prune_low_magnitude_dense_1/no_updateNoOp*
_output_shapes
 P
2sequential/prune_low_magnitude_dense_1/no_update_1NoOp*
_output_shapes
 ¼
9sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOpReadVariableOpBsequential_prune_low_magnitude_dense_1_mul_readvariableop_resource*
_output_shapes

:*
dtype0À
;sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp_1ReadVariableOpDsequential_prune_low_magnitude_dense_1_mul_readvariableop_1_resource*
_output_shapes

:*
dtype0â
*sequential/prune_low_magnitude_dense_1/MulMulAsequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp:value:0Csequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:
7sequential/prune_low_magnitude_dense_1/AssignVariableOpAssignVariableOpBsequential_prune_low_magnitude_dense_1_mul_readvariableop_resource.sequential/prune_low_magnitude_dense_1/Mul:z:0:^sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp*
_output_shapes
 *
dtype0·
1sequential/prune_low_magnitude_dense_1/group_depsNoOp8^sequential/prune_low_magnitude_dense_1/AssignVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 ³
3sequential/prune_low_magnitude_dense_1/group_deps_1NoOp2^sequential/prune_low_magnitude_dense_1/group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 ù
<sequential/prune_low_magnitude_dense_1/MatMul/ReadVariableOpReadVariableOpBsequential_prune_low_magnitude_dense_1_mul_readvariableop_resource8^sequential/prune_low_magnitude_dense_1/AssignVariableOp*
_output_shapes

:*
dtype0é
-sequential/prune_low_magnitude_dense_1/MatMulMatMul8sequential/prune_low_magnitude_dropout/Identity:output:0Dsequential/prune_low_magnitude_dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
=sequential/prune_low_magnitude_dense_1/BiasAdd/ReadVariableOpReadVariableOpFsequential_prune_low_magnitude_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ë
.sequential/prune_low_magnitude_dense_1/BiasAddBiasAdd7sequential/prune_low_magnitude_dense_1/MatMul:product:0Esequential/prune_low_magnitude_dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
3sequential/prune_low_magnitude_activation/no_updateNoOp*
_output_shapes
 S
5sequential/prune_low_magnitude_activation/no_update_1NoOp*
_output_shapes
 R
4sequential/prune_low_magnitude_activation/group_depsNoOp*
_output_shapes
 §
1sequential/prune_low_magnitude_activation/SigmoidSigmoid7sequential/prune_low_magnitude_dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity5sequential/prune_low_magnitude_activation/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
NoOpNoOp6^sequential/prune_low_magnitude_dense/AssignVariableOp<^sequential/prune_low_magnitude_dense/BiasAdd/ReadVariableOp;^sequential/prune_low_magnitude_dense/MatMul/ReadVariableOp8^sequential/prune_low_magnitude_dense/Mul/ReadVariableOp:^sequential/prune_low_magnitude_dense/Mul/ReadVariableOp_18^sequential/prune_low_magnitude_dense_1/AssignVariableOp>^sequential/prune_low_magnitude_dense_1/BiasAdd/ReadVariableOp=^sequential/prune_low_magnitude_dense_1/MatMul/ReadVariableOp:^sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp<^sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2n
5sequential/prune_low_magnitude_dense/AssignVariableOp5sequential/prune_low_magnitude_dense/AssignVariableOp2z
;sequential/prune_low_magnitude_dense/BiasAdd/ReadVariableOp;sequential/prune_low_magnitude_dense/BiasAdd/ReadVariableOp2x
:sequential/prune_low_magnitude_dense/MatMul/ReadVariableOp:sequential/prune_low_magnitude_dense/MatMul/ReadVariableOp2r
7sequential/prune_low_magnitude_dense/Mul/ReadVariableOp7sequential/prune_low_magnitude_dense/Mul/ReadVariableOp2v
9sequential/prune_low_magnitude_dense/Mul/ReadVariableOp_19sequential/prune_low_magnitude_dense/Mul/ReadVariableOp_12r
7sequential/prune_low_magnitude_dense_1/AssignVariableOp7sequential/prune_low_magnitude_dense_1/AssignVariableOp2~
=sequential/prune_low_magnitude_dense_1/BiasAdd/ReadVariableOp=sequential/prune_low_magnitude_dense_1/BiasAdd/ReadVariableOp2|
<sequential/prune_low_magnitude_dense_1/MatMul/ReadVariableOp<sequential/prune_low_magnitude_dense_1/MatMul/ReadVariableOp2v
9sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp9sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp2z
;sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp_1;sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp_1:T P
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namedense_input
î

*__inference_sequential_layer_call_fn_26695

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_25855o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý

*__inference_sequential_layer_call_fn_25870
dense_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_25855o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namedense_input
Á
W
;__inference_prune_low_magnitude_dropout_layer_call_fn_27508

inputs
identityÁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_prune_low_magnitude_dropout_layer_call_and_return_conditional_losses_25823`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿U

cond_true_27733H
>cond_polynomial_decay_pruning_schedule_readvariableop_resource:	 >
,cond_pruning_ops_abs_readvariableop_resource:0
cond_assignvariableop_resource:*
 cond_assignvariableop_1_resource: 
cond_identity_logicaland_1

cond_identity_1
¢cond/AssignVariableOp¢cond/AssignVariableOp_1¢ cond/GreaterEqual/ReadVariableOp¢cond/LessEqual/ReadVariableOp¢cond/Sub/ReadVariableOp¢5cond/polynomial_decay_pruning_schedule/ReadVariableOp¢#cond/pruning_ops/Abs/ReadVariableOp¬
5cond/polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	n
,cond/polynomial_decay_pruning_schedule/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R È
*cond/polynomial_decay_pruning_schedule/subSub=cond/polynomial_decay_pruning_schedule/ReadVariableOp:value:05cond/polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: 
+cond/polynomial_decay_pruning_schedule/CastCast.cond/polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  úCÆ
.cond/polynomial_decay_pruning_schedule/truedivRealDiv/cond/polynomial_decay_pruning_schedule/Cast:y:09cond/polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/Maximum/xConst*
_output_shapes
: *
dtype0*
valueB
 *    É
.cond/polynomial_decay_pruning_schedule/MaximumMaximum9cond/polynomial_decay_pruning_schedule/Maximum/x:output:02cond/polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/Minimum/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?É
.cond/polynomial_decay_pruning_schedule/MinimumMinimum9cond/polynomial_decay_pruning_schedule/Minimum/x:output:02cond/polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: s
.cond/polynomial_decay_pruning_schedule/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Á
,cond/polynomial_decay_pruning_schedule/sub_1Sub7cond/polynomial_decay_pruning_schedule/sub_1/x:output:02cond/polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: q
,cond/polynomial_decay_pruning_schedule/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@»
*cond/polynomial_decay_pruning_schedule/PowPow0cond/polynomial_decay_pruning_schedule/sub_1:z:05cond/polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: q
,cond/polynomial_decay_pruning_schedule/Mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¾¹
*cond/polynomial_decay_pruning_schedule/MulMul5cond/polynomial_decay_pruning_schedule/Mul/x:output:0.cond/polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: v
1cond/polynomial_decay_pruning_schedule/sparsity/yConst*
_output_shapes
: *
dtype0*
valueB
 *?Å
/cond/polynomial_decay_pruning_schedule/sparsityAddV2.cond/polynomial_decay_pruning_schedule/Mul:z:0:cond/polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: 
 cond/GreaterEqual/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	U
cond/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
cond/GreaterEqualGreaterEqual(cond/GreaterEqual/ReadVariableOp:value:0cond/GreaterEqual/y:output:0*
T0	*
_output_shapes
: 
cond/LessEqual/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	S
cond/LessEqual/yConst*
_output_shapes
: *
dtype0	*
value
B	 Rô~
cond/LessEqual	LessEqual%cond/LessEqual/ReadVariableOp:value:0cond/LessEqual/y:output:0*
T0	*
_output_shapes
: N
cond/Less/xConst*
_output_shapes
: *
dtype0	*
value
B	 RôM
cond/Less/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ^
	cond/LessLesscond/Less/x:output:0cond/Less/y:output:0*
T0	*
_output_shapes
: V
cond/LogicalOr	LogicalOrcond/LessEqual:z:0cond/Less:z:0*
_output_shapes
: `
cond/LogicalAnd
LogicalAndcond/GreaterEqual:z:0cond/LogicalOr:z:0*
_output_shapes
: 
cond/Sub/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	L

cond/Sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R f
cond/SubSubcond/Sub/ReadVariableOp:value:0cond/Sub/y:output:0*
T0	*
_output_shapes
: Q
cond/FloorMod/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rdb
cond/FloorModFloorModcond/Sub:z:0cond/FloorMod/y:output:0*
T0	*
_output_shapes
: N
cond/Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ^

cond/EqualEqualcond/FloorMod:z:0cond/Equal/y:output:0*
T0	*
_output_shapes
: \
cond/LogicalAnd_1
LogicalAndcond/LogicalAnd:z:0cond/Equal:z:0*
_output_shapes
: 
#cond/pruning_ops/Abs/ReadVariableOpReadVariableOp,cond_pruning_ops_abs_readvariableop_resource*
_output_shapes

:*
dtype0q
cond/pruning_ops/AbsAbs+cond/pruning_ops/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:W
cond/pruning_ops/SizeConst*
_output_shapes
: *
dtype0*
value	B :m
cond/pruning_ops/CastCastcond/pruning_ops/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: [
cond/pruning_ops/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
cond/pruning_ops/subSubcond/pruning_ops/sub/x:output:03cond/polynomial_decay_pruning_schedule/sparsity:z:0*
T0*
_output_shapes
: q
cond/pruning_ops/mulMulcond/pruning_ops/Cast:y:0cond/pruning_ops/sub:z:0*
T0*
_output_shapes
: Z
cond/pruning_ops/RoundRoundcond/pruning_ops/mul:z:0*
T0*
_output_shapes
: _
cond/pruning_ops/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
cond/pruning_ops/MaximumMaximumcond/pruning_ops/Round:y:0#cond/pruning_ops/Maximum/y:output:0*
T0*
_output_shapes
: m
cond/pruning_ops/Cast_1Castcond/pruning_ops/Maximum:z:0*

DstT0*

SrcT0*
_output_shapes
: q
cond/pruning_ops/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
cond/pruning_ops/ReshapeReshapecond/pruning_ops/Abs:y:0'cond/pruning_ops/Reshape/shape:output:0*
T0*
_output_shapes
:Y
cond/pruning_ops/Size_1Const*
_output_shapes
: *
dtype0*
value	B :
cond/pruning_ops/TopKV2TopKV2!cond/pruning_ops/Reshape:output:0 cond/pruning_ops/Size_1:output:0*
T0* 
_output_shapes
::Z
cond/pruning_ops/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :~
cond/pruning_ops/sub_1Subcond/pruning_ops/Cast_1:y:0!cond/pruning_ops/sub_1/y:output:0*
T0*
_output_shapes
: `
cond/pruning_ops/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
cond/pruning_ops/GatherV2GatherV2 cond/pruning_ops/TopKV2:values:0cond/pruning_ops/sub_1:z:0'cond/pruning_ops/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: Z
cond/pruning_ops/sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :~
cond/pruning_ops/sub_2Subcond/pruning_ops/Cast_1:y:0!cond/pruning_ops/sub_2/y:output:0*
T0*
_output_shapes
: b
 cond/pruning_ops/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Õ
cond/pruning_ops/GatherV2_1GatherV2!cond/pruning_ops/TopKV2:indices:0cond/pruning_ops/sub_2:z:0)cond/pruning_ops/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 
cond/pruning_ops/GreaterEqualGreaterEqualcond/pruning_ops/Abs:y:0"cond/pruning_ops/GatherV2:output:0*
T0*
_output_shapes

:Y
cond/pruning_ops/Size_2Const*
_output_shapes
: *
dtype0*
value	B :`
cond/pruning_ops/one_hot/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Zb
 cond/pruning_ops/one_hot/Const_1Const*
_output_shapes
: *
dtype0
*
value	B
 Z í
cond/pruning_ops/one_hotOneHot$cond/pruning_ops/GatherV2_1:output:0 cond/pruning_ops/Size_2:output:0'cond/pruning_ops/one_hot/Const:output:0)cond/pruning_ops/one_hot/Const_1:output:0*
T0
*
TI0*
_output_shapes
:q
 cond/pruning_ops/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
cond/pruning_ops/Reshape_1Reshape!cond/pruning_ops/one_hot:output:0)cond/pruning_ops/Reshape_1/shape:output:0*
T0
*
_output_shapes

:
cond/pruning_ops/LogicalOr	LogicalOr!cond/pruning_ops/GreaterEqual:z:0#cond/pruning_ops/Reshape_1:output:0*
_output_shapes

:i
	cond/CastCastcond/pruning_ops/LogicalOr:z:0*

DstT0*

SrcT0
*
_output_shapes

:{
cond/AssignVariableOpAssignVariableOpcond_assignvariableop_resourcecond/Cast:y:0*
_output_shapes
 *
dtype0
cond/AssignVariableOp_1AssignVariableOp cond_assignvariableop_1_resource"cond/pruning_ops/GatherV2:output:0*
_output_shapes
 *
dtype0
cond/group_depsNoOp^cond/AssignVariableOp^cond/AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 h
cond/IdentityIdentitycond_identity_logicaland_1^cond/group_deps*
T0
*
_output_shapes
: `
cond/Identity_1Identitycond/Identity:output:0
^cond/NoOp*
T0
*
_output_shapes
: ¸
	cond/NoOpNoOp^cond/AssignVariableOp^cond/AssignVariableOp_1!^cond/GreaterEqual/ReadVariableOp^cond/LessEqual/ReadVariableOp^cond/Sub/ReadVariableOp6^cond/polynomial_decay_pruning_schedule/ReadVariableOp$^cond/pruning_ops/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2.
cond/AssignVariableOpcond/AssignVariableOp22
cond/AssignVariableOp_1cond/AssignVariableOp_12D
 cond/GreaterEqual/ReadVariableOp cond/GreaterEqual/ReadVariableOp2>
cond/LessEqual/ReadVariableOpcond/LessEqual/ReadVariableOp22
cond/Sub/ReadVariableOpcond/Sub/ReadVariableOp2n
5cond/polynomial_decay_pruning_schedule/ReadVariableOp5cond/polynomial_decay_pruning_schedule/ReadVariableOp2J
#cond/pruning_ops/Abs/ReadVariableOp#cond/pruning_ops/Abs/ReadVariableOp:

_output_shapes
: 
Ç
Z
>__inference_prune_low_magnitude_activation_layer_call_fn_27840

inputs
identityÄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *b
f]R[
Y__inference_prune_low_magnitude_activation_layer_call_and_return_conditional_losses_25852`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ç
ò
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_27324

inputs-
mul_readvariableop_resource:/
mul_readvariableop_1_resource:-
biasadd_readvariableop_resource:
identity¢AssignVariableOp¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢Mul/ReadVariableOp¢Mul/ReadVariableOp_1'
	no_updateNoOp*
_output_shapes
 )
no_update_1NoOp*
_output_shapes
 n
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes

:*
dtype0r
Mul/ReadVariableOp_1ReadVariableOpmul_readvariableop_1_resource*
_output_shapes

:*
dtype0m
MulMulMul/ReadVariableOp:value:0Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:
AssignVariableOpAssignVariableOpmul_readvariableop_resourceMul:z:0^Mul/ReadVariableOp*
_output_shapes
 *
dtype0i

group_depsNoOp^AssignVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 e
group_deps_1NoOp^group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 
MatMul/ReadVariableOpReadVariableOpmul_readvariableop_resource^AssignVariableOp*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
NoOpNoOp^AssignVariableOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^Mul/ReadVariableOp^Mul/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2$
AssignVariableOpAssignVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
Mul/ReadVariableOpMul/ReadVariableOp2,
Mul/ReadVariableOp_1Mul/ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
]

V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_27835

inputs!
readvariableop_resource:	 
cond_input_1:
cond_input_2:
cond_input_3: -
biasadd_readvariableop_resource:
identity¢AssignVariableOp¢AssignVariableOp_1¢BiasAdd/ReadVariableOp¢GreaterEqual/ReadVariableOp¢LessEqual/ReadVariableOp¢MatMul/ReadVariableOp¢Mul/ReadVariableOp¢Mul/ReadVariableOp_1¢ReadVariableOp¢Sub/ReadVariableOp¢'assert_greater_equal/Assert/AssertGuard¢#assert_greater_equal/ReadVariableOp¢cond¢0polynomial_decay_pruning_schedule/ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	G
add/yConst*
_output_shapes
: *
dtype0	*
value	B	 RU
addAddV2ReadVariableOp:value:0add/y:output:0*
T0	*
_output_shapes
: z
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*
_output_shapes
 *
dtype0	7
updateNoOp^AssignVariableOp*
_output_shapes
 
#assert_greater_equal/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
: *
dtype0	X
assert_greater_equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
!assert_greater_equal/GreaterEqualGreaterEqual+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
T0	*
_output_shapes
: [
assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :·
assert_greater_equal/rangeRange)assert_greater_equal/range/start:output:0"assert_greater_equal/Rank:output:0)assert_greater_equal/range/delta:output:0*
_output_shapes
: 
assert_greater_equal/AllAll%assert_greater_equal/GreaterEqual:z:0#assert_greater_equal/range:output:0*
_output_shapes
: ñ
!assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.
#assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:
#assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = 
#assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = î
'assert_greater_equal/Assert/AssertGuardIf!assert_greater_equal/All:output:0!assert_greater_equal/All:output:0+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *F
else_branch7R5
3assert_greater_equal_Assert_AssertGuard_false_27677*
output_shapes
: *E
then_branch6R4
2assert_greater_equal_Assert_AssertGuard_true_27676
0assert_greater_equal/Assert/AssertGuard/IdentityIdentity0assert_greater_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: Æ
0polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
'polynomial_decay_pruning_schedule/sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R ¹
%polynomial_decay_pruning_schedule/subSub8polynomial_decay_pruning_schedule/ReadVariableOp:value:00polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: 
&polynomial_decay_pruning_schedule/CastCast)polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: £
+polynomial_decay_pruning_schedule/truediv/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  úC·
)polynomial_decay_pruning_schedule/truedivRealDiv*polynomial_decay_pruning_schedule/Cast:y:04polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: £
+polynomial_decay_pruning_schedule/Maximum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *    º
)polynomial_decay_pruning_schedule/MaximumMaximum4polynomial_decay_pruning_schedule/Maximum/x:output:0-polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: £
+polynomial_decay_pruning_schedule/Minimum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?º
)polynomial_decay_pruning_schedule/MinimumMinimum4polynomial_decay_pruning_schedule/Minimum/x:output:0-polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: ¡
)polynomial_decay_pruning_schedule/sub_1/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?²
'polynomial_decay_pruning_schedule/sub_1Sub2polynomial_decay_pruning_schedule/sub_1/x:output:0-polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: 
'polynomial_decay_pruning_schedule/Pow/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  @@¬
%polynomial_decay_pruning_schedule/PowPow+polynomial_decay_pruning_schedule/sub_1:z:00polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: 
'polynomial_decay_pruning_schedule/Mul/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *¾ª
%polynomial_decay_pruning_schedule/MulMul0polynomial_decay_pruning_schedule/Mul/x:output:0)polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: ¤
,polynomial_decay_pruning_schedule/sparsity/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *?¶
*polynomial_decay_pruning_schedule/sparsityAddV2)polynomial_decay_pruning_schedule/Mul:z:05polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: ±
GreaterEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
GreaterEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R {
GreaterEqualGreaterEqual#GreaterEqual/ReadVariableOp:value:0GreaterEqual/y:output:0*
T0	*
_output_shapes
: ®
LessEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
LessEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rôo
	LessEqual	LessEqual LessEqual/ReadVariableOp:value:0LessEqual/y:output:0*
T0	*
_output_shapes
: |
Less/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rô{
Less/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
LessLessLess/x:output:0Less/y:output:0*
T0	*
_output_shapes
: G
	LogicalOr	LogicalOrLessEqual:z:0Less:z:0*
_output_shapes
: Q

LogicalAnd
LogicalAndGreaterEqual:z:0LogicalOr:z:0*
_output_shapes
: ¨
Sub/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	z
Sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R W
SubSubSub/ReadVariableOp:value:0Sub/y:output:0*
T0	*
_output_shapes
: 

FloorMod/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 RdS
FloorModFloorModSub:z:0FloorMod/y:output:0*
T0	*
_output_shapes
: |
Equal/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
EqualEqualFloorMod:z:0Equal/y:output:0*
T0	*
_output_shapes
: M
LogicalAnd_1
LogicalAndLogicalAnd:z:0	Equal:z:0*
_output_shapes
: ñ
condIfLogicalAnd_1:z:0readvariableop_resourcecond_input_1cond_input_2cond_input_3LogicalAnd_1:z:0^AssignVariableOp*
Tcond0
*
Tin	
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: *$
_read_only_resource_inputs
*#
else_branchR
cond_false_27734*
output_shapes
: *"
then_branchR
cond_true_27733I
cond/IdentityIdentitycond:output:0*
T0
*
_output_shapes
: i
update_1NoOp1^assert_greater_equal/Assert/AssertGuard/Identity^cond/Identity*
_output_shapes
 _
Mul/ReadVariableOpReadVariableOpcond_input_1*
_output_shapes

:*
dtype0h
Mul/ReadVariableOp_1ReadVariableOpcond_input_2^cond*
_output_shapes

:*
dtype0m
MulMulMul/ReadVariableOp:value:0Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:|
AssignVariableOp_1AssignVariableOpcond_input_1Mul:z:0^Mul/ReadVariableOp^cond*
_output_shapes
 *
dtype0k

group_depsNoOp^AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 e
group_deps_1NoOp^group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 w
MatMul/ReadVariableOpReadVariableOpcond_input_1^AssignVariableOp_1*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^BiasAdd/ReadVariableOp^GreaterEqual/ReadVariableOp^LessEqual/ReadVariableOp^MatMul/ReadVariableOp^Mul/ReadVariableOp^Mul/ReadVariableOp_1^ReadVariableOp^Sub/ReadVariableOp(^assert_greater_equal/Assert/AssertGuard$^assert_greater_equal/ReadVariableOp^cond1^polynomial_decay_pruning_schedule/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_120
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2:
GreaterEqual/ReadVariableOpGreaterEqual/ReadVariableOp24
LessEqual/ReadVariableOpLessEqual/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
Mul/ReadVariableOpMul/ReadVariableOp2,
Mul/ReadVariableOp_1Mul/ReadVariableOp_12 
ReadVariableOpReadVariableOp2(
Sub/ReadVariableOpSub/ReadVariableOp2R
'assert_greater_equal/Assert/AssertGuard'assert_greater_equal/Assert/AssertGuard2J
#assert_greater_equal/ReadVariableOp#assert_greater_equal/ReadVariableOp2
condcond2d
0polynomial_decay_pruning_schedule/ReadVariableOp0polynomial_decay_pruning_schedule/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
u
Y__inference_prune_low_magnitude_activation_layer_call_and_return_conditional_losses_27852

inputs
identity'
	no_updateNoOp*
_output_shapes
 )
no_update_1NoOp*
_output_shapes
 (

group_depsNoOp*
_output_shapes
 L
SigmoidSigmoidinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¯
2assert_greater_equal_Assert_AssertGuard_true_26321M
Iassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all
7
3assert_greater_equal_assert_assertguard_placeholder	9
5assert_greater_equal_assert_assertguard_placeholder_1	6
2assert_greater_equal_assert_assertguard_identity_1
J
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 ×
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityIassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ò]

T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_26481

inputs!
readvariableop_resource:	 
cond_input_1:
cond_input_2:
cond_input_3: -
biasadd_readvariableop_resource:
identity¢AssignVariableOp¢AssignVariableOp_1¢BiasAdd/ReadVariableOp¢GreaterEqual/ReadVariableOp¢LessEqual/ReadVariableOp¢MatMul/ReadVariableOp¢Mul/ReadVariableOp¢Mul/ReadVariableOp_1¢ReadVariableOp¢Sub/ReadVariableOp¢'assert_greater_equal/Assert/AssertGuard¢#assert_greater_equal/ReadVariableOp¢cond¢0polynomial_decay_pruning_schedule/ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	G
add/yConst*
_output_shapes
: *
dtype0	*
value	B	 RU
addAddV2ReadVariableOp:value:0add/y:output:0*
T0	*
_output_shapes
: z
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*
_output_shapes
 *
dtype0	7
updateNoOp^AssignVariableOp*
_output_shapes
 
#assert_greater_equal/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
: *
dtype0	X
assert_greater_equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
!assert_greater_equal/GreaterEqualGreaterEqual+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
T0	*
_output_shapes
: [
assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :·
assert_greater_equal/rangeRange)assert_greater_equal/range/start:output:0"assert_greater_equal/Rank:output:0)assert_greater_equal/range/delta:output:0*
_output_shapes
: 
assert_greater_equal/AllAll%assert_greater_equal/GreaterEqual:z:0#assert_greater_equal/range:output:0*
_output_shapes
: ñ
!assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.
#assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:
#assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = 
#assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = î
'assert_greater_equal/Assert/AssertGuardIf!assert_greater_equal/All:output:0!assert_greater_equal/All:output:0+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *F
else_branch7R5
3assert_greater_equal_Assert_AssertGuard_false_26322*
output_shapes
: *E
then_branch6R4
2assert_greater_equal_Assert_AssertGuard_true_26321
0assert_greater_equal/Assert/AssertGuard/IdentityIdentity0assert_greater_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: Æ
0polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
'polynomial_decay_pruning_schedule/sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R ¹
%polynomial_decay_pruning_schedule/subSub8polynomial_decay_pruning_schedule/ReadVariableOp:value:00polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: 
&polynomial_decay_pruning_schedule/CastCast)polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: £
+polynomial_decay_pruning_schedule/truediv/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  úC·
)polynomial_decay_pruning_schedule/truedivRealDiv*polynomial_decay_pruning_schedule/Cast:y:04polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: £
+polynomial_decay_pruning_schedule/Maximum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *    º
)polynomial_decay_pruning_schedule/MaximumMaximum4polynomial_decay_pruning_schedule/Maximum/x:output:0-polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: £
+polynomial_decay_pruning_schedule/Minimum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?º
)polynomial_decay_pruning_schedule/MinimumMinimum4polynomial_decay_pruning_schedule/Minimum/x:output:0-polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: ¡
)polynomial_decay_pruning_schedule/sub_1/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ?²
'polynomial_decay_pruning_schedule/sub_1Sub2polynomial_decay_pruning_schedule/sub_1/x:output:0-polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: 
'polynomial_decay_pruning_schedule/Pow/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  @@¬
%polynomial_decay_pruning_schedule/PowPow+polynomial_decay_pruning_schedule/sub_1:z:00polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: 
'polynomial_decay_pruning_schedule/Mul/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *¾ª
%polynomial_decay_pruning_schedule/MulMul0polynomial_decay_pruning_schedule/Mul/x:output:0)polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: ¤
,polynomial_decay_pruning_schedule/sparsity/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *?¶
*polynomial_decay_pruning_schedule/sparsityAddV2)polynomial_decay_pruning_schedule/Mul:z:05polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: ±
GreaterEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
GreaterEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R {
GreaterEqualGreaterEqual#GreaterEqual/ReadVariableOp:value:0GreaterEqual/y:output:0*
T0	*
_output_shapes
: ®
LessEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	
LessEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rôo
	LessEqual	LessEqual LessEqual/ReadVariableOp:value:0LessEqual/y:output:0*
T0	*
_output_shapes
: |
Less/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rô{
Less/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
LessLessLess/x:output:0Less/y:output:0*
T0	*
_output_shapes
: G
	LogicalOr	LogicalOrLessEqual:z:0Less:z:0*
_output_shapes
: Q

LogicalAnd
LogicalAndGreaterEqual:z:0LogicalOr:z:0*
_output_shapes
: ¨
Sub/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	z
Sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R W
SubSubSub/ReadVariableOp:value:0Sub/y:output:0*
T0	*
_output_shapes
: 

FloorMod/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 RdS
FloorModFloorModSub:z:0FloorMod/y:output:0*
T0	*
_output_shapes
: |
Equal/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
EqualEqualFloorMod:z:0Equal/y:output:0*
T0	*
_output_shapes
: M
LogicalAnd_1
LogicalAndLogicalAnd:z:0	Equal:z:0*
_output_shapes
: ñ
condIfLogicalAnd_1:z:0readvariableop_resourcecond_input_1cond_input_2cond_input_3LogicalAnd_1:z:0^AssignVariableOp*
Tcond0
*
Tin	
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: *$
_read_only_resource_inputs
*#
else_branchR
cond_false_26379*
output_shapes
: *"
then_branchR
cond_true_26378I
cond/IdentityIdentitycond:output:0*
T0
*
_output_shapes
: i
update_1NoOp1^assert_greater_equal/Assert/AssertGuard/Identity^cond/Identity*
_output_shapes
 _
Mul/ReadVariableOpReadVariableOpcond_input_1*
_output_shapes

:*
dtype0h
Mul/ReadVariableOp_1ReadVariableOpcond_input_2^cond*
_output_shapes

:*
dtype0m
MulMulMul/ReadVariableOp:value:0Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:|
AssignVariableOp_1AssignVariableOpcond_input_1Mul:z:0^Mul/ReadVariableOp^cond*
_output_shapes
 *
dtype0k

group_depsNoOp^AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 e
group_deps_1NoOp^group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 w
MatMul/ReadVariableOpReadVariableOpcond_input_1^AssignVariableOp_1*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^BiasAdd/ReadVariableOp^GreaterEqual/ReadVariableOp^LessEqual/ReadVariableOp^MatMul/ReadVariableOp^Mul/ReadVariableOp^Mul/ReadVariableOp_1^ReadVariableOp^Sub/ReadVariableOp(^assert_greater_equal/Assert/AssertGuard$^assert_greater_equal/ReadVariableOp^cond1^polynomial_decay_pruning_schedule/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_120
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2:
GreaterEqual/ReadVariableOpGreaterEqual/ReadVariableOp24
LessEqual/ReadVariableOpLessEqual/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
Mul/ReadVariableOpMul/ReadVariableOp2,
Mul/ReadVariableOp_1Mul/ReadVariableOp_12 
ReadVariableOpReadVariableOp2(
Sub/ReadVariableOpSub/ReadVariableOp2R
'assert_greater_equal/Assert/AssertGuard'assert_greater_equal/Assert/AssertGuard2J
#assert_greater_equal/ReadVariableOp#assert_greater_equal/ReadVariableOp2
condcond2d
0polynomial_decay_pruning_schedule/ReadVariableOp0polynomial_decay_pruning_schedule/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯
Ù
Nprune_low_magnitude_dense_1_assert_greater_equal_Assert_AssertGuard_true_27038
prune_low_magnitude_dense_1_assert_greater_equal_assert_assertguard_identity_prune_low_magnitude_dense_1_assert_greater_equal_all
S
Oprune_low_magnitude_dense_1_assert_greater_equal_assert_assertguard_placeholder	U
Qprune_low_magnitude_dense_1_assert_greater_equal_assert_assertguard_placeholder_1	R
Nprune_low_magnitude_dense_1_assert_greater_equal_assert_assertguard_identity_1
f
Hprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 È
Lprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/IdentityIdentityprune_low_magnitude_dense_1_assert_greater_equal_assert_assertguard_identity_prune_low_magnitude_dense_1_assert_greater_equal_allI^prune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: Ò
Nprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity_1IdentityUprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "©
Nprune_low_magnitude_dense_1_assert_greater_equal_assert_assertguard_identity_1Wprune_low_magnitude_dense_1/assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

¯
2assert_greater_equal_Assert_AssertGuard_true_27343M
Iassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all
7
3assert_greater_equal_assert_assertguard_placeholder	9
5assert_greater_equal_assert_assertguard_placeholder_1	6
2assert_greater_equal_assert_assertguard_identity_1
J
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 ×
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityIassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
²
¶
+prune_low_magnitude_dropout_cond_true_27002V
Rprune_low_magnitude_dropout_cond_identity_prune_low_magnitude_dropout_logicaland_1
/
+prune_low_magnitude_dropout_cond_identity_1
I
+prune_low_magnitude_dropout/cond/group_depsNoOp*
_output_shapes
 Ø
)prune_low_magnitude_dropout/cond/IdentityIdentityRprune_low_magnitude_dropout_cond_identity_prune_low_magnitude_dropout_logicaland_1,^prune_low_magnitude_dropout/cond/group_deps*
T0
*
_output_shapes
: 
+prune_low_magnitude_dropout/cond/Identity_1Identity2prune_low_magnitude_dropout/cond/Identity:output:0*
T0
*
_output_shapes
: "c
+prune_low_magnitude_dropout_cond_identity_14prune_low_magnitude_dropout/cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 

_output_shapes
: 
ý

,prune_low_magnitude_dense_1_cond_false_270960
,prune_low_magnitude_dense_1_cond_placeholder2
.prune_low_magnitude_dense_1_cond_placeholder_12
.prune_low_magnitude_dense_1_cond_placeholder_22
.prune_low_magnitude_dense_1_cond_placeholder_3V
Rprune_low_magnitude_dense_1_cond_identity_prune_low_magnitude_dense_1_logicaland_1
/
+prune_low_magnitude_dense_1_cond_identity_1
C
%prune_low_magnitude_dense_1/cond/NoOpNoOp*
_output_shapes
 Ò
)prune_low_magnitude_dense_1/cond/IdentityIdentityRprune_low_magnitude_dense_1_cond_identity_prune_low_magnitude_dense_1_logicaland_1&^prune_low_magnitude_dense_1/cond/NoOp*
T0
*
_output_shapes
: 
+prune_low_magnitude_dense_1/cond/Identity_1Identity2prune_low_magnitude_dense_1/cond/Identity:output:0*
T0
*
_output_shapes
: "c
+prune_low_magnitude_dense_1_cond_identity_14prune_low_magnitude_dense_1/cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : :

_output_shapes
: 
ç
ò
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_25810

inputs-
mul_readvariableop_resource:/
mul_readvariableop_1_resource:-
biasadd_readvariableop_resource:
identity¢AssignVariableOp¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢Mul/ReadVariableOp¢Mul/ReadVariableOp_1'
	no_updateNoOp*
_output_shapes
 )
no_update_1NoOp*
_output_shapes
 n
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes

:*
dtype0r
Mul/ReadVariableOp_1ReadVariableOpmul_readvariableop_1_resource*
_output_shapes

:*
dtype0m
MulMulMul/ReadVariableOp:value:0Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:
AssignVariableOpAssignVariableOpmul_readvariableop_resourceMul:z:0^Mul/ReadVariableOp*
_output_shapes
 *
dtype0i

group_depsNoOp^AssignVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 e
group_deps_1NoOp^group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 
MatMul/ReadVariableOpReadVariableOpmul_readvariableop_resource^AssignVariableOp*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
NoOpNoOp^AssignVariableOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^Mul/ReadVariableOp^Mul/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2$
AssignVariableOpAssignVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
Mul/ReadVariableOpMul/ReadVariableOp2,
Mul/ReadVariableOp_1Mul/ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸
G
cond_false_25955
cond_identity_logicaland_1

cond_identity_1
'
	cond/NoOpNoOp*
_output_shapes
 b
cond/IdentityIdentitycond_identity_logicaland_1
^cond/NoOp*
T0
*
_output_shapes
: T
cond/Identity_1Identitycond/Identity:output:0*
T0
*
_output_shapes
: "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 

_output_shapes
: 
Ú
u
Y__inference_prune_low_magnitude_activation_layer_call_and_return_conditional_losses_25852

inputs
identity'
	no_updateNoOp*
_output_shapes
 )
no_update_1NoOp*
_output_shapes
 (

group_depsNoOp*
_output_shapes
 L
SigmoidSigmoidinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ôs
ã
!__inference__traced_restore_28149
file_prefixA
/assignvariableop_prune_low_magnitude_dense_mask:@
6assignvariableop_1_prune_low_magnitude_dense_threshold: C
9assignvariableop_2_prune_low_magnitude_dense_pruning_step:	 E
;assignvariableop_3_prune_low_magnitude_dropout_pruning_step:	 E
3assignvariableop_4_prune_low_magnitude_dense_1_mask:B
8assignvariableop_5_prune_low_magnitude_dense_1_threshold: E
;assignvariableop_6_prune_low_magnitude_dense_1_pruning_step:	 H
>assignvariableop_7_prune_low_magnitude_activation_pruning_step:	 !
assignvariableop_8_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: 2
 assignvariableop_13_dense_kernel:,
assignvariableop_14_dense_bias:4
"assignvariableop_15_dense_1_kernel:.
 assignvariableop_16_dense_1_bias:#
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: 9
'assignvariableop_21_adam_dense_kernel_m:3
%assignvariableop_22_adam_dense_bias_m:;
)assignvariableop_23_adam_dense_1_kernel_m:5
'assignvariableop_24_adam_dense_1_bias_m:9
'assignvariableop_25_adam_dense_kernel_v:3
%assignvariableop_26_adam_dense_bias_v:;
)assignvariableop_27_adam_dense_1_kernel_v:5
'assignvariableop_28_adam_dense_1_bias_v:
identity_30¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ä
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBýB4layer_with_weights-0/mask/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/threshold/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-0/pruning_step/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-1/pruning_step/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/mask/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-2/threshold/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-2/pruning_step/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-3/pruning_step/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¬
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B µ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2					[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp/assignvariableop_prune_low_magnitude_dense_maskIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_1AssignVariableOp6assignvariableop_1_prune_low_magnitude_dense_thresholdIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:¨
AssignVariableOp_2AssignVariableOp9assignvariableop_2_prune_low_magnitude_dense_pruning_stepIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:ª
AssignVariableOp_3AssignVariableOp;assignvariableop_3_prune_low_magnitude_dropout_pruning_stepIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_4AssignVariableOp3assignvariableop_4_prune_low_magnitude_dense_1_maskIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_5AssignVariableOp8assignvariableop_5_prune_low_magnitude_dense_1_thresholdIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:ª
AssignVariableOp_6AssignVariableOp;assignvariableop_6_prune_low_magnitude_dense_1_pruning_stepIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:­
AssignVariableOp_7AssignVariableOp>assignvariableop_7_prune_low_magnitude_activation_pruning_stepIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_dense_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp"assignvariableop_15_dense_1_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp assignvariableop_16_dense_1_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_dense_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp%assignvariableop_22_adam_dense_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_1_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_1_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_dense_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp%assignvariableop_26_adam_dense_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_1_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_1_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Í
Identity_29Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_30IdentityIdentity_29:output:0^NoOp_1*
T0*
_output_shapes
: º
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_30Identity_30:output:0*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282(
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
Ï


*__inference_sequential_layer_call_fn_26601
dense_input
unknown:	 
	unknown_0:
	unknown_1:
	unknown_2: 
	unknown_3:
	unknown_4:	 
	unknown_5:	 
	unknown_6:
	unknown_7:
	unknown_8: 
	unknown_9:

unknown_10:	 
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_26545o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namedense_input
¸
G
cond_false_27929
cond_identity_logicaland_1

cond_identity_1
'
	cond/NoOpNoOp*
_output_shapes
 b
cond/IdentityIdentitycond_identity_logicaland_1
^cond/NoOp*
T0
*
_output_shapes
: T
cond/Identity_1Identitycond/Identity:output:0*
T0
*
_output_shapes
: "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 

_output_shapes
: 
ÿ

3assert_greater_equal_Assert_AssertGuard_false_27344K
Gassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all
V
Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop	I
Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y	6
2assert_greater_equal_assert_assertguard_identity_1
¢.assert_greater_equal/Assert/AssertGuard/Assert
5assert_greater_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.¡
5assert_greater_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:¢
5assert_greater_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = 
5assert_greater_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = Ã
.assert_greater_equal/Assert/AssertGuard/AssertAssertGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all>assert_greater_equal/Assert/AssertGuard/Assert/data_0:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_1:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_2:output:0Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop>assert_greater_equal/Assert/AssertGuard/Assert/data_4:output:0Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y*
T

2		*
_output_shapes
 ×
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all/^assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: É
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp/^assert_greater_equal/Assert/AssertGuard/Assert*"
_acd_function_control_output(*
_output_shapes
 "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2`
.assert_greater_equal/Assert/AssertGuard/Assert.assert_greater_equal/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

ô
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_27657

inputs-
mul_readvariableop_resource:/
mul_readvariableop_1_resource:-
biasadd_readvariableop_resource:
identity¢AssignVariableOp¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢Mul/ReadVariableOp¢Mul/ReadVariableOp_1'
	no_updateNoOp*
_output_shapes
 )
no_update_1NoOp*
_output_shapes
 n
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes

:*
dtype0r
Mul/ReadVariableOp_1ReadVariableOpmul_readvariableop_1_resource*
_output_shapes

:*
dtype0m
MulMulMul/ReadVariableOp:value:0Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:
AssignVariableOpAssignVariableOpmul_readvariableop_resourceMul:z:0^Mul/ReadVariableOp*
_output_shapes
 *
dtype0i

group_depsNoOp^AssignVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 e
group_deps_1NoOp^group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 
MatMul/ReadVariableOpReadVariableOpmul_readvariableop_resource^AssignVariableOp*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
NoOpNoOp^AssignVariableOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^Mul/ReadVariableOp^Mul/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2$
AssignVariableOpAssignVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
Mul/ReadVariableOpMul/ReadVariableOp2,
Mul/ReadVariableOp_1Mul/ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸
G
cond_false_27597
cond_identity_logicaland_1

cond_identity_1
'
	cond/NoOpNoOp*
_output_shapes
 b
cond/IdentityIdentitycond_identity_logicaland_1
^cond/NoOp*
T0
*
_output_shapes
: T
cond/Identity_1Identitycond/Identity:output:0*
T0
*
_output_shapes
: "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 

_output_shapes
: 
À


*__inference_sequential_layer_call_fn_26724

inputs
unknown:	 
	unknown_0:
	unknown_1:
	unknown_2: 
	unknown_3:
	unknown_4:	 
	unknown_5:	 
	unknown_6:
	unknown_7:
	unknown_8: 
	unknown_9:

unknown_10:	 
identity¢StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_26545o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÆU

cond_true_27400H
>cond_polynomial_decay_pruning_schedule_readvariableop_resource:	 >
,cond_pruning_ops_abs_readvariableop_resource:0
cond_assignvariableop_resource:*
 cond_assignvariableop_1_resource: 
cond_identity_logicaland_1

cond_identity_1
¢cond/AssignVariableOp¢cond/AssignVariableOp_1¢ cond/GreaterEqual/ReadVariableOp¢cond/LessEqual/ReadVariableOp¢cond/Sub/ReadVariableOp¢5cond/polynomial_decay_pruning_schedule/ReadVariableOp¢#cond/pruning_ops/Abs/ReadVariableOp¬
5cond/polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	n
,cond/polynomial_decay_pruning_schedule/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R È
*cond/polynomial_decay_pruning_schedule/subSub=cond/polynomial_decay_pruning_schedule/ReadVariableOp:value:05cond/polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: 
+cond/polynomial_decay_pruning_schedule/CastCast.cond/polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  úCÆ
.cond/polynomial_decay_pruning_schedule/truedivRealDiv/cond/polynomial_decay_pruning_schedule/Cast:y:09cond/polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/Maximum/xConst*
_output_shapes
: *
dtype0*
valueB
 *    É
.cond/polynomial_decay_pruning_schedule/MaximumMaximum9cond/polynomial_decay_pruning_schedule/Maximum/x:output:02cond/polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/Minimum/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?É
.cond/polynomial_decay_pruning_schedule/MinimumMinimum9cond/polynomial_decay_pruning_schedule/Minimum/x:output:02cond/polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: s
.cond/polynomial_decay_pruning_schedule/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Á
,cond/polynomial_decay_pruning_schedule/sub_1Sub7cond/polynomial_decay_pruning_schedule/sub_1/x:output:02cond/polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: q
,cond/polynomial_decay_pruning_schedule/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@»
*cond/polynomial_decay_pruning_schedule/PowPow0cond/polynomial_decay_pruning_schedule/sub_1:z:05cond/polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: q
,cond/polynomial_decay_pruning_schedule/Mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¾¹
*cond/polynomial_decay_pruning_schedule/MulMul5cond/polynomial_decay_pruning_schedule/Mul/x:output:0.cond/polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: v
1cond/polynomial_decay_pruning_schedule/sparsity/yConst*
_output_shapes
: *
dtype0*
valueB
 *?Å
/cond/polynomial_decay_pruning_schedule/sparsityAddV2.cond/polynomial_decay_pruning_schedule/Mul:z:0:cond/polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: 
 cond/GreaterEqual/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	U
cond/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
cond/GreaterEqualGreaterEqual(cond/GreaterEqual/ReadVariableOp:value:0cond/GreaterEqual/y:output:0*
T0	*
_output_shapes
: 
cond/LessEqual/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	S
cond/LessEqual/yConst*
_output_shapes
: *
dtype0	*
value
B	 Rô~
cond/LessEqual	LessEqual%cond/LessEqual/ReadVariableOp:value:0cond/LessEqual/y:output:0*
T0	*
_output_shapes
: N
cond/Less/xConst*
_output_shapes
: *
dtype0	*
value
B	 RôM
cond/Less/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ^
	cond/LessLesscond/Less/x:output:0cond/Less/y:output:0*
T0	*
_output_shapes
: V
cond/LogicalOr	LogicalOrcond/LessEqual:z:0cond/Less:z:0*
_output_shapes
: `
cond/LogicalAnd
LogicalAndcond/GreaterEqual:z:0cond/LogicalOr:z:0*
_output_shapes
: 
cond/Sub/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	L

cond/Sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R f
cond/SubSubcond/Sub/ReadVariableOp:value:0cond/Sub/y:output:0*
T0	*
_output_shapes
: Q
cond/FloorMod/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rdb
cond/FloorModFloorModcond/Sub:z:0cond/FloorMod/y:output:0*
T0	*
_output_shapes
: N
cond/Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ^

cond/EqualEqualcond/FloorMod:z:0cond/Equal/y:output:0*
T0	*
_output_shapes
: \
cond/LogicalAnd_1
LogicalAndcond/LogicalAnd:z:0cond/Equal:z:0*
_output_shapes
: 
#cond/pruning_ops/Abs/ReadVariableOpReadVariableOp,cond_pruning_ops_abs_readvariableop_resource*
_output_shapes

:*
dtype0q
cond/pruning_ops/AbsAbs+cond/pruning_ops/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:X
cond/pruning_ops/SizeConst*
_output_shapes
: *
dtype0*
value
B :àm
cond/pruning_ops/CastCastcond/pruning_ops/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: [
cond/pruning_ops/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
cond/pruning_ops/subSubcond/pruning_ops/sub/x:output:03cond/polynomial_decay_pruning_schedule/sparsity:z:0*
T0*
_output_shapes
: q
cond/pruning_ops/mulMulcond/pruning_ops/Cast:y:0cond/pruning_ops/sub:z:0*
T0*
_output_shapes
: Z
cond/pruning_ops/RoundRoundcond/pruning_ops/mul:z:0*
T0*
_output_shapes
: _
cond/pruning_ops/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
cond/pruning_ops/MaximumMaximumcond/pruning_ops/Round:y:0#cond/pruning_ops/Maximum/y:output:0*
T0*
_output_shapes
: m
cond/pruning_ops/Cast_1Castcond/pruning_ops/Maximum:z:0*

DstT0*

SrcT0*
_output_shapes
: q
cond/pruning_ops/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
cond/pruning_ops/ReshapeReshapecond/pruning_ops/Abs:y:0'cond/pruning_ops/Reshape/shape:output:0*
T0*
_output_shapes	
:àZ
cond/pruning_ops/Size_1Const*
_output_shapes
: *
dtype0*
value
B :à
cond/pruning_ops/TopKV2TopKV2!cond/pruning_ops/Reshape:output:0 cond/pruning_ops/Size_1:output:0*
T0*"
_output_shapes
:à:àZ
cond/pruning_ops/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :~
cond/pruning_ops/sub_1Subcond/pruning_ops/Cast_1:y:0!cond/pruning_ops/sub_1/y:output:0*
T0*
_output_shapes
: `
cond/pruning_ops/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
cond/pruning_ops/GatherV2GatherV2 cond/pruning_ops/TopKV2:values:0cond/pruning_ops/sub_1:z:0'cond/pruning_ops/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: Z
cond/pruning_ops/sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :~
cond/pruning_ops/sub_2Subcond/pruning_ops/Cast_1:y:0!cond/pruning_ops/sub_2/y:output:0*
T0*
_output_shapes
: b
 cond/pruning_ops/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Õ
cond/pruning_ops/GatherV2_1GatherV2!cond/pruning_ops/TopKV2:indices:0cond/pruning_ops/sub_2:z:0)cond/pruning_ops/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 
cond/pruning_ops/GreaterEqualGreaterEqualcond/pruning_ops/Abs:y:0"cond/pruning_ops/GatherV2:output:0*
T0*
_output_shapes

:Z
cond/pruning_ops/Size_2Const*
_output_shapes
: *
dtype0*
value
B :à`
cond/pruning_ops/one_hot/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Zb
 cond/pruning_ops/one_hot/Const_1Const*
_output_shapes
: *
dtype0
*
value	B
 Z î
cond/pruning_ops/one_hotOneHot$cond/pruning_ops/GatherV2_1:output:0 cond/pruning_ops/Size_2:output:0'cond/pruning_ops/one_hot/Const:output:0)cond/pruning_ops/one_hot/Const_1:output:0*
T0
*
TI0*
_output_shapes	
:àq
 cond/pruning_ops/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
cond/pruning_ops/Reshape_1Reshape!cond/pruning_ops/one_hot:output:0)cond/pruning_ops/Reshape_1/shape:output:0*
T0
*
_output_shapes

:
cond/pruning_ops/LogicalOr	LogicalOr!cond/pruning_ops/GreaterEqual:z:0#cond/pruning_ops/Reshape_1:output:0*
_output_shapes

:i
	cond/CastCastcond/pruning_ops/LogicalOr:z:0*

DstT0*

SrcT0
*
_output_shapes

:{
cond/AssignVariableOpAssignVariableOpcond_assignvariableop_resourcecond/Cast:y:0*
_output_shapes
 *
dtype0
cond/AssignVariableOp_1AssignVariableOp cond_assignvariableop_1_resource"cond/pruning_ops/GatherV2:output:0*
_output_shapes
 *
dtype0
cond/group_depsNoOp^cond/AssignVariableOp^cond/AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 h
cond/IdentityIdentitycond_identity_logicaland_1^cond/group_deps*
T0
*
_output_shapes
: `
cond/Identity_1Identitycond/Identity:output:0
^cond/NoOp*
T0
*
_output_shapes
: ¸
	cond/NoOpNoOp^cond/AssignVariableOp^cond/AssignVariableOp_1!^cond/GreaterEqual/ReadVariableOp^cond/LessEqual/ReadVariableOp^cond/Sub/ReadVariableOp6^cond/polynomial_decay_pruning_schedule/ReadVariableOp$^cond/pruning_ops/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2.
cond/AssignVariableOpcond/AssignVariableOp22
cond/AssignVariableOp_1cond/AssignVariableOp_12D
 cond/GreaterEqual/ReadVariableOp cond/GreaterEqual/ReadVariableOp2>
cond/LessEqual/ReadVariableOpcond/LessEqual/ReadVariableOp22
cond/Sub/ReadVariableOpcond/Sub/ReadVariableOp2n
5cond/polynomial_decay_pruning_schedule/ReadVariableOp5cond/polynomial_decay_pruning_schedule/ReadVariableOp2J
#cond/pruning_ops/Abs/ReadVariableOp#cond/pruning_ops/Abs/ReadVariableOp:

_output_shapes
: 
ÿ

3assert_greater_equal_Assert_AssertGuard_false_25898K
Gassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all
V
Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop	I
Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y	6
2assert_greater_equal_assert_assertguard_identity_1
¢.assert_greater_equal/Assert/AssertGuard/Assert
5assert_greater_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.¡
5assert_greater_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:¢
5assert_greater_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = 
5assert_greater_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = Ã
.assert_greater_equal/Assert/AssertGuard/AssertAssertGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all>assert_greater_equal/Assert/AssertGuard/Assert/data_0:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_1:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_2:output:0Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop>assert_greater_equal/Assert/AssertGuard/Assert/data_4:output:0Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y*
T

2		*
_output_shapes
 ×
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all/^assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: É
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp/^assert_greater_equal/Assert/AssertGuard/Assert*"
_acd_function_control_output(*
_output_shapes
 "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2`
.assert_greater_equal/Assert/AssertGuard/Assert.assert_greater_equal/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
¢
Â
+prune_low_magnitude_dense_1_cond_true_27095d
Zprune_low_magnitude_dense_1_cond_polynomial_decay_pruning_schedule_readvariableop_resource:	 Z
Hprune_low_magnitude_dense_1_cond_pruning_ops_abs_readvariableop_resource:L
:prune_low_magnitude_dense_1_cond_assignvariableop_resource:F
<prune_low_magnitude_dense_1_cond_assignvariableop_1_resource: V
Rprune_low_magnitude_dense_1_cond_identity_prune_low_magnitude_dense_1_logicaland_1
/
+prune_low_magnitude_dense_1_cond_identity_1
¢1prune_low_magnitude_dense_1/cond/AssignVariableOp¢3prune_low_magnitude_dense_1/cond/AssignVariableOp_1¢<prune_low_magnitude_dense_1/cond/GreaterEqual/ReadVariableOp¢9prune_low_magnitude_dense_1/cond/LessEqual/ReadVariableOp¢3prune_low_magnitude_dense_1/cond/Sub/ReadVariableOp¢Qprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/ReadVariableOp¢?prune_low_magnitude_dense_1/cond/pruning_ops/Abs/ReadVariableOpä
Qprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOpZprune_low_magnitude_dense_1_cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	
Hprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Fprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/subSubYprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/ReadVariableOp:value:0Qprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: Ë
Gprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/CastCastJprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 
Lprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  úC
Jprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/truedivRealDivKprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/Cast:y:0Uprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: 
Lprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/Maximum/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
Jprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/MaximumMaximumUprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/Maximum/x:output:0Nprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: 
Lprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/Minimum/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Jprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/MinimumMinimumUprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/Minimum/x:output:0Nprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: 
Jprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Hprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/sub_1SubSprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/sub_1/x:output:0Nprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: 
Hprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@
Fprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/PowPowLprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/sub_1:z:0Qprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: 
Hprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/Mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¾
Fprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/MulMulQprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/Mul/x:output:0Jprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: 
Mprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/sparsity/yConst*
_output_shapes
: *
dtype0*
valueB
 *?
Kprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/sparsityAddV2Jprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/Mul:z:0Vprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: Ï
<prune_low_magnitude_dense_1/cond/GreaterEqual/ReadVariableOpReadVariableOpZprune_low_magnitude_dense_1_cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	q
/prune_low_magnitude_dense_1/cond/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R Þ
-prune_low_magnitude_dense_1/cond/GreaterEqualGreaterEqualDprune_low_magnitude_dense_1/cond/GreaterEqual/ReadVariableOp:value:08prune_low_magnitude_dense_1/cond/GreaterEqual/y:output:0*
T0	*
_output_shapes
: Ì
9prune_low_magnitude_dense_1/cond/LessEqual/ReadVariableOpReadVariableOpZprune_low_magnitude_dense_1_cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	o
,prune_low_magnitude_dense_1/cond/LessEqual/yConst*
_output_shapes
: *
dtype0	*
value
B	 RôÒ
*prune_low_magnitude_dense_1/cond/LessEqual	LessEqualAprune_low_magnitude_dense_1/cond/LessEqual/ReadVariableOp:value:05prune_low_magnitude_dense_1/cond/LessEqual/y:output:0*
T0	*
_output_shapes
: j
'prune_low_magnitude_dense_1/cond/Less/xConst*
_output_shapes
: *
dtype0	*
value
B	 Rôi
'prune_low_magnitude_dense_1/cond/Less/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ²
%prune_low_magnitude_dense_1/cond/LessLess0prune_low_magnitude_dense_1/cond/Less/x:output:00prune_low_magnitude_dense_1/cond/Less/y:output:0*
T0	*
_output_shapes
: ª
*prune_low_magnitude_dense_1/cond/LogicalOr	LogicalOr.prune_low_magnitude_dense_1/cond/LessEqual:z:0)prune_low_magnitude_dense_1/cond/Less:z:0*
_output_shapes
: ´
+prune_low_magnitude_dense_1/cond/LogicalAnd
LogicalAnd1prune_low_magnitude_dense_1/cond/GreaterEqual:z:0.prune_low_magnitude_dense_1/cond/LogicalOr:z:0*
_output_shapes
: Æ
3prune_low_magnitude_dense_1/cond/Sub/ReadVariableOpReadVariableOpZprune_low_magnitude_dense_1_cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	h
&prune_low_magnitude_dense_1/cond/Sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R º
$prune_low_magnitude_dense_1/cond/SubSub;prune_low_magnitude_dense_1/cond/Sub/ReadVariableOp:value:0/prune_low_magnitude_dense_1/cond/Sub/y:output:0*
T0	*
_output_shapes
: m
+prune_low_magnitude_dense_1/cond/FloorMod/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rd¶
)prune_low_magnitude_dense_1/cond/FloorModFloorMod(prune_low_magnitude_dense_1/cond/Sub:z:04prune_low_magnitude_dense_1/cond/FloorMod/y:output:0*
T0	*
_output_shapes
: j
(prune_low_magnitude_dense_1/cond/Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ²
&prune_low_magnitude_dense_1/cond/EqualEqual-prune_low_magnitude_dense_1/cond/FloorMod:z:01prune_low_magnitude_dense_1/cond/Equal/y:output:0*
T0	*
_output_shapes
: °
-prune_low_magnitude_dense_1/cond/LogicalAnd_1
LogicalAnd/prune_low_magnitude_dense_1/cond/LogicalAnd:z:0*prune_low_magnitude_dense_1/cond/Equal:z:0*
_output_shapes
: È
?prune_low_magnitude_dense_1/cond/pruning_ops/Abs/ReadVariableOpReadVariableOpHprune_low_magnitude_dense_1_cond_pruning_ops_abs_readvariableop_resource*
_output_shapes

:*
dtype0©
0prune_low_magnitude_dense_1/cond/pruning_ops/AbsAbsGprune_low_magnitude_dense_1/cond/pruning_ops/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:s
1prune_low_magnitude_dense_1/cond/pruning_ops/SizeConst*
_output_shapes
: *
dtype0*
value	B :¥
1prune_low_magnitude_dense_1/cond/pruning_ops/CastCast:prune_low_magnitude_dense_1/cond/pruning_ops/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: w
2prune_low_magnitude_dense_1/cond/pruning_ops/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?æ
0prune_low_magnitude_dense_1/cond/pruning_ops/subSub;prune_low_magnitude_dense_1/cond/pruning_ops/sub/x:output:0Oprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/sparsity:z:0*
T0*
_output_shapes
: Å
0prune_low_magnitude_dense_1/cond/pruning_ops/mulMul5prune_low_magnitude_dense_1/cond/pruning_ops/Cast:y:04prune_low_magnitude_dense_1/cond/pruning_ops/sub:z:0*
T0*
_output_shapes
: 
2prune_low_magnitude_dense_1/cond/pruning_ops/RoundRound4prune_low_magnitude_dense_1/cond/pruning_ops/mul:z:0*
T0*
_output_shapes
: {
6prune_low_magnitude_dense_1/cond/pruning_ops/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ù
4prune_low_magnitude_dense_1/cond/pruning_ops/MaximumMaximum6prune_low_magnitude_dense_1/cond/pruning_ops/Round:y:0?prune_low_magnitude_dense_1/cond/pruning_ops/Maximum/y:output:0*
T0*
_output_shapes
: ¥
3prune_low_magnitude_dense_1/cond/pruning_ops/Cast_1Cast8prune_low_magnitude_dense_1/cond/pruning_ops/Maximum:z:0*

DstT0*

SrcT0*
_output_shapes
: 
:prune_low_magnitude_dense_1/cond/pruning_ops/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿß
4prune_low_magnitude_dense_1/cond/pruning_ops/ReshapeReshape4prune_low_magnitude_dense_1/cond/pruning_ops/Abs:y:0Cprune_low_magnitude_dense_1/cond/pruning_ops/Reshape/shape:output:0*
T0*
_output_shapes
:u
3prune_low_magnitude_dense_1/cond/pruning_ops/Size_1Const*
_output_shapes
: *
dtype0*
value	B :å
3prune_low_magnitude_dense_1/cond/pruning_ops/TopKV2TopKV2=prune_low_magnitude_dense_1/cond/pruning_ops/Reshape:output:0<prune_low_magnitude_dense_1/cond/pruning_ops/Size_1:output:0*
T0* 
_output_shapes
::v
4prune_low_magnitude_dense_1/cond/pruning_ops/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ò
2prune_low_magnitude_dense_1/cond/pruning_ops/sub_1Sub7prune_low_magnitude_dense_1/cond/pruning_ops/Cast_1:y:0=prune_low_magnitude_dense_1/cond/pruning_ops/sub_1/y:output:0*
T0*
_output_shapes
: |
:prune_low_magnitude_dense_1/cond/pruning_ops/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : À
5prune_low_magnitude_dense_1/cond/pruning_ops/GatherV2GatherV2<prune_low_magnitude_dense_1/cond/pruning_ops/TopKV2:values:06prune_low_magnitude_dense_1/cond/pruning_ops/sub_1:z:0Cprune_low_magnitude_dense_1/cond/pruning_ops/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: v
4prune_low_magnitude_dense_1/cond/pruning_ops/sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :Ò
2prune_low_magnitude_dense_1/cond/pruning_ops/sub_2Sub7prune_low_magnitude_dense_1/cond/pruning_ops/Cast_1:y:0=prune_low_magnitude_dense_1/cond/pruning_ops/sub_2/y:output:0*
T0*
_output_shapes
: ~
<prune_low_magnitude_dense_1/cond/pruning_ops/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Å
7prune_low_magnitude_dense_1/cond/pruning_ops/GatherV2_1GatherV2=prune_low_magnitude_dense_1/cond/pruning_ops/TopKV2:indices:06prune_low_magnitude_dense_1/cond/pruning_ops/sub_2:z:0Eprune_low_magnitude_dense_1/cond/pruning_ops/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: è
9prune_low_magnitude_dense_1/cond/pruning_ops/GreaterEqualGreaterEqual4prune_low_magnitude_dense_1/cond/pruning_ops/Abs:y:0>prune_low_magnitude_dense_1/cond/pruning_ops/GatherV2:output:0*
T0*
_output_shapes

:u
3prune_low_magnitude_dense_1/cond/pruning_ops/Size_2Const*
_output_shapes
: *
dtype0*
value	B :|
:prune_low_magnitude_dense_1/cond/pruning_ops/one_hot/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Z~
<prune_low_magnitude_dense_1/cond/pruning_ops/one_hot/Const_1Const*
_output_shapes
: *
dtype0
*
value	B
 Z ù
4prune_low_magnitude_dense_1/cond/pruning_ops/one_hotOneHot@prune_low_magnitude_dense_1/cond/pruning_ops/GatherV2_1:output:0<prune_low_magnitude_dense_1/cond/pruning_ops/Size_2:output:0Cprune_low_magnitude_dense_1/cond/pruning_ops/one_hot/Const:output:0Eprune_low_magnitude_dense_1/cond/pruning_ops/one_hot/Const_1:output:0*
T0
*
TI0*
_output_shapes
:
<prune_low_magnitude_dense_1/cond/pruning_ops/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ð
6prune_low_magnitude_dense_1/cond/pruning_ops/Reshape_1Reshape=prune_low_magnitude_dense_1/cond/pruning_ops/one_hot:output:0Eprune_low_magnitude_dense_1/cond/pruning_ops/Reshape_1/shape:output:0*
T0
*
_output_shapes

:ã
6prune_low_magnitude_dense_1/cond/pruning_ops/LogicalOr	LogicalOr=prune_low_magnitude_dense_1/cond/pruning_ops/GreaterEqual:z:0?prune_low_magnitude_dense_1/cond/pruning_ops/Reshape_1:output:0*
_output_shapes

:¡
%prune_low_magnitude_dense_1/cond/CastCast:prune_low_magnitude_dense_1/cond/pruning_ops/LogicalOr:z:0*

DstT0*

SrcT0
*
_output_shapes

:Ï
1prune_low_magnitude_dense_1/cond/AssignVariableOpAssignVariableOp:prune_low_magnitude_dense_1_cond_assignvariableop_resource)prune_low_magnitude_dense_1/cond/Cast:y:0*
_output_shapes
 *
dtype0è
3prune_low_magnitude_dense_1/cond/AssignVariableOp_1AssignVariableOp<prune_low_magnitude_dense_1_cond_assignvariableop_1_resource>prune_low_magnitude_dense_1/cond/pruning_ops/GatherV2:output:0*
_output_shapes
 *
dtype0á
+prune_low_magnitude_dense_1/cond/group_depsNoOp2^prune_low_magnitude_dense_1/cond/AssignVariableOp4^prune_low_magnitude_dense_1/cond/AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 Ø
)prune_low_magnitude_dense_1/cond/IdentityIdentityRprune_low_magnitude_dense_1_cond_identity_prune_low_magnitude_dense_1_logicaland_1,^prune_low_magnitude_dense_1/cond/group_deps*
T0
*
_output_shapes
: ´
+prune_low_magnitude_dense_1/cond/Identity_1Identity2prune_low_magnitude_dense_1/cond/Identity:output:0&^prune_low_magnitude_dense_1/cond/NoOp*
T0
*
_output_shapes
: 
%prune_low_magnitude_dense_1/cond/NoOpNoOp2^prune_low_magnitude_dense_1/cond/AssignVariableOp4^prune_low_magnitude_dense_1/cond/AssignVariableOp_1=^prune_low_magnitude_dense_1/cond/GreaterEqual/ReadVariableOp:^prune_low_magnitude_dense_1/cond/LessEqual/ReadVariableOp4^prune_low_magnitude_dense_1/cond/Sub/ReadVariableOpR^prune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/ReadVariableOp@^prune_low_magnitude_dense_1/cond/pruning_ops/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "c
+prune_low_magnitude_dense_1_cond_identity_14prune_low_magnitude_dense_1/cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2f
1prune_low_magnitude_dense_1/cond/AssignVariableOp1prune_low_magnitude_dense_1/cond/AssignVariableOp2j
3prune_low_magnitude_dense_1/cond/AssignVariableOp_13prune_low_magnitude_dense_1/cond/AssignVariableOp_12|
<prune_low_magnitude_dense_1/cond/GreaterEqual/ReadVariableOp<prune_low_magnitude_dense_1/cond/GreaterEqual/ReadVariableOp2v
9prune_low_magnitude_dense_1/cond/LessEqual/ReadVariableOp9prune_low_magnitude_dense_1/cond/LessEqual/ReadVariableOp2j
3prune_low_magnitude_dense_1/cond/Sub/ReadVariableOp3prune_low_magnitude_dense_1/cond/Sub/ReadVariableOp2¦
Qprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/ReadVariableOpQprune_low_magnitude_dense_1/cond/polynomial_decay_pruning_schedule/ReadVariableOp2
?prune_low_magnitude_dense_1/cond/pruning_ops/Abs/ReadVariableOp?prune_low_magnitude_dense_1/cond/pruning_ops/Abs/ReadVariableOp:

_output_shapes
: 

Ã
9__inference_prune_low_magnitude_dense_layer_call_fn_27294

inputs
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_25810o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù
Â
.prune_low_magnitude_activation_cond_true_27269\
Xprune_low_magnitude_activation_cond_identity_prune_low_magnitude_activation_logicaland_1
2
.prune_low_magnitude_activation_cond_identity_1
L
.prune_low_magnitude_activation/cond/group_depsNoOp*
_output_shapes
 ä
,prune_low_magnitude_activation/cond/IdentityIdentityXprune_low_magnitude_activation_cond_identity_prune_low_magnitude_activation_logicaland_1/^prune_low_magnitude_activation/cond/group_deps*
T0
*
_output_shapes
: 
.prune_low_magnitude_activation/cond/Identity_1Identity5prune_low_magnitude_activation/cond/Identity:output:0*
T0
*
_output_shapes
: "i
.prune_low_magnitude_activation_cond_identity_17prune_low_magnitude_activation/cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 

_output_shapes
: 
ÿ

3assert_greater_equal_Assert_AssertGuard_false_27872K
Gassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all
V
Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop	I
Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y	6
2assert_greater_equal_assert_assertguard_identity_1
¢.assert_greater_equal/Assert/AssertGuard/Assert
5assert_greater_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.¡
5assert_greater_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:¢
5assert_greater_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = 
5assert_greater_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = Ã
.assert_greater_equal/Assert/AssertGuard/AssertAssertGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all>assert_greater_equal/Assert/AssertGuard/Assert/data_0:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_1:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_2:output:0Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop>assert_greater_equal/Assert/AssertGuard/Assert/data_4:output:0Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y*
T

2		*
_output_shapes
 ×
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all/^assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: É
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp/^assert_greater_equal/Assert/AssertGuard/Assert*"
_acd_function_control_output(*
_output_shapes
 "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2`
.assert_greater_equal/Assert/AssertGuard/Assert.assert_greater_equal/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ÿ

3assert_greater_equal_Assert_AssertGuard_false_26007K
Gassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all
V
Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop	I
Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y	6
2assert_greater_equal_assert_assertguard_identity_1
¢.assert_greater_equal/Assert/AssertGuard/Assert
5assert_greater_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*
valueB BPrune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.¡
5assert_greater_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:¢
5assert_greater_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = 
5assert_greater_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = Ã
.assert_greater_equal/Assert/AssertGuard/AssertAssertGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all>assert_greater_equal/Assert/AssertGuard/Assert/data_0:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_1:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_2:output:0Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop>assert_greater_equal/Assert/AssertGuard/Assert/data_4:output:0Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y*
T

2		*
_output_shapes
 ×
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all/^assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: É
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp/^assert_greater_equal/Assert/AssertGuard/Assert*"
_acd_function_control_output(*
_output_shapes
 "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2`
.assert_greater_equal/Assert/AssertGuard/Assert.assert_greater_equal/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

¥
cond_false_27734
cond_placeholder
cond_placeholder_1
cond_placeholder_2
cond_placeholder_3
cond_identity_logicaland_1

cond_identity_1
'
	cond/NoOpNoOp*
_output_shapes
 b
cond/IdentityIdentitycond_identity_logicaland_1
^cond/NoOp*
T0
*
_output_shapes
: T
cond/Identity_1Identitycond/Identity:output:0*
T0
*
_output_shapes
: "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : :

_output_shapes
: 
ó
þ
E__inference_sequential_layer_call_and_return_conditional_losses_25855

inputs1
prune_low_magnitude_dense_25811:1
prune_low_magnitude_dense_25813:-
prune_low_magnitude_dense_25815:3
!prune_low_magnitude_dense_1_25840:3
!prune_low_magnitude_dense_1_25842:/
!prune_low_magnitude_dense_1_25844:
identity¢1prune_low_magnitude_dense/StatefulPartitionedCall¢3prune_low_magnitude_dense_1/StatefulPartitionedCallÓ
1prune_low_magnitude_dense/StatefulPartitionedCallStatefulPartitionedCallinputsprune_low_magnitude_dense_25811prune_low_magnitude_dense_25813prune_low_magnitude_dense_25815*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_25810
+prune_low_magnitude_dropout/PartitionedCallPartitionedCall:prune_low_magnitude_dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_prune_low_magnitude_dropout_layer_call_and_return_conditional_losses_25823
3prune_low_magnitude_dense_1/StatefulPartitionedCallStatefulPartitionedCall4prune_low_magnitude_dropout/PartitionedCall:output:0!prune_low_magnitude_dense_1_25840!prune_low_magnitude_dense_1_25842!prune_low_magnitude_dense_1_25844*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_25839
.prune_low_magnitude_activation/PartitionedCallPartitionedCall<prune_low_magnitude_dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *b
f]R[
Y__inference_prune_low_magnitude_activation_layer_call_and_return_conditional_losses_25852
IdentityIdentity7prune_low_magnitude_activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
NoOpNoOp2^prune_low_magnitude_dense/StatefulPartitionedCall4^prune_low_magnitude_dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2f
1prune_low_magnitude_dense/StatefulPartitionedCall1prune_low_magnitude_dense/StatefulPartitionedCall2j
3prune_low_magnitude_dense_1/StatefulPartitionedCall3prune_low_magnitude_dense_1/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ô
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_25839

inputs-
mul_readvariableop_resource:/
mul_readvariableop_1_resource:-
biasadd_readvariableop_resource:
identity¢AssignVariableOp¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢Mul/ReadVariableOp¢Mul/ReadVariableOp_1'
	no_updateNoOp*
_output_shapes
 )
no_update_1NoOp*
_output_shapes
 n
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes

:*
dtype0r
Mul/ReadVariableOp_1ReadVariableOpmul_readvariableop_1_resource*
_output_shapes

:*
dtype0m
MulMulMul/ReadVariableOp:value:0Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:
AssignVariableOpAssignVariableOpmul_readvariableop_resourceMul:z:0^Mul/ReadVariableOp*
_output_shapes
 *
dtype0i

group_depsNoOp^AssignVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 e
group_deps_1NoOp^group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 
MatMul/ReadVariableOpReadVariableOpmul_readvariableop_resource^AssignVariableOp*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
NoOpNoOp^AssignVariableOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^Mul/ReadVariableOp^Mul/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2$
AssignVariableOpAssignVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
Mul/ReadVariableOpMul/ReadVariableOp2,
Mul/ReadVariableOp_1Mul/ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§
·
,prune_low_magnitude_dropout_cond_false_27003V
Rprune_low_magnitude_dropout_cond_identity_prune_low_magnitude_dropout_logicaland_1
/
+prune_low_magnitude_dropout_cond_identity_1
C
%prune_low_magnitude_dropout/cond/NoOpNoOp*
_output_shapes
 Ò
)prune_low_magnitude_dropout/cond/IdentityIdentityRprune_low_magnitude_dropout_cond_identity_prune_low_magnitude_dropout_logicaland_1&^prune_low_magnitude_dropout/cond/NoOp*
T0
*
_output_shapes
: 
+prune_low_magnitude_dropout/cond/Identity_1Identity2prune_low_magnitude_dropout/cond/Identity:output:0*
T0
*
_output_shapes
: "c
+prune_low_magnitude_dropout_cond_identity_14prune_low_magnitude_dropout/cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 

_output_shapes
: "L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*É
serving_defaultµ
C
dense_input4
serving_default_dense_input:0ÿÿÿÿÿÿÿÿÿR
prune_low_magnitude_activation0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
__call__
+&call_and_return_all_conditional_losses
_default_save_signature"
_tf_keras_sequential

pruning_vars
	layer
prunable_weights
mask
	threshold
pruning_step
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ì
pruning_vars
	layer
prunable_weights
pruning_step
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer

pruning_vars
	layer
prunable_weights
 mask
!	threshold
"pruning_step
#	variables
$trainable_variables
%regularization_losses
&	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ì
'pruning_vars
	(layer
)prunable_weights
*pruning_step
+	variables
,trainable_variables
-regularization_losses
.	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
£
/iter

0beta_1

1beta_2
	2decay
3learning_rate4m5m6m7m4v5v6v7v"
	optimizer
v
40
51
2
3
4
5
66
77
 8
!9
"10
*11"
trackable_list_wrapper
<
40
51
62
73"
trackable_list_wrapper
 "
trackable_list_wrapper
Î
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
'
=0"
trackable_list_wrapper
½

4kernel
5bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
'
40"
trackable_list_wrapper
0:.(2prune_low_magnitude_dense/mask
-:+ (2#prune_low_magnitude_dense/threshold
.:,	 2&prune_low_magnitude_dense/pruning_step
C
40
51
2
3
4"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
°
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
§
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
0:.	 2(prune_low_magnitude_dropout/pruning_step
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
'
P0"
trackable_list_wrapper
½

6kernel
7bias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
'
60"
trackable_list_wrapper
2:0(2 prune_low_magnitude_dense_1/mask
/:- (2%prune_low_magnitude_dense_1/threshold
0:.	 2(prune_low_magnitude_dense_1/pruning_step
C
60
71
 2
!3
"4"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
°
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
#	variables
$trainable_variables
%regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
§
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
3:1	 2+prune_low_magnitude_activation/pruning_step
'
*0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
+	variables
,trainable_variables
-regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
:2dense/kernel
:2
dense/bias
 :2dense_1/kernel
:2dense_1/bias
X
0
1
2
3
 4
!5
"6
*7"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
6
40
1
2"
trackable_tuple_wrapper
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
°
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
>	variables
?trainable_variables
@regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
5
0
1
2"
trackable_list_wrapper
'
0"
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
°
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
6
60
 1
!2"
trackable_tuple_wrapper
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
°
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
5
 0
!1
"2"
trackable_list_wrapper
'
0"
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
°
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
'
*0"
trackable_list_wrapper
'
(0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	ytotal
	zcount
{	variables
|	keras_api"
_tf_keras_metric
`
	}total
	~count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
.
y0
z1"
trackable_list_wrapper
-
{	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
}0
~1"
trackable_list_wrapper
.
	variables"
_generic_user_object
#:!2Adam/dense/kernel/m
:2Adam/dense/bias/m
%:#2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
#:!2Adam/dense/kernel/v
:2Adam/dense/bias/v
%:#2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
ö2ó
*__inference_sequential_layer_call_fn_25870
*__inference_sequential_layer_call_fn_26695
*__inference_sequential_layer_call_fn_26724
*__inference_sequential_layer_call_fn_26601À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
E__inference_sequential_layer_call_and_return_conditional_losses_26751
E__inference_sequential_layer_call_and_return_conditional_losses_27283
E__inference_sequential_layer_call_and_return_conditional_losses_26621
E__inference_sequential_layer_call_and_return_conditional_losses_26653À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÏBÌ
 __inference__wrapped_model_25788dense_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¶2³
9__inference_prune_low_magnitude_dense_layer_call_fn_27294
9__inference_prune_low_magnitude_dense_layer_call_fn_27309º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ì2é
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_27324
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_27503º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
º2·
;__inference_prune_low_magnitude_dropout_layer_call_fn_27508
;__inference_prune_low_magnitude_dropout_layer_call_fn_27515º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ð2í
V__inference_prune_low_magnitude_dropout_layer_call_and_return_conditional_losses_27520
V__inference_prune_low_magnitude_dropout_layer_call_and_return_conditional_losses_27617º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
º2·
;__inference_prune_low_magnitude_dense_1_layer_call_fn_27628
;__inference_prune_low_magnitude_dense_1_layer_call_fn_27643º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ð2í
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_27657
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_27835º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
À2½
>__inference_prune_low_magnitude_activation_layer_call_fn_27840
>__inference_prune_low_magnitude_activation_layer_call_fn_27847º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ö2ó
Y__inference_prune_low_magnitude_activation_layer_call_and_return_conditional_losses_27852
Y__inference_prune_low_magnitude_activation_layer_call_and_return_conditional_losses_27942º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÎBË
#__inference_signature_wrapper_26678dense_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 Ä
 __inference__wrapped_model_25788456 74¢1
*¢'
%"
dense_inputÿÿÿÿÿÿÿÿÿ
ª "_ª\
Z
prune_low_magnitude_activation85
prune_low_magnitude_activationÿÿÿÿÿÿÿÿÿ¹
Y__inference_prune_low_magnitude_activation_layer_call_and_return_conditional_losses_27852\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
Y__inference_prune_low_magnitude_activation_layer_call_and_return_conditional_losses_27942_*3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
>__inference_prune_low_magnitude_activation_layer_call_fn_27840O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
>__inference_prune_low_magnitude_activation_layer_call_fn_27847R*3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ»
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_27657a6 73¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ½
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_27835c"6 !73¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
;__inference_prune_low_magnitude_dense_1_layer_call_fn_27628T6 73¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
;__inference_prune_low_magnitude_dense_1_layer_call_fn_27643V"6 !73¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¹
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_27324a453¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_27503c453¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
9__inference_prune_low_magnitude_dense_layer_call_fn_27294T453¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
9__inference_prune_low_magnitude_dense_layer_call_fn_27309V453¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¶
V__inference_prune_low_magnitude_dropout_layer_call_and_return_conditional_losses_27520\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¹
V__inference_prune_low_magnitude_dropout_layer_call_and_return_conditional_losses_27617_3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
;__inference_prune_low_magnitude_dropout_layer_call_fn_27508O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
;__inference_prune_low_magnitude_dropout_layer_call_fn_27515R3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¶
E__inference_sequential_layer_call_and_return_conditional_losses_26621m456 7<¢9
2¢/
%"
dense_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
E__inference_sequential_layer_call_and_return_conditional_losses_26653s45"6 !7*<¢9
2¢/
%"
dense_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ±
E__inference_sequential_layer_call_and_return_conditional_losses_26751h456 77¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
E__inference_sequential_layer_call_and_return_conditional_losses_27283n45"6 !7*7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
*__inference_sequential_layer_call_fn_25870`456 7<¢9
2¢/
%"
dense_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
*__inference_sequential_layer_call_fn_26601f45"6 !7*<¢9
2¢/
%"
dense_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
*__inference_sequential_layer_call_fn_26695[456 77¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
*__inference_sequential_layer_call_fn_26724a45"6 !7*7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÖ
#__inference_signature_wrapper_26678®456 7C¢@
¢ 
9ª6
4
dense_input%"
dense_inputÿÿÿÿÿÿÿÿÿ"_ª\
Z
prune_low_magnitude_activation85
prune_low_magnitude_activationÿÿÿÿÿÿÿÿÿ