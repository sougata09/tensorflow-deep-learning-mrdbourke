ў
цЛ
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

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

њ
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%Зб8"&
exponential_avg_factorfloat%  ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
О
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
executor_typestring 
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
 "serve*2.4.12v2.4.0-49-g85c8b2a817f8П

conv2d_94/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*!
shared_nameconv2d_94/kernel
}
$conv2d_94/kernel/Read/ReadVariableOpReadVariableOpconv2d_94/kernel*&
_output_shapes
:
*
dtype0
t
conv2d_94/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameconv2d_94/bias
m
"conv2d_94/bias/Read/ReadVariableOpReadVariableOpconv2d_94/bias*
_output_shapes
:
*
dtype0

conv2d_95/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*!
shared_nameconv2d_95/kernel
}
$conv2d_95/kernel/Read/ReadVariableOpReadVariableOpconv2d_95/kernel*&
_output_shapes
:

*
dtype0
t
conv2d_95/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameconv2d_95/bias
m
"conv2d_95/bias/Read/ReadVariableOpReadVariableOpconv2d_95/bias*
_output_shapes
:
*
dtype0

batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*,
shared_namebatch_normalization_6/gamma

/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes
:
*
dtype0

batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_namebatch_normalization_6/beta

.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes
:
*
dtype0

!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!batch_normalization_6/moving_mean

5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes
:
*
dtype0
Ђ
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*6
shared_name'%batch_normalization_6/moving_variance

9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes
:
*
dtype0

conv2d_96/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*!
shared_nameconv2d_96/kernel
}
$conv2d_96/kernel/Read/ReadVariableOpReadVariableOpconv2d_96/kernel*&
_output_shapes
:

*
dtype0
t
conv2d_96/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameconv2d_96/bias
m
"conv2d_96/bias/Read/ReadVariableOpReadVariableOpconv2d_96/bias*
_output_shapes
:
*
dtype0

conv2d_97/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*!
shared_nameconv2d_97/kernel
}
$conv2d_97/kernel/Read/ReadVariableOpReadVariableOpconv2d_97/kernel*&
_output_shapes
:

*
dtype0
t
conv2d_97/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameconv2d_97/bias
m
"conv2d_97/bias/Read/ReadVariableOpReadVariableOpconv2d_97/bias*
_output_shapes
:
*
dtype0

batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*,
shared_namebatch_normalization_7/gamma

/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes
:
*
dtype0

batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_namebatch_normalization_7/beta

.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes
:
*
dtype0

!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!batch_normalization_7/moving_mean

5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes
:
*
dtype0
Ђ
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*6
shared_name'%batch_normalization_7/moving_variance

9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes
:
*
dtype0

conv2d_98/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*!
shared_nameconv2d_98/kernel
}
$conv2d_98/kernel/Read/ReadVariableOpReadVariableOpconv2d_98/kernel*&
_output_shapes
:

*
dtype0
t
conv2d_98/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameconv2d_98/bias
m
"conv2d_98/bias/Read/ReadVariableOpReadVariableOpconv2d_98/bias*
_output_shapes
:
*
dtype0

conv2d_99/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*!
shared_nameconv2d_99/kernel
}
$conv2d_99/kernel/Read/ReadVariableOpReadVariableOpconv2d_99/kernel*&
_output_shapes
:

*
dtype0
t
conv2d_99/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameconv2d_99/bias
m
"conv2d_99/bias/Read/ReadVariableOpReadVariableOpconv2d_99/bias*
_output_shapes
:
*
dtype0

batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*,
shared_namebatch_normalization_8/gamma

/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*
_output_shapes
:
*
dtype0

batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_namebatch_normalization_8/beta

.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*
_output_shapes
:
*
dtype0

!batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!batch_normalization_8/moving_mean

5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes
:
*
dtype0
Ђ
%batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*6
shared_name'%batch_normalization_8/moving_variance

9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
_output_shapes
:
*
dtype0
|
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
-* 
shared_namedense_26/kernel
u
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel* 
_output_shapes
:
-*
dtype0
s
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_26/bias
l
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes	
:*
dtype0
{
dense_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
* 
shared_namedense_27/kernel
t
#dense_27/kernel/Read/ReadVariableOpReadVariableOpdense_27/kernel*
_output_shapes
:	
*
dtype0
r
dense_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_27/bias
k
!dense_27/bias/Read/ReadVariableOpReadVariableOpdense_27/bias*
_output_shapes
:
*
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
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0

Adam/conv2d_94/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*(
shared_nameAdam/conv2d_94/kernel/m

+Adam/conv2d_94/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_94/kernel/m*&
_output_shapes
:
*
dtype0

Adam/conv2d_94/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/conv2d_94/bias/m
{
)Adam/conv2d_94/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_94/bias/m*
_output_shapes
:
*
dtype0

Adam/conv2d_95/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/conv2d_95/kernel/m

+Adam/conv2d_95/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_95/kernel/m*&
_output_shapes
:

*
dtype0

Adam/conv2d_95/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/conv2d_95/bias/m
{
)Adam/conv2d_95/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_95/bias/m*
_output_shapes
:
*
dtype0

"Adam/batch_normalization_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*3
shared_name$"Adam/batch_normalization_6/gamma/m

6Adam/batch_normalization_6/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_6/gamma/m*
_output_shapes
:
*
dtype0

!Adam/batch_normalization_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!Adam/batch_normalization_6/beta/m

5Adam/batch_normalization_6/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_6/beta/m*
_output_shapes
:
*
dtype0

Adam/conv2d_96/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/conv2d_96/kernel/m

+Adam/conv2d_96/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_96/kernel/m*&
_output_shapes
:

*
dtype0

Adam/conv2d_96/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/conv2d_96/bias/m
{
)Adam/conv2d_96/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_96/bias/m*
_output_shapes
:
*
dtype0

Adam/conv2d_97/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/conv2d_97/kernel/m

+Adam/conv2d_97/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_97/kernel/m*&
_output_shapes
:

*
dtype0

Adam/conv2d_97/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/conv2d_97/bias/m
{
)Adam/conv2d_97/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_97/bias/m*
_output_shapes
:
*
dtype0

"Adam/batch_normalization_7/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*3
shared_name$"Adam/batch_normalization_7/gamma/m

6Adam/batch_normalization_7/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_7/gamma/m*
_output_shapes
:
*
dtype0

!Adam/batch_normalization_7/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!Adam/batch_normalization_7/beta/m

5Adam/batch_normalization_7/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_7/beta/m*
_output_shapes
:
*
dtype0

Adam/conv2d_98/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/conv2d_98/kernel/m

+Adam/conv2d_98/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_98/kernel/m*&
_output_shapes
:

*
dtype0

Adam/conv2d_98/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/conv2d_98/bias/m
{
)Adam/conv2d_98/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_98/bias/m*
_output_shapes
:
*
dtype0

Adam/conv2d_99/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/conv2d_99/kernel/m

+Adam/conv2d_99/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_99/kernel/m*&
_output_shapes
:

*
dtype0

Adam/conv2d_99/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/conv2d_99/bias/m
{
)Adam/conv2d_99/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_99/bias/m*
_output_shapes
:
*
dtype0

"Adam/batch_normalization_8/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*3
shared_name$"Adam/batch_normalization_8/gamma/m

6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/m*
_output_shapes
:
*
dtype0

!Adam/batch_normalization_8/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!Adam/batch_normalization_8/beta/m

5Adam/batch_normalization_8/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/m*
_output_shapes
:
*
dtype0

Adam/dense_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
-*'
shared_nameAdam/dense_26/kernel/m

*Adam/dense_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/m* 
_output_shapes
:
-*
dtype0

Adam/dense_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_26/bias/m
z
(Adam/dense_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*'
shared_nameAdam/dense_27/kernel/m

*Adam/dense_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/m*
_output_shapes
:	
*
dtype0

Adam/dense_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_27/bias/m
y
(Adam/dense_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/m*
_output_shapes
:
*
dtype0

Adam/conv2d_94/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*(
shared_nameAdam/conv2d_94/kernel/v

+Adam/conv2d_94/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_94/kernel/v*&
_output_shapes
:
*
dtype0

Adam/conv2d_94/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/conv2d_94/bias/v
{
)Adam/conv2d_94/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_94/bias/v*
_output_shapes
:
*
dtype0

Adam/conv2d_95/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/conv2d_95/kernel/v

+Adam/conv2d_95/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_95/kernel/v*&
_output_shapes
:

*
dtype0

Adam/conv2d_95/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/conv2d_95/bias/v
{
)Adam/conv2d_95/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_95/bias/v*
_output_shapes
:
*
dtype0

"Adam/batch_normalization_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*3
shared_name$"Adam/batch_normalization_6/gamma/v

6Adam/batch_normalization_6/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_6/gamma/v*
_output_shapes
:
*
dtype0

!Adam/batch_normalization_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!Adam/batch_normalization_6/beta/v

5Adam/batch_normalization_6/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_6/beta/v*
_output_shapes
:
*
dtype0

Adam/conv2d_96/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/conv2d_96/kernel/v

+Adam/conv2d_96/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_96/kernel/v*&
_output_shapes
:

*
dtype0

Adam/conv2d_96/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/conv2d_96/bias/v
{
)Adam/conv2d_96/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_96/bias/v*
_output_shapes
:
*
dtype0

Adam/conv2d_97/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/conv2d_97/kernel/v

+Adam/conv2d_97/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_97/kernel/v*&
_output_shapes
:

*
dtype0

Adam/conv2d_97/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/conv2d_97/bias/v
{
)Adam/conv2d_97/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_97/bias/v*
_output_shapes
:
*
dtype0

"Adam/batch_normalization_7/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*3
shared_name$"Adam/batch_normalization_7/gamma/v

6Adam/batch_normalization_7/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_7/gamma/v*
_output_shapes
:
*
dtype0

!Adam/batch_normalization_7/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!Adam/batch_normalization_7/beta/v

5Adam/batch_normalization_7/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_7/beta/v*
_output_shapes
:
*
dtype0

Adam/conv2d_98/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/conv2d_98/kernel/v

+Adam/conv2d_98/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_98/kernel/v*&
_output_shapes
:

*
dtype0

Adam/conv2d_98/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/conv2d_98/bias/v
{
)Adam/conv2d_98/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_98/bias/v*
_output_shapes
:
*
dtype0

Adam/conv2d_99/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/conv2d_99/kernel/v

+Adam/conv2d_99/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_99/kernel/v*&
_output_shapes
:

*
dtype0

Adam/conv2d_99/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/conv2d_99/bias/v
{
)Adam/conv2d_99/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_99/bias/v*
_output_shapes
:
*
dtype0

"Adam/batch_normalization_8/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*3
shared_name$"Adam/batch_normalization_8/gamma/v

6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/v*
_output_shapes
:
*
dtype0

!Adam/batch_normalization_8/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!Adam/batch_normalization_8/beta/v

5Adam/batch_normalization_8/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/v*
_output_shapes
:
*
dtype0

Adam/dense_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
-*'
shared_nameAdam/dense_26/kernel/v

*Adam/dense_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/v* 
_output_shapes
:
-*
dtype0

Adam/dense_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_26/bias/v
z
(Adam/dense_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*'
shared_nameAdam/dense_27/kernel/v

*Adam/dense_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/v*
_output_shapes
:	
*
dtype0

Adam/dense_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_27/bias/v
y
(Adam/dense_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
Х
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*џ
valueєB№ Bш
и
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer_with_weights-8
layer-10
layer-11
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
 trainable_variables
!	keras_api

"axis
	#gamma
$beta
%moving_mean
&moving_variance
'regularization_losses
(	variables
)trainable_variables
*	keras_api
R
+regularization_losses
,	variables
-trainable_variables
.	keras_api
h

/kernel
0bias
1regularization_losses
2	variables
3trainable_variables
4	keras_api
h

5kernel
6bias
7regularization_losses
8	variables
9trainable_variables
:	keras_api

;axis
	<gamma
=beta
>moving_mean
?moving_variance
@regularization_losses
A	variables
Btrainable_variables
C	keras_api
R
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
h

Hkernel
Ibias
Jregularization_losses
K	variables
Ltrainable_variables
M	keras_api
h

Nkernel
Obias
Pregularization_losses
Q	variables
Rtrainable_variables
S	keras_api

Taxis
	Ugamma
Vbeta
Wmoving_mean
Xmoving_variance
Yregularization_losses
Z	variables
[trainable_variables
\	keras_api
R
]regularization_losses
^	variables
_trainable_variables
`	keras_api
R
aregularization_losses
b	variables
ctrainable_variables
d	keras_api
h

ekernel
fbias
gregularization_losses
h	variables
itrainable_variables
j	keras_api
h

kkernel
lbias
mregularization_losses
n	variables
otrainable_variables
p	keras_api
ј
qiter

rbeta_1

sbeta_2
	tdecay
ulearning_ratemзmиmйmк#mл$mм/mн0mо5mп6mр<mс=mтHmуImфNmхOmцUmчVmшemщfmъkmыlmьvэvюvяv№#vё$vђ/vѓ0vє5vѕ6vі<vї=vјHvљIvњNvћOvќUv§Vvўevџfvkvlv
 
ж
0
1
2
3
#4
$5
%6
&7
/8
09
510
611
<12
=13
>14
?15
H16
I17
N18
O19
U20
V21
W22
X23
e24
f25
k26
l27
І
0
1
2
3
#4
$5
/6
07
58
69
<10
=11
H12
I13
N14
O15
U16
V17
e18
f19
k20
l21
­
regularization_losses
vnon_trainable_variables
wmetrics

xlayers
ylayer_regularization_losses
	variables
trainable_variables
zlayer_metrics
 
\Z
VARIABLE_VALUEconv2d_94/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_94/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
regularization_losses
{non_trainable_variables
|metrics
}layer_regularization_losses

~layers
	variables
trainable_variables
layer_metrics
\Z
VARIABLE_VALUEconv2d_95/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_95/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
В
regularization_losses
non_trainable_variables
metrics
 layer_regularization_losses
layers
	variables
 trainable_variables
layer_metrics
 
fd
VARIABLE_VALUEbatch_normalization_6/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_6/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_6/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_6/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

#0
$1
%2
&3

#0
$1
В
'regularization_losses
non_trainable_variables
metrics
 layer_regularization_losses
layers
(	variables
)trainable_variables
layer_metrics
 
 
 
В
+regularization_losses
non_trainable_variables
metrics
 layer_regularization_losses
layers
,	variables
-trainable_variables
layer_metrics
\Z
VARIABLE_VALUEconv2d_96/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_96/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

/0
01

/0
01
В
1regularization_losses
non_trainable_variables
metrics
 layer_regularization_losses
layers
2	variables
3trainable_variables
layer_metrics
\Z
VARIABLE_VALUEconv2d_97/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_97/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

50
61

50
61
В
7regularization_losses
non_trainable_variables
metrics
 layer_regularization_losses
layers
8	variables
9trainable_variables
layer_metrics
 
fd
VARIABLE_VALUEbatch_normalization_7/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_7/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_7/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_7/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1
>2
?3

<0
=1
В
@regularization_losses
non_trainable_variables
metrics
 layer_regularization_losses
layers
A	variables
Btrainable_variables
layer_metrics
 
 
 
В
Dregularization_losses
non_trainable_variables
metrics
  layer_regularization_losses
Ёlayers
E	variables
Ftrainable_variables
Ђlayer_metrics
\Z
VARIABLE_VALUEconv2d_98/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_98/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

H0
I1

H0
I1
В
Jregularization_losses
Ѓnon_trainable_variables
Єmetrics
 Ѕlayer_regularization_losses
Іlayers
K	variables
Ltrainable_variables
Їlayer_metrics
\Z
VARIABLE_VALUEconv2d_99/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_99/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

N0
O1

N0
O1
В
Pregularization_losses
Јnon_trainable_variables
Љmetrics
 Њlayer_regularization_losses
Ћlayers
Q	variables
Rtrainable_variables
Ќlayer_metrics
 
fd
VARIABLE_VALUEbatch_normalization_8/gamma5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_8/beta4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_8/moving_mean;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_8/moving_variance?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

U0
V1
W2
X3

U0
V1
В
Yregularization_losses
­non_trainable_variables
Ўmetrics
 Џlayer_regularization_losses
Аlayers
Z	variables
[trainable_variables
Бlayer_metrics
 
 
 
В
]regularization_losses
Вnon_trainable_variables
Гmetrics
 Дlayer_regularization_losses
Еlayers
^	variables
_trainable_variables
Жlayer_metrics
 
 
 
В
aregularization_losses
Зnon_trainable_variables
Иmetrics
 Йlayer_regularization_losses
Кlayers
b	variables
ctrainable_variables
Лlayer_metrics
[Y
VARIABLE_VALUEdense_26/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_26/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
 

e0
f1

e0
f1
В
gregularization_losses
Мnon_trainable_variables
Нmetrics
 Оlayer_regularization_losses
Пlayers
h	variables
itrainable_variables
Рlayer_metrics
\Z
VARIABLE_VALUEdense_27/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_27/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 

k0
l1

k0
l1
В
mregularization_losses
Сnon_trainable_variables
Тmetrics
 Уlayer_regularization_losses
Фlayers
n	variables
otrainable_variables
Хlayer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
*
%0
&1
>2
?3
W4
X5

Ц0
Ч1
Ш2
n
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
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

%0
&1
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

>0
?1
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

W0
X1
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
 
 
 
 
8

Щtotal

Ъcount
Ы	variables
Ь	keras_api
I

Эtotal

Юcount
Я
_fn_kwargs
а	variables
б	keras_api
I

вtotal

гcount
д
_fn_kwargs
е	variables
ж	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Щ0
Ъ1

Ы	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Э0
Ю1

а	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

в0
г1

е	variables
}
VARIABLE_VALUEAdam/conv2d_94/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_94/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_95/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_95/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_6/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_6/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_96/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_96/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_97/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_97/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_7/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_7/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_98/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_98/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_99/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_99/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_8/gamma/mQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_8/beta/mPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_26/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_26/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_27/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_27/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_94/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_94/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_95/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_95/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_6/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_6/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_96/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_96/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_97/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_97/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_7/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_7/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_98/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_98/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_99/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_99/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_8/gamma/vQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_8/beta/vPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_26/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_26/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_27/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_27/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_20Placeholder*1
_output_shapes
:џџџџџџџџџрр*
dtype0*&
shape:џџџџџџџџџрр

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_20conv2d_94/kernelconv2d_94/biasconv2d_95/kernelconv2d_95/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_96/kernelconv2d_96/biasconv2d_97/kernelconv2d_97/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_98/kernelconv2d_98/biasconv2d_99/kernelconv2d_99/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_variancedense_26/kerneldense_26/biasdense_27/kerneldense_27/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_106019
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_94/kernel/Read/ReadVariableOp"conv2d_94/bias/Read/ReadVariableOp$conv2d_95/kernel/Read/ReadVariableOp"conv2d_95/bias/Read/ReadVariableOp/batch_normalization_6/gamma/Read/ReadVariableOp.batch_normalization_6/beta/Read/ReadVariableOp5batch_normalization_6/moving_mean/Read/ReadVariableOp9batch_normalization_6/moving_variance/Read/ReadVariableOp$conv2d_96/kernel/Read/ReadVariableOp"conv2d_96/bias/Read/ReadVariableOp$conv2d_97/kernel/Read/ReadVariableOp"conv2d_97/bias/Read/ReadVariableOp/batch_normalization_7/gamma/Read/ReadVariableOp.batch_normalization_7/beta/Read/ReadVariableOp5batch_normalization_7/moving_mean/Read/ReadVariableOp9batch_normalization_7/moving_variance/Read/ReadVariableOp$conv2d_98/kernel/Read/ReadVariableOp"conv2d_98/bias/Read/ReadVariableOp$conv2d_99/kernel/Read/ReadVariableOp"conv2d_99/bias/Read/ReadVariableOp/batch_normalization_8/gamma/Read/ReadVariableOp.batch_normalization_8/beta/Read/ReadVariableOp5batch_normalization_8/moving_mean/Read/ReadVariableOp9batch_normalization_8/moving_variance/Read/ReadVariableOp#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOp#dense_27/kernel/Read/ReadVariableOp!dense_27/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp+Adam/conv2d_94/kernel/m/Read/ReadVariableOp)Adam/conv2d_94/bias/m/Read/ReadVariableOp+Adam/conv2d_95/kernel/m/Read/ReadVariableOp)Adam/conv2d_95/bias/m/Read/ReadVariableOp6Adam/batch_normalization_6/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_6/beta/m/Read/ReadVariableOp+Adam/conv2d_96/kernel/m/Read/ReadVariableOp)Adam/conv2d_96/bias/m/Read/ReadVariableOp+Adam/conv2d_97/kernel/m/Read/ReadVariableOp)Adam/conv2d_97/bias/m/Read/ReadVariableOp6Adam/batch_normalization_7/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_7/beta/m/Read/ReadVariableOp+Adam/conv2d_98/kernel/m/Read/ReadVariableOp)Adam/conv2d_98/bias/m/Read/ReadVariableOp+Adam/conv2d_99/kernel/m/Read/ReadVariableOp)Adam/conv2d_99/bias/m/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_8/beta/m/Read/ReadVariableOp*Adam/dense_26/kernel/m/Read/ReadVariableOp(Adam/dense_26/bias/m/Read/ReadVariableOp*Adam/dense_27/kernel/m/Read/ReadVariableOp(Adam/dense_27/bias/m/Read/ReadVariableOp+Adam/conv2d_94/kernel/v/Read/ReadVariableOp)Adam/conv2d_94/bias/v/Read/ReadVariableOp+Adam/conv2d_95/kernel/v/Read/ReadVariableOp)Adam/conv2d_95/bias/v/Read/ReadVariableOp6Adam/batch_normalization_6/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_6/beta/v/Read/ReadVariableOp+Adam/conv2d_96/kernel/v/Read/ReadVariableOp)Adam/conv2d_96/bias/v/Read/ReadVariableOp+Adam/conv2d_97/kernel/v/Read/ReadVariableOp)Adam/conv2d_97/bias/v/Read/ReadVariableOp6Adam/batch_normalization_7/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_7/beta/v/Read/ReadVariableOp+Adam/conv2d_98/kernel/v/Read/ReadVariableOp)Adam/conv2d_98/bias/v/Read/ReadVariableOp+Adam/conv2d_99/kernel/v/Read/ReadVariableOp)Adam/conv2d_99/bias/v/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_8/beta/v/Read/ReadVariableOp*Adam/dense_26/kernel/v/Read/ReadVariableOp(Adam/dense_26/bias/v/Read/ReadVariableOp*Adam/dense_27/kernel/v/Read/ReadVariableOp(Adam/dense_27/bias/v/Read/ReadVariableOpConst*`
TinY
W2U	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_107188

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_94/kernelconv2d_94/biasconv2d_95/kernelconv2d_95/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_96/kernelconv2d_96/biasconv2d_97/kernelconv2d_97/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_98/kernelconv2d_98/biasconv2d_99/kernelconv2d_99/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_variancedense_26/kerneldense_26/biasdense_27/kerneldense_27/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2Adam/conv2d_94/kernel/mAdam/conv2d_94/bias/mAdam/conv2d_95/kernel/mAdam/conv2d_95/bias/m"Adam/batch_normalization_6/gamma/m!Adam/batch_normalization_6/beta/mAdam/conv2d_96/kernel/mAdam/conv2d_96/bias/mAdam/conv2d_97/kernel/mAdam/conv2d_97/bias/m"Adam/batch_normalization_7/gamma/m!Adam/batch_normalization_7/beta/mAdam/conv2d_98/kernel/mAdam/conv2d_98/bias/mAdam/conv2d_99/kernel/mAdam/conv2d_99/bias/m"Adam/batch_normalization_8/gamma/m!Adam/batch_normalization_8/beta/mAdam/dense_26/kernel/mAdam/dense_26/bias/mAdam/dense_27/kernel/mAdam/dense_27/bias/mAdam/conv2d_94/kernel/vAdam/conv2d_94/bias/vAdam/conv2d_95/kernel/vAdam/conv2d_95/bias/v"Adam/batch_normalization_6/gamma/v!Adam/batch_normalization_6/beta/vAdam/conv2d_96/kernel/vAdam/conv2d_96/bias/vAdam/conv2d_97/kernel/vAdam/conv2d_97/bias/v"Adam/batch_normalization_7/gamma/v!Adam/batch_normalization_7/beta/vAdam/conv2d_98/kernel/vAdam/conv2d_98/bias/vAdam/conv2d_99/kernel/vAdam/conv2d_99/bias/v"Adam/batch_normalization_8/gamma/v!Adam/batch_normalization_8/beta/vAdam/dense_26/kernel/vAdam/dense_26/bias/vAdam/dense_27/kernel/vAdam/dense_27/bias/v*_
TinX
V2T*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_107447Рд
м

о
E__inference_conv2d_95_layer_call_and_return_conditional_losses_105185

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOpІ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџмм
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџмм
2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџмм
2
ReluЁ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџмм
2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџоо
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџоо

 
_user_specified_nameinputs
ЙN


^__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_and_return_conditional_losses_105889

inputs
conv2d_94_105817
conv2d_94_105819
conv2d_95_105822
conv2d_95_105824 
batch_normalization_6_105827 
batch_normalization_6_105829 
batch_normalization_6_105831 
batch_normalization_6_105833
conv2d_96_105837
conv2d_96_105839
conv2d_97_105842
conv2d_97_105844 
batch_normalization_7_105847 
batch_normalization_7_105849 
batch_normalization_7_105851 
batch_normalization_7_105853
conv2d_98_105857
conv2d_98_105859
conv2d_99_105862
conv2d_99_105864 
batch_normalization_8_105867 
batch_normalization_8_105869 
batch_normalization_8_105871 
batch_normalization_8_105873
dense_26_105878
dense_26_105880
dense_27_105883
dense_27_105885
identityЂ-batch_normalization_6/StatefulPartitionedCallЂ-batch_normalization_7/StatefulPartitionedCallЂ-batch_normalization_8/StatefulPartitionedCallЂ!conv2d_94/StatefulPartitionedCallЂ!conv2d_95/StatefulPartitionedCallЂ!conv2d_96/StatefulPartitionedCallЂ!conv2d_97/StatefulPartitionedCallЂ!conv2d_98/StatefulPartitionedCallЂ!conv2d_99/StatefulPartitionedCallЂ dense_26/StatefulPartitionedCallЂ dense_27/StatefulPartitionedCallІ
!conv2d_94/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_94_105817conv2d_94_105819*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџоо
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_94_layer_call_and_return_conditional_losses_1051582#
!conv2d_94/StatefulPartitionedCallЪ
!conv2d_95/StatefulPartitionedCallStatefulPartitionedCall*conv2d_94/StatefulPartitionedCall:output:0conv2d_95_105822conv2d_95_105824*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџмм
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_95_layer_call_and_return_conditional_losses_1051852#
!conv2d_95/StatefulPartitionedCallЦ
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall*conv2d_95/StatefulPartitionedCall:output:0batch_normalization_6_105827batch_normalization_6_105829batch_normalization_6_105831batch_normalization_6_105833*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџмм
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1052382/
-batch_normalization_6/StatefulPartitionedCallЇ
 max_pooling2d_47/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџnn
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_1049052"
 max_pooling2d_47/PartitionedCallЧ
!conv2d_96/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_47/PartitionedCall:output:0conv2d_96_105837conv2d_96_105839*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџll
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_96_layer_call_and_return_conditional_losses_1052862#
!conv2d_96/StatefulPartitionedCallШ
!conv2d_97/StatefulPartitionedCallStatefulPartitionedCall*conv2d_96/StatefulPartitionedCall:output:0conv2d_97_105842conv2d_97_105844*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџjj
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_97_layer_call_and_return_conditional_losses_1053132#
!conv2d_97/StatefulPartitionedCallФ
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall*conv2d_97/StatefulPartitionedCall:output:0batch_normalization_7_105847batch_normalization_7_105849batch_normalization_7_105851batch_normalization_7_105853*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџjj
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1053662/
-batch_normalization_7/StatefulPartitionedCallЇ
 max_pooling2d_48/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ55
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_1050212"
 max_pooling2d_48/PartitionedCallЧ
!conv2d_98/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_48/PartitionedCall:output:0conv2d_98_105857conv2d_98_105859*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ33
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_98_layer_call_and_return_conditional_losses_1054142#
!conv2d_98/StatefulPartitionedCallШ
!conv2d_99/StatefulPartitionedCallStatefulPartitionedCall*conv2d_98/StatefulPartitionedCall:output:0conv2d_99_105862conv2d_99_105864*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ11
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_99_layer_call_and_return_conditional_losses_1054412#
!conv2d_99/StatefulPartitionedCallФ
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall*conv2d_99/StatefulPartitionedCall:output:0batch_normalization_8_105867batch_normalization_8_105869batch_normalization_8_105871batch_normalization_8_105873*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ11
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_1054942/
-batch_normalization_8/StatefulPartitionedCallЇ
 max_pooling2d_49/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_1051372"
 max_pooling2d_49/PartitionedCall
flatten_19/PartitionedCallPartitionedCall)max_pooling2d_49/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ-* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_19_layer_call_and_return_conditional_losses_1055372
flatten_19/PartitionedCallЕ
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_26_105878dense_26_105880*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_1055562"
 dense_26/StatefulPartitionedCallК
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_105883dense_27_105885*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_1055832"
 dense_27/StatefulPartitionedCallЋ
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall"^conv2d_94/StatefulPartitionedCall"^conv2d_95/StatefulPartitionedCall"^conv2d_96/StatefulPartitionedCall"^conv2d_97/StatefulPartitionedCall"^conv2d_98/StatefulPartitionedCall"^conv2d_99/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*Ђ
_input_shapes
:џџџџџџџџџрр::::::::::::::::::::::::::::2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2F
!conv2d_94/StatefulPartitionedCall!conv2d_94/StatefulPartitionedCall2F
!conv2d_95/StatefulPartitionedCall!conv2d_95/StatefulPartitionedCall2F
!conv2d_96/StatefulPartitionedCall!conv2d_96/StatefulPartitionedCall2F
!conv2d_97/StatefulPartitionedCall!conv2d_97/StatefulPartitionedCall2F
!conv2d_98/StatefulPartitionedCall!conv2d_98/StatefulPartitionedCall2F
!conv2d_99/StatefulPartitionedCall!conv2d_99/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs
Э

Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_104857

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
:
:
:
:
:*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
_user_specified_nameinputs
Э

Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_104973

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
:
:
:
:
:*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
_user_specified_nameinputs
Э

Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_106589

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
:
:
:
:
:*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
_user_specified_nameinputs


*__inference_conv2d_94_layer_call_fn_106381

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџоо
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_94_layer_call_and_return_conditional_losses_1051582
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:џџџџџџџџџоо
2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџрр::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs
и
Љ
6__inference_batch_normalization_7_layer_call_fn_106684

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџjj
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1053482
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџjj
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџjj
::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџjj

 
_user_specified_nameinputs


Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_106653

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1и
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџjj
:
:
:
:
:*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1ў
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:џџџџџџџџџjj
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџjj
::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџjj

 
_user_specified_nameinputs
ПN
Ё

^__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_and_return_conditional_losses_105675
input_20
conv2d_94_105603
conv2d_94_105605
conv2d_95_105608
conv2d_95_105610 
batch_normalization_6_105613 
batch_normalization_6_105615 
batch_normalization_6_105617 
batch_normalization_6_105619
conv2d_96_105623
conv2d_96_105625
conv2d_97_105628
conv2d_97_105630 
batch_normalization_7_105633 
batch_normalization_7_105635 
batch_normalization_7_105637 
batch_normalization_7_105639
conv2d_98_105643
conv2d_98_105645
conv2d_99_105648
conv2d_99_105650 
batch_normalization_8_105653 
batch_normalization_8_105655 
batch_normalization_8_105657 
batch_normalization_8_105659
dense_26_105664
dense_26_105666
dense_27_105669
dense_27_105671
identityЂ-batch_normalization_6/StatefulPartitionedCallЂ-batch_normalization_7/StatefulPartitionedCallЂ-batch_normalization_8/StatefulPartitionedCallЂ!conv2d_94/StatefulPartitionedCallЂ!conv2d_95/StatefulPartitionedCallЂ!conv2d_96/StatefulPartitionedCallЂ!conv2d_97/StatefulPartitionedCallЂ!conv2d_98/StatefulPartitionedCallЂ!conv2d_99/StatefulPartitionedCallЂ dense_26/StatefulPartitionedCallЂ dense_27/StatefulPartitionedCallЈ
!conv2d_94/StatefulPartitionedCallStatefulPartitionedCallinput_20conv2d_94_105603conv2d_94_105605*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџоо
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_94_layer_call_and_return_conditional_losses_1051582#
!conv2d_94/StatefulPartitionedCallЪ
!conv2d_95/StatefulPartitionedCallStatefulPartitionedCall*conv2d_94/StatefulPartitionedCall:output:0conv2d_95_105608conv2d_95_105610*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџмм
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_95_layer_call_and_return_conditional_losses_1051852#
!conv2d_95/StatefulPartitionedCallЦ
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall*conv2d_95/StatefulPartitionedCall:output:0batch_normalization_6_105613batch_normalization_6_105615batch_normalization_6_105617batch_normalization_6_105619*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџмм
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1052382/
-batch_normalization_6/StatefulPartitionedCallЇ
 max_pooling2d_47/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџnn
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_1049052"
 max_pooling2d_47/PartitionedCallЧ
!conv2d_96/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_47/PartitionedCall:output:0conv2d_96_105623conv2d_96_105625*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџll
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_96_layer_call_and_return_conditional_losses_1052862#
!conv2d_96/StatefulPartitionedCallШ
!conv2d_97/StatefulPartitionedCallStatefulPartitionedCall*conv2d_96/StatefulPartitionedCall:output:0conv2d_97_105628conv2d_97_105630*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџjj
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_97_layer_call_and_return_conditional_losses_1053132#
!conv2d_97/StatefulPartitionedCallФ
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall*conv2d_97/StatefulPartitionedCall:output:0batch_normalization_7_105633batch_normalization_7_105635batch_normalization_7_105637batch_normalization_7_105639*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџjj
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1053662/
-batch_normalization_7/StatefulPartitionedCallЇ
 max_pooling2d_48/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ55
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_1050212"
 max_pooling2d_48/PartitionedCallЧ
!conv2d_98/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_48/PartitionedCall:output:0conv2d_98_105643conv2d_98_105645*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ33
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_98_layer_call_and_return_conditional_losses_1054142#
!conv2d_98/StatefulPartitionedCallШ
!conv2d_99/StatefulPartitionedCallStatefulPartitionedCall*conv2d_98/StatefulPartitionedCall:output:0conv2d_99_105648conv2d_99_105650*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ11
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_99_layer_call_and_return_conditional_losses_1054412#
!conv2d_99/StatefulPartitionedCallФ
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall*conv2d_99/StatefulPartitionedCall:output:0batch_normalization_8_105653batch_normalization_8_105655batch_normalization_8_105657batch_normalization_8_105659*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ11
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_1054942/
-batch_normalization_8/StatefulPartitionedCallЇ
 max_pooling2d_49/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_1051372"
 max_pooling2d_49/PartitionedCall
flatten_19/PartitionedCallPartitionedCall)max_pooling2d_49/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ-* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_19_layer_call_and_return_conditional_losses_1055372
flatten_19/PartitionedCallЕ
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_26_105664dense_26_105666*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_1055562"
 dense_26/StatefulPartitionedCallК
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_105669dense_27_105671*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_1055832"
 dense_27/StatefulPartitionedCallЋ
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall"^conv2d_94/StatefulPartitionedCall"^conv2d_95/StatefulPartitionedCall"^conv2d_96/StatefulPartitionedCall"^conv2d_97/StatefulPartitionedCall"^conv2d_98/StatefulPartitionedCall"^conv2d_99/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*Ђ
_input_shapes
:џџџџџџџџџрр::::::::::::::::::::::::::::2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2F
!conv2d_94/StatefulPartitionedCall!conv2d_94/StatefulPartitionedCall2F
!conv2d_95/StatefulPartitionedCall!conv2d_95/StatefulPartitionedCall2F
!conv2d_96/StatefulPartitionedCall!conv2d_96/StatefulPartitionedCall2F
!conv2d_97/StatefulPartitionedCall!conv2d_97/StatefulPartitionedCall2F
!conv2d_98/StatefulPartitionedCall!conv2d_98/StatefulPartitionedCall2F
!conv2d_99/StatefulPartitionedCall!conv2d_99/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџрр
"
_user_specified_name
input_20
ГN


^__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_and_return_conditional_losses_105753

inputs
conv2d_94_105681
conv2d_94_105683
conv2d_95_105686
conv2d_95_105688 
batch_normalization_6_105691 
batch_normalization_6_105693 
batch_normalization_6_105695 
batch_normalization_6_105697
conv2d_96_105701
conv2d_96_105703
conv2d_97_105706
conv2d_97_105708 
batch_normalization_7_105711 
batch_normalization_7_105713 
batch_normalization_7_105715 
batch_normalization_7_105717
conv2d_98_105721
conv2d_98_105723
conv2d_99_105726
conv2d_99_105728 
batch_normalization_8_105731 
batch_normalization_8_105733 
batch_normalization_8_105735 
batch_normalization_8_105737
dense_26_105742
dense_26_105744
dense_27_105747
dense_27_105749
identityЂ-batch_normalization_6/StatefulPartitionedCallЂ-batch_normalization_7/StatefulPartitionedCallЂ-batch_normalization_8/StatefulPartitionedCallЂ!conv2d_94/StatefulPartitionedCallЂ!conv2d_95/StatefulPartitionedCallЂ!conv2d_96/StatefulPartitionedCallЂ!conv2d_97/StatefulPartitionedCallЂ!conv2d_98/StatefulPartitionedCallЂ!conv2d_99/StatefulPartitionedCallЂ dense_26/StatefulPartitionedCallЂ dense_27/StatefulPartitionedCallІ
!conv2d_94/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_94_105681conv2d_94_105683*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџоо
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_94_layer_call_and_return_conditional_losses_1051582#
!conv2d_94/StatefulPartitionedCallЪ
!conv2d_95/StatefulPartitionedCallStatefulPartitionedCall*conv2d_94/StatefulPartitionedCall:output:0conv2d_95_105686conv2d_95_105688*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџмм
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_95_layer_call_and_return_conditional_losses_1051852#
!conv2d_95/StatefulPartitionedCallФ
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall*conv2d_95/StatefulPartitionedCall:output:0batch_normalization_6_105691batch_normalization_6_105693batch_normalization_6_105695batch_normalization_6_105697*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџмм
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1052202/
-batch_normalization_6/StatefulPartitionedCallЇ
 max_pooling2d_47/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџnn
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_1049052"
 max_pooling2d_47/PartitionedCallЧ
!conv2d_96/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_47/PartitionedCall:output:0conv2d_96_105701conv2d_96_105703*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџll
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_96_layer_call_and_return_conditional_losses_1052862#
!conv2d_96/StatefulPartitionedCallШ
!conv2d_97/StatefulPartitionedCallStatefulPartitionedCall*conv2d_96/StatefulPartitionedCall:output:0conv2d_97_105706conv2d_97_105708*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџjj
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_97_layer_call_and_return_conditional_losses_1053132#
!conv2d_97/StatefulPartitionedCallТ
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall*conv2d_97/StatefulPartitionedCall:output:0batch_normalization_7_105711batch_normalization_7_105713batch_normalization_7_105715batch_normalization_7_105717*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџjj
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1053482/
-batch_normalization_7/StatefulPartitionedCallЇ
 max_pooling2d_48/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ55
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_1050212"
 max_pooling2d_48/PartitionedCallЧ
!conv2d_98/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_48/PartitionedCall:output:0conv2d_98_105721conv2d_98_105723*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ33
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_98_layer_call_and_return_conditional_losses_1054142#
!conv2d_98/StatefulPartitionedCallШ
!conv2d_99/StatefulPartitionedCallStatefulPartitionedCall*conv2d_98/StatefulPartitionedCall:output:0conv2d_99_105726conv2d_99_105728*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ11
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_99_layer_call_and_return_conditional_losses_1054412#
!conv2d_99/StatefulPartitionedCallТ
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall*conv2d_99/StatefulPartitionedCall:output:0batch_normalization_8_105731batch_normalization_8_105733batch_normalization_8_105735batch_normalization_8_105737*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ11
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_1054762/
-batch_normalization_8/StatefulPartitionedCallЇ
 max_pooling2d_49/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_1051372"
 max_pooling2d_49/PartitionedCall
flatten_19/PartitionedCallPartitionedCall)max_pooling2d_49/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ-* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_19_layer_call_and_return_conditional_losses_1055372
flatten_19/PartitionedCallЕ
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_26_105742dense_26_105744*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_1055562"
 dense_26/StatefulPartitionedCallК
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_105747dense_27_105749*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_1055832"
 dense_27/StatefulPartitionedCallЋ
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall"^conv2d_94/StatefulPartitionedCall"^conv2d_95/StatefulPartitionedCall"^conv2d_96/StatefulPartitionedCall"^conv2d_97/StatefulPartitionedCall"^conv2d_98/StatefulPartitionedCall"^conv2d_99/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*Ђ
_input_shapes
:џџџџџџџџџрр::::::::::::::::::::::::::::2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2F
!conv2d_94/StatefulPartitionedCall!conv2d_94/StatefulPartitionedCall2F
!conv2d_95/StatefulPartitionedCall!conv2d_95/StatefulPartitionedCall2F
!conv2d_96/StatefulPartitionedCall!conv2d_96/StatefulPartitionedCall2F
!conv2d_97/StatefulPartitionedCall!conv2d_97/StatefulPartitionedCall2F
!conv2d_98/StatefulPartitionedCall!conv2d_98/StatefulPartitionedCall2F
!conv2d_99/StatefulPartitionedCall!conv2d_99/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs
р
Љ
6__inference_batch_normalization_6_layer_call_fn_106452

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџмм
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1052202
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:џџџџџџџџџмм
2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:џџџџџџџџџмм
::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџмм

 
_user_specified_nameinputs
Ђ
Љ
6__inference_batch_normalization_7_layer_call_fn_106633

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1050042
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
_user_specified_nameinputs

h
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_105137

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ђ
Љ
6__inference_batch_normalization_8_layer_call_fn_106801

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_1051202
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
_user_specified_nameinputs
Т
Ё
^__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_and_return_conditional_losses_106239

inputs,
(conv2d_94_conv2d_readvariableop_resource-
)conv2d_94_biasadd_readvariableop_resource,
(conv2d_95_conv2d_readvariableop_resource-
)conv2d_95_biasadd_readvariableop_resource1
-batch_normalization_6_readvariableop_resource3
/batch_normalization_6_readvariableop_1_resourceB
>batch_normalization_6_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_96_conv2d_readvariableop_resource-
)conv2d_96_biasadd_readvariableop_resource,
(conv2d_97_conv2d_readvariableop_resource-
)conv2d_97_biasadd_readvariableop_resource1
-batch_normalization_7_readvariableop_resource3
/batch_normalization_7_readvariableop_1_resourceB
>batch_normalization_7_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_98_conv2d_readvariableop_resource-
)conv2d_98_biasadd_readvariableop_resource,
(conv2d_99_conv2d_readvariableop_resource-
)conv2d_99_biasadd_readvariableop_resource1
-batch_normalization_8_readvariableop_resource3
/batch_normalization_8_readvariableop_1_resourceB
>batch_normalization_8_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource+
'dense_27_matmul_readvariableop_resource,
(dense_27_biasadd_readvariableop_resource
identityЂ5batch_normalization_6/FusedBatchNormV3/ReadVariableOpЂ7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Ђ$batch_normalization_6/ReadVariableOpЂ&batch_normalization_6/ReadVariableOp_1Ђ5batch_normalization_7/FusedBatchNormV3/ReadVariableOpЂ7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Ђ$batch_normalization_7/ReadVariableOpЂ&batch_normalization_7/ReadVariableOp_1Ђ5batch_normalization_8/FusedBatchNormV3/ReadVariableOpЂ7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Ђ$batch_normalization_8/ReadVariableOpЂ&batch_normalization_8/ReadVariableOp_1Ђ conv2d_94/BiasAdd/ReadVariableOpЂconv2d_94/Conv2D/ReadVariableOpЂ conv2d_95/BiasAdd/ReadVariableOpЂconv2d_95/Conv2D/ReadVariableOpЂ conv2d_96/BiasAdd/ReadVariableOpЂconv2d_96/Conv2D/ReadVariableOpЂ conv2d_97/BiasAdd/ReadVariableOpЂconv2d_97/Conv2D/ReadVariableOpЂ conv2d_98/BiasAdd/ReadVariableOpЂconv2d_98/Conv2D/ReadVariableOpЂ conv2d_99/BiasAdd/ReadVariableOpЂconv2d_99/Conv2D/ReadVariableOpЂdense_26/BiasAdd/ReadVariableOpЂdense_26/MatMul/ReadVariableOpЂdense_27/BiasAdd/ReadVariableOpЂdense_27/MatMul/ReadVariableOpГ
conv2d_94/Conv2D/ReadVariableOpReadVariableOp(conv2d_94_conv2d_readvariableop_resource*&
_output_shapes
:
*
dtype02!
conv2d_94/Conv2D/ReadVariableOpФ
conv2d_94/Conv2DConv2Dinputs'conv2d_94/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџоо
*
paddingVALID*
strides
2
conv2d_94/Conv2DЊ
 conv2d_94/BiasAdd/ReadVariableOpReadVariableOp)conv2d_94_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 conv2d_94/BiasAdd/ReadVariableOpВ
conv2d_94/BiasAddBiasAddconv2d_94/Conv2D:output:0(conv2d_94/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2
conv2d_94/BiasAdd
conv2d_94/ReluReluconv2d_94/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2
conv2d_94/ReluГ
conv2d_95/Conv2D/ReadVariableOpReadVariableOp(conv2d_95_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_95/Conv2D/ReadVariableOpк
conv2d_95/Conv2DConv2Dconv2d_94/Relu:activations:0'conv2d_95/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџмм
*
paddingVALID*
strides
2
conv2d_95/Conv2DЊ
 conv2d_95/BiasAdd/ReadVariableOpReadVariableOp)conv2d_95_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 conv2d_95/BiasAdd/ReadVariableOpВ
conv2d_95/BiasAddBiasAddconv2d_95/Conv2D:output:0(conv2d_95/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџмм
2
conv2d_95/BiasAdd
conv2d_95/ReluReluconv2d_95/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџмм
2
conv2d_95/ReluЖ
$batch_normalization_6/ReadVariableOpReadVariableOp-batch_normalization_6_readvariableop_resource*
_output_shapes
:
*
dtype02&
$batch_normalization_6/ReadVariableOpМ
&batch_normalization_6/ReadVariableOp_1ReadVariableOp/batch_normalization_6_readvariableop_1_resource*
_output_shapes
:
*
dtype02(
&batch_normalization_6/ReadVariableOp_1щ
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype027
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype029
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ц
&batch_normalization_6/FusedBatchNormV3FusedBatchNormV3conv2d_95/Relu:activations:0,batch_normalization_6/ReadVariableOp:value:0.batch_normalization_6/ReadVariableOp_1:value:0=batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:џџџџџџџџџмм
:
:
:
:
:*
epsilon%o:*
is_training( 2(
&batch_normalization_6/FusedBatchNormV3и
max_pooling2d_47/MaxPoolMaxPool*batch_normalization_6/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџnn
*
ksize
*
paddingVALID*
strides
2
max_pooling2d_47/MaxPoolГ
conv2d_96/Conv2D/ReadVariableOpReadVariableOp(conv2d_96_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_96/Conv2D/ReadVariableOpн
conv2d_96/Conv2DConv2D!max_pooling2d_47/MaxPool:output:0'conv2d_96/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџll
*
paddingVALID*
strides
2
conv2d_96/Conv2DЊ
 conv2d_96/BiasAdd/ReadVariableOpReadVariableOp)conv2d_96_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 conv2d_96/BiasAdd/ReadVariableOpА
conv2d_96/BiasAddBiasAddconv2d_96/Conv2D:output:0(conv2d_96/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџll
2
conv2d_96/BiasAdd~
conv2d_96/ReluReluconv2d_96/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџll
2
conv2d_96/ReluГ
conv2d_97/Conv2D/ReadVariableOpReadVariableOp(conv2d_97_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_97/Conv2D/ReadVariableOpи
conv2d_97/Conv2DConv2Dconv2d_96/Relu:activations:0'conv2d_97/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџjj
*
paddingVALID*
strides
2
conv2d_97/Conv2DЊ
 conv2d_97/BiasAdd/ReadVariableOpReadVariableOp)conv2d_97_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 conv2d_97/BiasAdd/ReadVariableOpА
conv2d_97/BiasAddBiasAddconv2d_97/Conv2D:output:0(conv2d_97/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџjj
2
conv2d_97/BiasAdd~
conv2d_97/ReluReluconv2d_97/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџjj
2
conv2d_97/ReluЖ
$batch_normalization_7/ReadVariableOpReadVariableOp-batch_normalization_7_readvariableop_resource*
_output_shapes
:
*
dtype02&
$batch_normalization_7/ReadVariableOpМ
&batch_normalization_7/ReadVariableOp_1ReadVariableOp/batch_normalization_7_readvariableop_1_resource*
_output_shapes
:
*
dtype02(
&batch_normalization_7/ReadVariableOp_1щ
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype027
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype029
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ф
&batch_normalization_7/FusedBatchNormV3FusedBatchNormV3conv2d_97/Relu:activations:0,batch_normalization_7/ReadVariableOp:value:0.batch_normalization_7/ReadVariableOp_1:value:0=batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџjj
:
:
:
:
:*
epsilon%o:*
is_training( 2(
&batch_normalization_7/FusedBatchNormV3и
max_pooling2d_48/MaxPoolMaxPool*batch_normalization_7/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ55
*
ksize
*
paddingVALID*
strides
2
max_pooling2d_48/MaxPoolГ
conv2d_98/Conv2D/ReadVariableOpReadVariableOp(conv2d_98_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_98/Conv2D/ReadVariableOpн
conv2d_98/Conv2DConv2D!max_pooling2d_48/MaxPool:output:0'conv2d_98/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ33
*
paddingVALID*
strides
2
conv2d_98/Conv2DЊ
 conv2d_98/BiasAdd/ReadVariableOpReadVariableOp)conv2d_98_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 conv2d_98/BiasAdd/ReadVariableOpА
conv2d_98/BiasAddBiasAddconv2d_98/Conv2D:output:0(conv2d_98/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ33
2
conv2d_98/BiasAdd~
conv2d_98/ReluReluconv2d_98/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ33
2
conv2d_98/ReluГ
conv2d_99/Conv2D/ReadVariableOpReadVariableOp(conv2d_99_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_99/Conv2D/ReadVariableOpи
conv2d_99/Conv2DConv2Dconv2d_98/Relu:activations:0'conv2d_99/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ11
*
paddingVALID*
strides
2
conv2d_99/Conv2DЊ
 conv2d_99/BiasAdd/ReadVariableOpReadVariableOp)conv2d_99_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 conv2d_99/BiasAdd/ReadVariableOpА
conv2d_99/BiasAddBiasAddconv2d_99/Conv2D:output:0(conv2d_99/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ11
2
conv2d_99/BiasAdd~
conv2d_99/ReluReluconv2d_99/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ11
2
conv2d_99/ReluЖ
$batch_normalization_8/ReadVariableOpReadVariableOp-batch_normalization_8_readvariableop_resource*
_output_shapes
:
*
dtype02&
$batch_normalization_8/ReadVariableOpМ
&batch_normalization_8/ReadVariableOp_1ReadVariableOp/batch_normalization_8_readvariableop_1_resource*
_output_shapes
:
*
dtype02(
&batch_normalization_8/ReadVariableOp_1щ
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype027
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype029
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ф
&batch_normalization_8/FusedBatchNormV3FusedBatchNormV3conv2d_99/Relu:activations:0,batch_normalization_8/ReadVariableOp:value:0.batch_normalization_8/ReadVariableOp_1:value:0=batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ11
:
:
:
:
:*
epsilon%o:*
is_training( 2(
&batch_normalization_8/FusedBatchNormV3и
max_pooling2d_49/MaxPoolMaxPool*batch_normalization_8/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ
*
ksize
*
paddingVALID*
strides
2
max_pooling2d_49/MaxPoolu
flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  2
flatten_19/ConstЄ
flatten_19/ReshapeReshape!max_pooling2d_49/MaxPool:output:0flatten_19/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ-2
flatten_19/ReshapeЊ
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource* 
_output_shapes
:
-*
dtype02 
dense_26/MatMul/ReadVariableOpЄ
dense_26/MatMulMatMulflatten_19/Reshape:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_26/MatMulЈ
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_26/BiasAdd/ReadVariableOpІ
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_26/BiasAddt
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_26/ReluЉ
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype02 
dense_27/MatMul/ReadVariableOpЃ
dense_27/MatMulMatMuldense_26/Relu:activations:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_27/MatMulЇ
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_27/BiasAdd/ReadVariableOpЅ
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_27/BiasAdd|
dense_27/SoftmaxSoftmaxdense_27/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_27/Softmaxи	
IdentityIdentitydense_27/Softmax:softmax:06^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_16^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_1!^conv2d_94/BiasAdd/ReadVariableOp ^conv2d_94/Conv2D/ReadVariableOp!^conv2d_95/BiasAdd/ReadVariableOp ^conv2d_95/Conv2D/ReadVariableOp!^conv2d_96/BiasAdd/ReadVariableOp ^conv2d_96/Conv2D/ReadVariableOp!^conv2d_97/BiasAdd/ReadVariableOp ^conv2d_97/Conv2D/ReadVariableOp!^conv2d_98/BiasAdd/ReadVariableOp ^conv2d_98/Conv2D/ReadVariableOp!^conv2d_99/BiasAdd/ReadVariableOp ^conv2d_99/Conv2D/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*Ђ
_input_shapes
:џџџџџџџџџрр::::::::::::::::::::::::::::2n
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp5batch_normalization_6/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_17batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2P
&batch_normalization_6/ReadVariableOp_1&batch_normalization_6/ReadVariableOp_12n
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp5batch_normalization_7/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_17batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2P
&batch_normalization_7/ReadVariableOp_1&batch_normalization_7/ReadVariableOp_12n
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp5batch_normalization_8/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_17batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2P
&batch_normalization_8/ReadVariableOp_1&batch_normalization_8/ReadVariableOp_12D
 conv2d_94/BiasAdd/ReadVariableOp conv2d_94/BiasAdd/ReadVariableOp2B
conv2d_94/Conv2D/ReadVariableOpconv2d_94/Conv2D/ReadVariableOp2D
 conv2d_95/BiasAdd/ReadVariableOp conv2d_95/BiasAdd/ReadVariableOp2B
conv2d_95/Conv2D/ReadVariableOpconv2d_95/Conv2D/ReadVariableOp2D
 conv2d_96/BiasAdd/ReadVariableOp conv2d_96/BiasAdd/ReadVariableOp2B
conv2d_96/Conv2D/ReadVariableOpconv2d_96/Conv2D/ReadVariableOp2D
 conv2d_97/BiasAdd/ReadVariableOp conv2d_97/BiasAdd/ReadVariableOp2B
conv2d_97/Conv2D/ReadVariableOpconv2d_97/Conv2D/ReadVariableOp2D
 conv2d_98/BiasAdd/ReadVariableOp conv2d_98/BiasAdd/ReadVariableOp2B
conv2d_98/Conv2D/ReadVariableOpconv2d_98/Conv2D/ReadVariableOp2D
 conv2d_99/BiasAdd/ReadVariableOp conv2d_99/BiasAdd/ReadVariableOp2B
conv2d_99/Conv2D/ReadVariableOpconv2d_99/Conv2D/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs


Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_105220

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1к
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:џџџџџџџџџмм
:
:
:
:
:*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:џџџџџџџџџмм
2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:џџџџџџџџџмм
::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:џџџџџџџџџмм

 
_user_specified_nameinputs
ї	
н
D__inference_dense_26_layer_call_and_return_conditional_losses_106887

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
-*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ-::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs

Б
C__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_fn_105812
input_20
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identityЂStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinput_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *g
fbR`
^__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_and_return_conditional_losses_1057532
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*Ђ
_input_shapes
:џџџџџџџџџрр::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџрр
"
_user_specified_name
input_20
а

о
E__inference_conv2d_99_layer_call_and_return_conditional_losses_106728

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ11
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ11
2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ11
2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ11
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ33
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ33

 
_user_specified_nameinputs
О
b
F__inference_flatten_19_layer_call_and_return_conditional_losses_106871

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ-2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ-2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ
:W S
/
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
љ
є
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_106839

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ11
:
:
:
:
:*
epsilon%o:*
is_training( 2
FusedBatchNormV3к
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:џџџџџџџџџ11
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ11
::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ11

 
_user_specified_nameinputs
В
M
1__inference_max_pooling2d_47_layer_call_fn_104911

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_1049052
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Тю
$
!__inference__wrapped_model_104795
input_20O
Ktinyvgg_extra_conv_batchnorm_dense_conv2d_94_conv2d_readvariableop_resourceP
Ltinyvgg_extra_conv_batchnorm_dense_conv2d_94_biasadd_readvariableop_resourceO
Ktinyvgg_extra_conv_batchnorm_dense_conv2d_95_conv2d_readvariableop_resourceP
Ltinyvgg_extra_conv_batchnorm_dense_conv2d_95_biasadd_readvariableop_resourceT
Ptinyvgg_extra_conv_batchnorm_dense_batch_normalization_6_readvariableop_resourceV
Rtinyvgg_extra_conv_batchnorm_dense_batch_normalization_6_readvariableop_1_resourcee
atinyvgg_extra_conv_batchnorm_dense_batch_normalization_6_fusedbatchnormv3_readvariableop_resourceg
ctinyvgg_extra_conv_batchnorm_dense_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resourceO
Ktinyvgg_extra_conv_batchnorm_dense_conv2d_96_conv2d_readvariableop_resourceP
Ltinyvgg_extra_conv_batchnorm_dense_conv2d_96_biasadd_readvariableop_resourceO
Ktinyvgg_extra_conv_batchnorm_dense_conv2d_97_conv2d_readvariableop_resourceP
Ltinyvgg_extra_conv_batchnorm_dense_conv2d_97_biasadd_readvariableop_resourceT
Ptinyvgg_extra_conv_batchnorm_dense_batch_normalization_7_readvariableop_resourceV
Rtinyvgg_extra_conv_batchnorm_dense_batch_normalization_7_readvariableop_1_resourcee
atinyvgg_extra_conv_batchnorm_dense_batch_normalization_7_fusedbatchnormv3_readvariableop_resourceg
ctinyvgg_extra_conv_batchnorm_dense_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resourceO
Ktinyvgg_extra_conv_batchnorm_dense_conv2d_98_conv2d_readvariableop_resourceP
Ltinyvgg_extra_conv_batchnorm_dense_conv2d_98_biasadd_readvariableop_resourceO
Ktinyvgg_extra_conv_batchnorm_dense_conv2d_99_conv2d_readvariableop_resourceP
Ltinyvgg_extra_conv_batchnorm_dense_conv2d_99_biasadd_readvariableop_resourceT
Ptinyvgg_extra_conv_batchnorm_dense_batch_normalization_8_readvariableop_resourceV
Rtinyvgg_extra_conv_batchnorm_dense_batch_normalization_8_readvariableop_1_resourcee
atinyvgg_extra_conv_batchnorm_dense_batch_normalization_8_fusedbatchnormv3_readvariableop_resourceg
ctinyvgg_extra_conv_batchnorm_dense_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resourceN
Jtinyvgg_extra_conv_batchnorm_dense_dense_26_matmul_readvariableop_resourceO
Ktinyvgg_extra_conv_batchnorm_dense_dense_26_biasadd_readvariableop_resourceN
Jtinyvgg_extra_conv_batchnorm_dense_dense_27_matmul_readvariableop_resourceO
Ktinyvgg_extra_conv_batchnorm_dense_dense_27_biasadd_readvariableop_resource
identityЂXTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/FusedBatchNormV3/ReadVariableOpЂZTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ЂGTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/ReadVariableOpЂITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/ReadVariableOp_1ЂXTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/FusedBatchNormV3/ReadVariableOpЂZTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ЂGTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/ReadVariableOpЂITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/ReadVariableOp_1ЂXTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/FusedBatchNormV3/ReadVariableOpЂZTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ЂGTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/ReadVariableOpЂITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/ReadVariableOp_1ЂCTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/BiasAdd/ReadVariableOpЂBTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/Conv2D/ReadVariableOpЂCTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/BiasAdd/ReadVariableOpЂBTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/Conv2D/ReadVariableOpЂCTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/BiasAdd/ReadVariableOpЂBTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/Conv2D/ReadVariableOpЂCTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/BiasAdd/ReadVariableOpЂBTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/Conv2D/ReadVariableOpЂCTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/BiasAdd/ReadVariableOpЂBTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/Conv2D/ReadVariableOpЂCTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/BiasAdd/ReadVariableOpЂBTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/Conv2D/ReadVariableOpЂBTinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/BiasAdd/ReadVariableOpЂATinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/MatMul/ReadVariableOpЂBTinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/BiasAdd/ReadVariableOpЂATinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/MatMul/ReadVariableOp
BTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/Conv2D/ReadVariableOpReadVariableOpKtinyvgg_extra_conv_batchnorm_dense_conv2d_94_conv2d_readvariableop_resource*&
_output_shapes
:
*
dtype02D
BTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/Conv2D/ReadVariableOpЏ
3TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/Conv2DConv2Dinput_20JTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџоо
*
paddingVALID*
strides
25
3TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/Conv2D
CTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/BiasAdd/ReadVariableOpReadVariableOpLtinyvgg_extra_conv_batchnorm_dense_conv2d_94_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02E
CTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/BiasAdd/ReadVariableOpО
4TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/BiasAddBiasAdd<TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/Conv2D:output:0KTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџоо
26
4TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/BiasAddщ
1TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/ReluRelu=TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџоо
23
1TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/Relu
BTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/Conv2D/ReadVariableOpReadVariableOpKtinyvgg_extra_conv_batchnorm_dense_conv2d_95_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02D
BTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/Conv2D/ReadVariableOpц
3TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/Conv2DConv2D?TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/Relu:activations:0JTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџмм
*
paddingVALID*
strides
25
3TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/Conv2D
CTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/BiasAdd/ReadVariableOpReadVariableOpLtinyvgg_extra_conv_batchnorm_dense_conv2d_95_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02E
CTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/BiasAdd/ReadVariableOpО
4TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/BiasAddBiasAdd<TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/Conv2D:output:0KTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџмм
26
4TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/BiasAddщ
1TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/ReluRelu=TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџмм
23
1TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/Relu
GTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/ReadVariableOpReadVariableOpPtinyvgg_extra_conv_batchnorm_dense_batch_normalization_6_readvariableop_resource*
_output_shapes
:
*
dtype02I
GTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/ReadVariableOpЅ
ITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/ReadVariableOp_1ReadVariableOpRtinyvgg_extra_conv_batchnorm_dense_batch_normalization_6_readvariableop_1_resource*
_output_shapes
:
*
dtype02K
ITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/ReadVariableOp_1в
XTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpatinyvgg_extra_conv_batchnorm_dense_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02Z
XTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/FusedBatchNormV3/ReadVariableOpи
ZTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpctinyvgg_extra_conv_batchnorm_dense_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02\
ZTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1л
ITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3?TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/Relu:activations:0OTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/ReadVariableOp:value:0QTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/ReadVariableOp_1:value:0`TinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0bTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:џџџџџџџџџмм
:
:
:
:
:*
epsilon%o:*
is_training( 2K
ITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/FusedBatchNormV3С
;TinyVGG-Extra-Conv-BatchNorm-Dense/max_pooling2d_47/MaxPoolMaxPoolMTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџnn
*
ksize
*
paddingVALID*
strides
2=
;TinyVGG-Extra-Conv-BatchNorm-Dense/max_pooling2d_47/MaxPool
BTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/Conv2D/ReadVariableOpReadVariableOpKtinyvgg_extra_conv_batchnorm_dense_conv2d_96_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02D
BTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/Conv2D/ReadVariableOpщ
3TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/Conv2DConv2DDTinyVGG-Extra-Conv-BatchNorm-Dense/max_pooling2d_47/MaxPool:output:0JTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџll
*
paddingVALID*
strides
25
3TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/Conv2D
CTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/BiasAdd/ReadVariableOpReadVariableOpLtinyvgg_extra_conv_batchnorm_dense_conv2d_96_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02E
CTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/BiasAdd/ReadVariableOpМ
4TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/BiasAddBiasAdd<TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/Conv2D:output:0KTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџll
26
4TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/BiasAddч
1TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/ReluRelu=TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџll
23
1TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/Relu
BTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/Conv2D/ReadVariableOpReadVariableOpKtinyvgg_extra_conv_batchnorm_dense_conv2d_97_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02D
BTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/Conv2D/ReadVariableOpф
3TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/Conv2DConv2D?TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/Relu:activations:0JTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџjj
*
paddingVALID*
strides
25
3TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/Conv2D
CTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/BiasAdd/ReadVariableOpReadVariableOpLtinyvgg_extra_conv_batchnorm_dense_conv2d_97_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02E
CTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/BiasAdd/ReadVariableOpМ
4TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/BiasAddBiasAdd<TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/Conv2D:output:0KTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџjj
26
4TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/BiasAddч
1TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/ReluRelu=TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџjj
23
1TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/Relu
GTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/ReadVariableOpReadVariableOpPtinyvgg_extra_conv_batchnorm_dense_batch_normalization_7_readvariableop_resource*
_output_shapes
:
*
dtype02I
GTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/ReadVariableOpЅ
ITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/ReadVariableOp_1ReadVariableOpRtinyvgg_extra_conv_batchnorm_dense_batch_normalization_7_readvariableop_1_resource*
_output_shapes
:
*
dtype02K
ITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/ReadVariableOp_1в
XTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpatinyvgg_extra_conv_batchnorm_dense_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02Z
XTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/FusedBatchNormV3/ReadVariableOpи
ZTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpctinyvgg_extra_conv_batchnorm_dense_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02\
ZTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1й
ITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/FusedBatchNormV3FusedBatchNormV3?TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/Relu:activations:0OTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/ReadVariableOp:value:0QTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/ReadVariableOp_1:value:0`TinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0bTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџjj
:
:
:
:
:*
epsilon%o:*
is_training( 2K
ITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/FusedBatchNormV3С
;TinyVGG-Extra-Conv-BatchNorm-Dense/max_pooling2d_48/MaxPoolMaxPoolMTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ55
*
ksize
*
paddingVALID*
strides
2=
;TinyVGG-Extra-Conv-BatchNorm-Dense/max_pooling2d_48/MaxPool
BTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/Conv2D/ReadVariableOpReadVariableOpKtinyvgg_extra_conv_batchnorm_dense_conv2d_98_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02D
BTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/Conv2D/ReadVariableOpщ
3TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/Conv2DConv2DDTinyVGG-Extra-Conv-BatchNorm-Dense/max_pooling2d_48/MaxPool:output:0JTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ33
*
paddingVALID*
strides
25
3TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/Conv2D
CTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/BiasAdd/ReadVariableOpReadVariableOpLtinyvgg_extra_conv_batchnorm_dense_conv2d_98_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02E
CTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/BiasAdd/ReadVariableOpМ
4TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/BiasAddBiasAdd<TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/Conv2D:output:0KTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ33
26
4TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/BiasAddч
1TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/ReluRelu=TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ33
23
1TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/Relu
BTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/Conv2D/ReadVariableOpReadVariableOpKtinyvgg_extra_conv_batchnorm_dense_conv2d_99_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02D
BTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/Conv2D/ReadVariableOpф
3TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/Conv2DConv2D?TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/Relu:activations:0JTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ11
*
paddingVALID*
strides
25
3TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/Conv2D
CTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/BiasAdd/ReadVariableOpReadVariableOpLtinyvgg_extra_conv_batchnorm_dense_conv2d_99_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02E
CTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/BiasAdd/ReadVariableOpМ
4TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/BiasAddBiasAdd<TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/Conv2D:output:0KTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ11
26
4TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/BiasAddч
1TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/ReluRelu=TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ11
23
1TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/Relu
GTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/ReadVariableOpReadVariableOpPtinyvgg_extra_conv_batchnorm_dense_batch_normalization_8_readvariableop_resource*
_output_shapes
:
*
dtype02I
GTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/ReadVariableOpЅ
ITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/ReadVariableOp_1ReadVariableOpRtinyvgg_extra_conv_batchnorm_dense_batch_normalization_8_readvariableop_1_resource*
_output_shapes
:
*
dtype02K
ITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/ReadVariableOp_1в
XTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpatinyvgg_extra_conv_batchnorm_dense_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02Z
XTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/FusedBatchNormV3/ReadVariableOpи
ZTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpctinyvgg_extra_conv_batchnorm_dense_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02\
ZTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1й
ITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/FusedBatchNormV3FusedBatchNormV3?TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/Relu:activations:0OTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/ReadVariableOp:value:0QTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/ReadVariableOp_1:value:0`TinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0bTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ11
:
:
:
:
:*
epsilon%o:*
is_training( 2K
ITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/FusedBatchNormV3С
;TinyVGG-Extra-Conv-BatchNorm-Dense/max_pooling2d_49/MaxPoolMaxPoolMTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ
*
ksize
*
paddingVALID*
strides
2=
;TinyVGG-Extra-Conv-BatchNorm-Dense/max_pooling2d_49/MaxPoolЛ
3TinyVGG-Extra-Conv-BatchNorm-Dense/flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  25
3TinyVGG-Extra-Conv-BatchNorm-Dense/flatten_19/ConstА
5TinyVGG-Extra-Conv-BatchNorm-Dense/flatten_19/ReshapeReshapeDTinyVGG-Extra-Conv-BatchNorm-Dense/max_pooling2d_49/MaxPool:output:0<TinyVGG-Extra-Conv-BatchNorm-Dense/flatten_19/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ-27
5TinyVGG-Extra-Conv-BatchNorm-Dense/flatten_19/Reshape
ATinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/MatMul/ReadVariableOpReadVariableOpJtinyvgg_extra_conv_batchnorm_dense_dense_26_matmul_readvariableop_resource* 
_output_shapes
:
-*
dtype02C
ATinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/MatMul/ReadVariableOpА
2TinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/MatMulMatMul>TinyVGG-Extra-Conv-BatchNorm-Dense/flatten_19/Reshape:output:0ITinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ24
2TinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/MatMul
BTinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/BiasAdd/ReadVariableOpReadVariableOpKtinyvgg_extra_conv_batchnorm_dense_dense_26_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02D
BTinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/BiasAdd/ReadVariableOpВ
3TinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/BiasAddBiasAdd<TinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/MatMul:product:0JTinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ25
3TinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/BiasAddн
0TinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/ReluRelu<TinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ22
0TinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/Relu
ATinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/MatMul/ReadVariableOpReadVariableOpJtinyvgg_extra_conv_batchnorm_dense_dense_27_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype02C
ATinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/MatMul/ReadVariableOpЏ
2TinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/MatMulMatMul>TinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/Relu:activations:0ITinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
24
2TinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/MatMul
BTinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/BiasAdd/ReadVariableOpReadVariableOpKtinyvgg_extra_conv_batchnorm_dense_dense_27_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02D
BTinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/BiasAdd/ReadVariableOpБ
3TinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/BiasAddBiasAdd<TinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/MatMul:product:0JTinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
25
3TinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/BiasAddх
3TinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/SoftmaxSoftmax<TinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
25
3TinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/SoftmaxЯ
IdentityIdentity=TinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/Softmax:softmax:0Y^TinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/FusedBatchNormV3/ReadVariableOp[^TinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1H^TinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/ReadVariableOpJ^TinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/ReadVariableOp_1Y^TinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/FusedBatchNormV3/ReadVariableOp[^TinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1H^TinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/ReadVariableOpJ^TinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/ReadVariableOp_1Y^TinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/FusedBatchNormV3/ReadVariableOp[^TinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1H^TinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/ReadVariableOpJ^TinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/ReadVariableOp_1D^TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/BiasAdd/ReadVariableOpC^TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/Conv2D/ReadVariableOpD^TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/BiasAdd/ReadVariableOpC^TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/Conv2D/ReadVariableOpD^TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/BiasAdd/ReadVariableOpC^TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/Conv2D/ReadVariableOpD^TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/BiasAdd/ReadVariableOpC^TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/Conv2D/ReadVariableOpD^TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/BiasAdd/ReadVariableOpC^TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/Conv2D/ReadVariableOpD^TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/BiasAdd/ReadVariableOpC^TinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/Conv2D/ReadVariableOpC^TinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/BiasAdd/ReadVariableOpB^TinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/MatMul/ReadVariableOpC^TinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/BiasAdd/ReadVariableOpB^TinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*Ђ
_input_shapes
:џџџџџџџџџрр::::::::::::::::::::::::::::2Д
XTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/FusedBatchNormV3/ReadVariableOpXTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2И
ZTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ZTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12
GTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/ReadVariableOpGTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/ReadVariableOp2
ITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/ReadVariableOp_1ITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_6/ReadVariableOp_12Д
XTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/FusedBatchNormV3/ReadVariableOpXTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2И
ZTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ZTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12
GTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/ReadVariableOpGTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/ReadVariableOp2
ITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/ReadVariableOp_1ITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_7/ReadVariableOp_12Д
XTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/FusedBatchNormV3/ReadVariableOpXTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2И
ZTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ZTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12
GTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/ReadVariableOpGTinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/ReadVariableOp2
ITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/ReadVariableOp_1ITinyVGG-Extra-Conv-BatchNorm-Dense/batch_normalization_8/ReadVariableOp_12
CTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/BiasAdd/ReadVariableOpCTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/BiasAdd/ReadVariableOp2
BTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/Conv2D/ReadVariableOpBTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_94/Conv2D/ReadVariableOp2
CTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/BiasAdd/ReadVariableOpCTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/BiasAdd/ReadVariableOp2
BTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/Conv2D/ReadVariableOpBTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_95/Conv2D/ReadVariableOp2
CTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/BiasAdd/ReadVariableOpCTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/BiasAdd/ReadVariableOp2
BTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/Conv2D/ReadVariableOpBTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_96/Conv2D/ReadVariableOp2
CTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/BiasAdd/ReadVariableOpCTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/BiasAdd/ReadVariableOp2
BTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/Conv2D/ReadVariableOpBTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_97/Conv2D/ReadVariableOp2
CTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/BiasAdd/ReadVariableOpCTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/BiasAdd/ReadVariableOp2
BTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/Conv2D/ReadVariableOpBTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_98/Conv2D/ReadVariableOp2
CTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/BiasAdd/ReadVariableOpCTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/BiasAdd/ReadVariableOp2
BTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/Conv2D/ReadVariableOpBTinyVGG-Extra-Conv-BatchNorm-Dense/conv2d_99/Conv2D/ReadVariableOp2
BTinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/BiasAdd/ReadVariableOpBTinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/BiasAdd/ReadVariableOp2
ATinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/MatMul/ReadVariableOpATinyVGG-Extra-Conv-BatchNorm-Dense/dense_26/MatMul/ReadVariableOp2
BTinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/BiasAdd/ReadVariableOpBTinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/BiasAdd/ReadVariableOp2
ATinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/MatMul/ReadVariableOpATinyVGG-Extra-Conv-BatchNorm-Dense/dense_27/MatMul/ReadVariableOp:[ W
1
_output_shapes
:џџџџџџџџџрр
"
_user_specified_name
input_20


*__inference_conv2d_98_layer_call_fn_106717

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ33
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_98_layer_call_and_return_conditional_losses_1054142
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ33
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ55
::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ55

 
_user_specified_nameinputs
љ
є
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_105366

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџjj
:
:
:
:
:*
epsilon%o:*
is_training( 2
FusedBatchNormV3к
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:џџџџџџџџџjj
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџjj
::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџjj

 
_user_specified_nameinputs
љ
є
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_106671

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџjj
:
:
:
:
:*
epsilon%o:*
is_training( 2
FusedBatchNormV3к
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:џџџџџџџџџjj
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџjj
::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџjj

 
_user_specified_nameinputs
Э

Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_105089

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
:
:
:
:
:*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
_user_specified_nameinputs


Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_105348

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1и
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџjj
:
:
:
:
:*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1ў
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:џџџџџџџџџjj
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџjj
::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџjj

 
_user_specified_nameinputs
м

о
E__inference_conv2d_94_layer_call_and_return_conditional_losses_106372

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:
*
dtype02
Conv2D/ReadVariableOpІ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџоо
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2
ReluЁ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџоо
2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџрр::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs
Ђ
Љ
6__inference_batch_normalization_6_layer_call_fn_106529

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1048882
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
_user_specified_nameinputs
а

о
E__inference_conv2d_97_layer_call_and_return_conditional_losses_106560

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџjj
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџjj
2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџjj
2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџjj
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџll
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџll

 
_user_specified_nameinputs
 
Љ
6__inference_batch_normalization_6_layer_call_fn_106516

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1048572
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
_user_specified_nameinputs
Э

Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_106757

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
:
:
:
:
:*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
_user_specified_nameinputs
В
M
1__inference_max_pooling2d_48_layer_call_fn_105027

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_1050212
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_104905

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_106421

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1к
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:џџџџџџџџџмм
:
:
:
:
:*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:џџџџџџџџџмм
2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:џџџџџџџџџмм
::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:џџџџџџџџџмм

 
_user_specified_nameinputs

Џ
C__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_fn_106300

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *g
fbR`
^__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_and_return_conditional_losses_1057532
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*Ђ
_input_shapes
:џџџџџџџџџрр::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs
С
є
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_105120

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
:
:
:
:
:*
epsilon%o:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
_user_specified_nameinputs
т
Љ
6__inference_batch_normalization_6_layer_call_fn_106465

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџмм
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1052382
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:џџџџџџџџџмм
2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:џџџџџџџџџмм
::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџмм

 
_user_specified_nameinputs

h
L__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_105021

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ЙN
Ё

^__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_and_return_conditional_losses_105600
input_20
conv2d_94_105169
conv2d_94_105171
conv2d_95_105196
conv2d_95_105198 
batch_normalization_6_105265 
batch_normalization_6_105267 
batch_normalization_6_105269 
batch_normalization_6_105271
conv2d_96_105297
conv2d_96_105299
conv2d_97_105324
conv2d_97_105326 
batch_normalization_7_105393 
batch_normalization_7_105395 
batch_normalization_7_105397 
batch_normalization_7_105399
conv2d_98_105425
conv2d_98_105427
conv2d_99_105452
conv2d_99_105454 
batch_normalization_8_105521 
batch_normalization_8_105523 
batch_normalization_8_105525 
batch_normalization_8_105527
dense_26_105567
dense_26_105569
dense_27_105594
dense_27_105596
identityЂ-batch_normalization_6/StatefulPartitionedCallЂ-batch_normalization_7/StatefulPartitionedCallЂ-batch_normalization_8/StatefulPartitionedCallЂ!conv2d_94/StatefulPartitionedCallЂ!conv2d_95/StatefulPartitionedCallЂ!conv2d_96/StatefulPartitionedCallЂ!conv2d_97/StatefulPartitionedCallЂ!conv2d_98/StatefulPartitionedCallЂ!conv2d_99/StatefulPartitionedCallЂ dense_26/StatefulPartitionedCallЂ dense_27/StatefulPartitionedCallЈ
!conv2d_94/StatefulPartitionedCallStatefulPartitionedCallinput_20conv2d_94_105169conv2d_94_105171*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџоо
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_94_layer_call_and_return_conditional_losses_1051582#
!conv2d_94/StatefulPartitionedCallЪ
!conv2d_95/StatefulPartitionedCallStatefulPartitionedCall*conv2d_94/StatefulPartitionedCall:output:0conv2d_95_105196conv2d_95_105198*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџмм
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_95_layer_call_and_return_conditional_losses_1051852#
!conv2d_95/StatefulPartitionedCallФ
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall*conv2d_95/StatefulPartitionedCall:output:0batch_normalization_6_105265batch_normalization_6_105267batch_normalization_6_105269batch_normalization_6_105271*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџмм
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1052202/
-batch_normalization_6/StatefulPartitionedCallЇ
 max_pooling2d_47/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџnn
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_1049052"
 max_pooling2d_47/PartitionedCallЧ
!conv2d_96/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_47/PartitionedCall:output:0conv2d_96_105297conv2d_96_105299*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџll
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_96_layer_call_and_return_conditional_losses_1052862#
!conv2d_96/StatefulPartitionedCallШ
!conv2d_97/StatefulPartitionedCallStatefulPartitionedCall*conv2d_96/StatefulPartitionedCall:output:0conv2d_97_105324conv2d_97_105326*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџjj
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_97_layer_call_and_return_conditional_losses_1053132#
!conv2d_97/StatefulPartitionedCallТ
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall*conv2d_97/StatefulPartitionedCall:output:0batch_normalization_7_105393batch_normalization_7_105395batch_normalization_7_105397batch_normalization_7_105399*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџjj
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1053482/
-batch_normalization_7/StatefulPartitionedCallЇ
 max_pooling2d_48/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ55
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_1050212"
 max_pooling2d_48/PartitionedCallЧ
!conv2d_98/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_48/PartitionedCall:output:0conv2d_98_105425conv2d_98_105427*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ33
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_98_layer_call_and_return_conditional_losses_1054142#
!conv2d_98/StatefulPartitionedCallШ
!conv2d_99/StatefulPartitionedCallStatefulPartitionedCall*conv2d_98/StatefulPartitionedCall:output:0conv2d_99_105452conv2d_99_105454*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ11
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_99_layer_call_and_return_conditional_losses_1054412#
!conv2d_99/StatefulPartitionedCallТ
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall*conv2d_99/StatefulPartitionedCall:output:0batch_normalization_8_105521batch_normalization_8_105523batch_normalization_8_105525batch_normalization_8_105527*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ11
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_1054762/
-batch_normalization_8/StatefulPartitionedCallЇ
 max_pooling2d_49/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_1051372"
 max_pooling2d_49/PartitionedCall
flatten_19/PartitionedCallPartitionedCall)max_pooling2d_49/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ-* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_19_layer_call_and_return_conditional_losses_1055372
flatten_19/PartitionedCallЕ
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_26_105567dense_26_105569*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_1055562"
 dense_26/StatefulPartitionedCallК
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_105594dense_27_105596*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_1055832"
 dense_27/StatefulPartitionedCallЋ
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall"^conv2d_94/StatefulPartitionedCall"^conv2d_95/StatefulPartitionedCall"^conv2d_96/StatefulPartitionedCall"^conv2d_97/StatefulPartitionedCall"^conv2d_98/StatefulPartitionedCall"^conv2d_99/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*Ђ
_input_shapes
:џџџџџџџџџрр::::::::::::::::::::::::::::2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2F
!conv2d_94/StatefulPartitionedCall!conv2d_94/StatefulPartitionedCall2F
!conv2d_95/StatefulPartitionedCall!conv2d_95/StatefulPartitionedCall2F
!conv2d_96/StatefulPartitionedCall!conv2d_96/StatefulPartitionedCall2F
!conv2d_97/StatefulPartitionedCall!conv2d_97/StatefulPartitionedCall2F
!conv2d_98/StatefulPartitionedCall!conv2d_98/StatefulPartitionedCall2F
!conv2d_99/StatefulPartitionedCall!conv2d_99/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџрр
"
_user_specified_name
input_20
 
Љ
6__inference_batch_normalization_7_layer_call_fn_106620

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1049732
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
_user_specified_nameinputs
С
є
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_104888

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
:
:
:
:
:*
epsilon%o:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
_user_specified_nameinputs


*__inference_conv2d_96_layer_call_fn_106549

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџll
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_96_layer_call_and_return_conditional_losses_1052862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџll
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџnn
::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџnn

 
_user_specified_nameinputs

Џ
C__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_fn_106361

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8 *g
fbR`
^__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_and_return_conditional_losses_1058892
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*Ђ
_input_shapes
:џџџџџџџџџрр::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs
а

о
E__inference_conv2d_96_layer_call_and_return_conditional_losses_105286

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџll
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџll
2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџll
2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџll
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџnn
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџnn

 
_user_specified_nameinputs

є
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_105238

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ь
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:џџџџџџџџџмм
:
:
:
:
:*
epsilon%o:*
is_training( 2
FusedBatchNormV3м
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:џџџџџџџџџмм
2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:џџџџџџџџџмм
::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:џџџџџџџџџмм

 
_user_specified_nameinputs
м

о
E__inference_conv2d_95_layer_call_and_return_conditional_losses_106392

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOpІ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџмм
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџмм
2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџмм
2
ReluЁ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџмм
2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџоо
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџоо

 
_user_specified_nameinputs

є
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_106439

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ь
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:џџџџџџџџџмм
:
:
:
:
:*
epsilon%o:*
is_training( 2
FusedBatchNormV3м
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:џџџџџџџџџмм
2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:џџџџџџџџџмм
::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:џџџџџџџџџмм

 
_user_specified_nameinputs
м

о
E__inference_conv2d_94_layer_call_and_return_conditional_losses_105158

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:
*
dtype02
Conv2D/ReadVariableOpІ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџоо
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2
ReluЁ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџоо
2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџрр::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs
а

о
E__inference_conv2d_96_layer_call_and_return_conditional_losses_106540

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџll
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџll
2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџll
2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџll
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџnn
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџnn

 
_user_specified_nameinputs
с
~
)__inference_dense_27_layer_call_fn_106916

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_1055832
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

Б
C__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_fn_105948
input_20
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinput_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8 *g
fbR`
^__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_and_return_conditional_losses_1058892
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*Ђ
_input_shapes
:џџџџџџџџџрр::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџрр
"
_user_specified_name
input_20
С
є
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_105004

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
:
:
:
:
:*
epsilon%o:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
_user_specified_nameinputs
и
Љ
6__inference_batch_normalization_8_layer_call_fn_106852

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ11
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_1054762
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ11
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ11
::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ11

 
_user_specified_nameinputs
О
b
F__inference_flatten_19_layer_call_and_return_conditional_losses_105537

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ-2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ-2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ
:W S
/
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Э

Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_106485

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
:
:
:
:
:*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
_user_specified_nameinputs
љ
є
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_105494

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ11
:
:
:
:
:*
epsilon%o:*
is_training( 2
FusedBatchNormV3к
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:џџџџџџџџџ11
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ11
::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ11

 
_user_specified_nameinputs


Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_105476

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1и
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ11
:
:
:
:
:*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1ў
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:џџџџџџџџџ11
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ11
::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ11

 
_user_specified_nameinputs
а

о
E__inference_conv2d_98_layer_call_and_return_conditional_losses_105414

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ33
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ33
2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ33
2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ33
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ55
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ55

 
_user_specified_nameinputs
а

о
E__inference_conv2d_99_layer_call_and_return_conditional_losses_105441

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ11
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ11
2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ11
2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ11
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ33
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ33

 
_user_specified_nameinputs
 
Љ
6__inference_batch_normalization_8_layer_call_fn_106788

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_1050892
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
_user_specified_nameinputs
љ	
н
D__inference_dense_27_layer_call_and_return_conditional_losses_105583

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
а

о
E__inference_conv2d_98_layer_call_and_return_conditional_losses_106708

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ33
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ33
2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ33
2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ33
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ55
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ55

 
_user_specified_nameinputs
к
Љ
6__inference_batch_normalization_7_layer_call_fn_106697

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџjj
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1053662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџjj
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџjj
::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџjj

 
_user_specified_nameinputs


*__inference_conv2d_99_layer_call_fn_106737

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ11
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_99_layer_call_and_return_conditional_losses_1054412
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ11
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ33
::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ33

 
_user_specified_nameinputs
а

о
E__inference_conv2d_97_layer_call_and_return_conditional_losses_105313

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџjj
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџjj
2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџjj
2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџjj
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџll
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџll

 
_user_specified_nameinputs


Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_106821

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1и
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ11
:
:
:
:
:*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1ў
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:џџџџџџџџџ11
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ11
::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ11

 
_user_specified_nameinputs
Ћ
G
+__inference_flatten_19_layer_call_fn_106876

inputs
identityШ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ-* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_19_layer_call_and_return_conditional_losses_1055372
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ-2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ
:W S
/
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
ИЃ
Ї$
__inference__traced_save_107188
file_prefix/
+savev2_conv2d_94_kernel_read_readvariableop-
)savev2_conv2d_94_bias_read_readvariableop/
+savev2_conv2d_95_kernel_read_readvariableop-
)savev2_conv2d_95_bias_read_readvariableop:
6savev2_batch_normalization_6_gamma_read_readvariableop9
5savev2_batch_normalization_6_beta_read_readvariableop@
<savev2_batch_normalization_6_moving_mean_read_readvariableopD
@savev2_batch_normalization_6_moving_variance_read_readvariableop/
+savev2_conv2d_96_kernel_read_readvariableop-
)savev2_conv2d_96_bias_read_readvariableop/
+savev2_conv2d_97_kernel_read_readvariableop-
)savev2_conv2d_97_bias_read_readvariableop:
6savev2_batch_normalization_7_gamma_read_readvariableop9
5savev2_batch_normalization_7_beta_read_readvariableop@
<savev2_batch_normalization_7_moving_mean_read_readvariableopD
@savev2_batch_normalization_7_moving_variance_read_readvariableop/
+savev2_conv2d_98_kernel_read_readvariableop-
)savev2_conv2d_98_bias_read_readvariableop/
+savev2_conv2d_99_kernel_read_readvariableop-
)savev2_conv2d_99_bias_read_readvariableop:
6savev2_batch_normalization_8_gamma_read_readvariableop9
5savev2_batch_normalization_8_beta_read_readvariableop@
<savev2_batch_normalization_8_moving_mean_read_readvariableopD
@savev2_batch_normalization_8_moving_variance_read_readvariableop.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop.
*savev2_dense_27_kernel_read_readvariableop,
(savev2_dense_27_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop6
2savev2_adam_conv2d_94_kernel_m_read_readvariableop4
0savev2_adam_conv2d_94_bias_m_read_readvariableop6
2savev2_adam_conv2d_95_kernel_m_read_readvariableop4
0savev2_adam_conv2d_95_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_6_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_6_beta_m_read_readvariableop6
2savev2_adam_conv2d_96_kernel_m_read_readvariableop4
0savev2_adam_conv2d_96_bias_m_read_readvariableop6
2savev2_adam_conv2d_97_kernel_m_read_readvariableop4
0savev2_adam_conv2d_97_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_7_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_7_beta_m_read_readvariableop6
2savev2_adam_conv2d_98_kernel_m_read_readvariableop4
0savev2_adam_conv2d_98_bias_m_read_readvariableop6
2savev2_adam_conv2d_99_kernel_m_read_readvariableop4
0savev2_adam_conv2d_99_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_8_beta_m_read_readvariableop5
1savev2_adam_dense_26_kernel_m_read_readvariableop3
/savev2_adam_dense_26_bias_m_read_readvariableop5
1savev2_adam_dense_27_kernel_m_read_readvariableop3
/savev2_adam_dense_27_bias_m_read_readvariableop6
2savev2_adam_conv2d_94_kernel_v_read_readvariableop4
0savev2_adam_conv2d_94_bias_v_read_readvariableop6
2savev2_adam_conv2d_95_kernel_v_read_readvariableop4
0savev2_adam_conv2d_95_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_6_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_6_beta_v_read_readvariableop6
2savev2_adam_conv2d_96_kernel_v_read_readvariableop4
0savev2_adam_conv2d_96_bias_v_read_readvariableop6
2savev2_adam_conv2d_97_kernel_v_read_readvariableop4
0savev2_adam_conv2d_97_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_7_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_7_beta_v_read_readvariableop6
2savev2_adam_conv2d_98_kernel_v_read_readvariableop4
0savev2_adam_conv2d_98_bias_v_read_readvariableop6
2savev2_adam_conv2d_99_kernel_v_read_readvariableop4
0savev2_adam_conv2d_99_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_8_beta_v_read_readvariableop5
1savev2_adam_dense_26_kernel_v_read_readvariableop3
/savev2_adam_dense_26_bias_v_read_readvariableop5
1savev2_adam_dense_27_kernel_v_read_readvariableop3
/savev2_adam_dense_27_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameП.
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*б-
valueЧ-BФ-TB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesГ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*Н
valueГBАTB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesќ"
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_94_kernel_read_readvariableop)savev2_conv2d_94_bias_read_readvariableop+savev2_conv2d_95_kernel_read_readvariableop)savev2_conv2d_95_bias_read_readvariableop6savev2_batch_normalization_6_gamma_read_readvariableop5savev2_batch_normalization_6_beta_read_readvariableop<savev2_batch_normalization_6_moving_mean_read_readvariableop@savev2_batch_normalization_6_moving_variance_read_readvariableop+savev2_conv2d_96_kernel_read_readvariableop)savev2_conv2d_96_bias_read_readvariableop+savev2_conv2d_97_kernel_read_readvariableop)savev2_conv2d_97_bias_read_readvariableop6savev2_batch_normalization_7_gamma_read_readvariableop5savev2_batch_normalization_7_beta_read_readvariableop<savev2_batch_normalization_7_moving_mean_read_readvariableop@savev2_batch_normalization_7_moving_variance_read_readvariableop+savev2_conv2d_98_kernel_read_readvariableop)savev2_conv2d_98_bias_read_readvariableop+savev2_conv2d_99_kernel_read_readvariableop)savev2_conv2d_99_bias_read_readvariableop6savev2_batch_normalization_8_gamma_read_readvariableop5savev2_batch_normalization_8_beta_read_readvariableop<savev2_batch_normalization_8_moving_mean_read_readvariableop@savev2_batch_normalization_8_moving_variance_read_readvariableop*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop*savev2_dense_27_kernel_read_readvariableop(savev2_dense_27_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop2savev2_adam_conv2d_94_kernel_m_read_readvariableop0savev2_adam_conv2d_94_bias_m_read_readvariableop2savev2_adam_conv2d_95_kernel_m_read_readvariableop0savev2_adam_conv2d_95_bias_m_read_readvariableop=savev2_adam_batch_normalization_6_gamma_m_read_readvariableop<savev2_adam_batch_normalization_6_beta_m_read_readvariableop2savev2_adam_conv2d_96_kernel_m_read_readvariableop0savev2_adam_conv2d_96_bias_m_read_readvariableop2savev2_adam_conv2d_97_kernel_m_read_readvariableop0savev2_adam_conv2d_97_bias_m_read_readvariableop=savev2_adam_batch_normalization_7_gamma_m_read_readvariableop<savev2_adam_batch_normalization_7_beta_m_read_readvariableop2savev2_adam_conv2d_98_kernel_m_read_readvariableop0savev2_adam_conv2d_98_bias_m_read_readvariableop2savev2_adam_conv2d_99_kernel_m_read_readvariableop0savev2_adam_conv2d_99_bias_m_read_readvariableop=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop<savev2_adam_batch_normalization_8_beta_m_read_readvariableop1savev2_adam_dense_26_kernel_m_read_readvariableop/savev2_adam_dense_26_bias_m_read_readvariableop1savev2_adam_dense_27_kernel_m_read_readvariableop/savev2_adam_dense_27_bias_m_read_readvariableop2savev2_adam_conv2d_94_kernel_v_read_readvariableop0savev2_adam_conv2d_94_bias_v_read_readvariableop2savev2_adam_conv2d_95_kernel_v_read_readvariableop0savev2_adam_conv2d_95_bias_v_read_readvariableop=savev2_adam_batch_normalization_6_gamma_v_read_readvariableop<savev2_adam_batch_normalization_6_beta_v_read_readvariableop2savev2_adam_conv2d_96_kernel_v_read_readvariableop0savev2_adam_conv2d_96_bias_v_read_readvariableop2savev2_adam_conv2d_97_kernel_v_read_readvariableop0savev2_adam_conv2d_97_bias_v_read_readvariableop=savev2_adam_batch_normalization_7_gamma_v_read_readvariableop<savev2_adam_batch_normalization_7_beta_v_read_readvariableop2savev2_adam_conv2d_98_kernel_v_read_readvariableop0savev2_adam_conv2d_98_bias_v_read_readvariableop2savev2_adam_conv2d_99_kernel_v_read_readvariableop0savev2_adam_conv2d_99_bias_v_read_readvariableop=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop<savev2_adam_batch_normalization_8_beta_v_read_readvariableop1savev2_adam_dense_26_kernel_v_read_readvariableop/savev2_adam_dense_26_bias_v_read_readvariableop1savev2_adam_dense_27_kernel_v_read_readvariableop/savev2_adam_dense_27_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *b
dtypesX
V2T	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*л
_input_shapesЩ
Ц: :
:
:

:
:
:
:
:
:

:
:

:
:
:
:
:
:

:
:

:
:
:
:
:
:
-::	
:
: : : : : : : : : : : :
:
:

:
:
:
:

:
:

:
:
:
:

:
:

:
:
:
:
-::	
:
:
:
:

:
:
:
:

:
:

:
:
:
:

:
:

:
:
:
:
-::	
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:
: 

_output_shapes
:
:,(
&
_output_shapes
:

: 

_output_shapes
:
: 

_output_shapes
:
: 

_output_shapes
:
: 

_output_shapes
:
: 

_output_shapes
:
:,	(
&
_output_shapes
:

: 


_output_shapes
:
:,(
&
_output_shapes
:

: 

_output_shapes
:
: 

_output_shapes
:
: 

_output_shapes
:
: 

_output_shapes
:
: 

_output_shapes
:
:,(
&
_output_shapes
:

: 

_output_shapes
:
:,(
&
_output_shapes
:

: 

_output_shapes
:
: 

_output_shapes
:
: 

_output_shapes
:
: 

_output_shapes
:
: 

_output_shapes
:
:&"
 
_output_shapes
:
-:!

_output_shapes	
::%!

_output_shapes
:	
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :,((
&
_output_shapes
:
: )

_output_shapes
:
:,*(
&
_output_shapes
:

: +

_output_shapes
:
: ,

_output_shapes
:
: -

_output_shapes
:
:,.(
&
_output_shapes
:

: /

_output_shapes
:
:,0(
&
_output_shapes
:

: 1

_output_shapes
:
: 2

_output_shapes
:
: 3

_output_shapes
:
:,4(
&
_output_shapes
:

: 5

_output_shapes
:
:,6(
&
_output_shapes
:

: 7

_output_shapes
:
: 8

_output_shapes
:
: 9

_output_shapes
:
:&:"
 
_output_shapes
:
-:!;

_output_shapes	
::%<!

_output_shapes
:	
: =

_output_shapes
:
:,>(
&
_output_shapes
:
: ?

_output_shapes
:
:,@(
&
_output_shapes
:

: A

_output_shapes
:
: B

_output_shapes
:
: C

_output_shapes
:
:,D(
&
_output_shapes
:

: E

_output_shapes
:
:,F(
&
_output_shapes
:

: G

_output_shapes
:
: H

_output_shapes
:
: I

_output_shapes
:
:,J(
&
_output_shapes
:

: K

_output_shapes
:
:,L(
&
_output_shapes
:

: M

_output_shapes
:
: N

_output_shapes
:
: O

_output_shapes
:
:&P"
 
_output_shapes
:
-:!Q

_output_shapes	
::%R!

_output_shapes
:	
: S

_output_shapes
:
:T

_output_shapes
: 
ї	
н
D__inference_dense_26_layer_call_and_return_conditional_losses_105556

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
-*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ-::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs
Ќ

^__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_and_return_conditional_losses_106132

inputs,
(conv2d_94_conv2d_readvariableop_resource-
)conv2d_94_biasadd_readvariableop_resource,
(conv2d_95_conv2d_readvariableop_resource-
)conv2d_95_biasadd_readvariableop_resource1
-batch_normalization_6_readvariableop_resource3
/batch_normalization_6_readvariableop_1_resourceB
>batch_normalization_6_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_96_conv2d_readvariableop_resource-
)conv2d_96_biasadd_readvariableop_resource,
(conv2d_97_conv2d_readvariableop_resource-
)conv2d_97_biasadd_readvariableop_resource1
-batch_normalization_7_readvariableop_resource3
/batch_normalization_7_readvariableop_1_resourceB
>batch_normalization_7_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_98_conv2d_readvariableop_resource-
)conv2d_98_biasadd_readvariableop_resource,
(conv2d_99_conv2d_readvariableop_resource-
)conv2d_99_biasadd_readvariableop_resource1
-batch_normalization_8_readvariableop_resource3
/batch_normalization_8_readvariableop_1_resourceB
>batch_normalization_8_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource+
'dense_27_matmul_readvariableop_resource,
(dense_27_biasadd_readvariableop_resource
identityЂ$batch_normalization_6/AssignNewValueЂ&batch_normalization_6/AssignNewValue_1Ђ5batch_normalization_6/FusedBatchNormV3/ReadVariableOpЂ7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Ђ$batch_normalization_6/ReadVariableOpЂ&batch_normalization_6/ReadVariableOp_1Ђ$batch_normalization_7/AssignNewValueЂ&batch_normalization_7/AssignNewValue_1Ђ5batch_normalization_7/FusedBatchNormV3/ReadVariableOpЂ7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Ђ$batch_normalization_7/ReadVariableOpЂ&batch_normalization_7/ReadVariableOp_1Ђ$batch_normalization_8/AssignNewValueЂ&batch_normalization_8/AssignNewValue_1Ђ5batch_normalization_8/FusedBatchNormV3/ReadVariableOpЂ7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Ђ$batch_normalization_8/ReadVariableOpЂ&batch_normalization_8/ReadVariableOp_1Ђ conv2d_94/BiasAdd/ReadVariableOpЂconv2d_94/Conv2D/ReadVariableOpЂ conv2d_95/BiasAdd/ReadVariableOpЂconv2d_95/Conv2D/ReadVariableOpЂ conv2d_96/BiasAdd/ReadVariableOpЂconv2d_96/Conv2D/ReadVariableOpЂ conv2d_97/BiasAdd/ReadVariableOpЂconv2d_97/Conv2D/ReadVariableOpЂ conv2d_98/BiasAdd/ReadVariableOpЂconv2d_98/Conv2D/ReadVariableOpЂ conv2d_99/BiasAdd/ReadVariableOpЂconv2d_99/Conv2D/ReadVariableOpЂdense_26/BiasAdd/ReadVariableOpЂdense_26/MatMul/ReadVariableOpЂdense_27/BiasAdd/ReadVariableOpЂdense_27/MatMul/ReadVariableOpГ
conv2d_94/Conv2D/ReadVariableOpReadVariableOp(conv2d_94_conv2d_readvariableop_resource*&
_output_shapes
:
*
dtype02!
conv2d_94/Conv2D/ReadVariableOpФ
conv2d_94/Conv2DConv2Dinputs'conv2d_94/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџоо
*
paddingVALID*
strides
2
conv2d_94/Conv2DЊ
 conv2d_94/BiasAdd/ReadVariableOpReadVariableOp)conv2d_94_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 conv2d_94/BiasAdd/ReadVariableOpВ
conv2d_94/BiasAddBiasAddconv2d_94/Conv2D:output:0(conv2d_94/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2
conv2d_94/BiasAdd
conv2d_94/ReluReluconv2d_94/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџоо
2
conv2d_94/ReluГ
conv2d_95/Conv2D/ReadVariableOpReadVariableOp(conv2d_95_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_95/Conv2D/ReadVariableOpк
conv2d_95/Conv2DConv2Dconv2d_94/Relu:activations:0'conv2d_95/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџмм
*
paddingVALID*
strides
2
conv2d_95/Conv2DЊ
 conv2d_95/BiasAdd/ReadVariableOpReadVariableOp)conv2d_95_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 conv2d_95/BiasAdd/ReadVariableOpВ
conv2d_95/BiasAddBiasAddconv2d_95/Conv2D:output:0(conv2d_95/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџмм
2
conv2d_95/BiasAdd
conv2d_95/ReluReluconv2d_95/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџмм
2
conv2d_95/ReluЖ
$batch_normalization_6/ReadVariableOpReadVariableOp-batch_normalization_6_readvariableop_resource*
_output_shapes
:
*
dtype02&
$batch_normalization_6/ReadVariableOpМ
&batch_normalization_6/ReadVariableOp_1ReadVariableOp/batch_normalization_6_readvariableop_1_resource*
_output_shapes
:
*
dtype02(
&batch_normalization_6/ReadVariableOp_1щ
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype027
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype029
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1є
&batch_normalization_6/FusedBatchNormV3FusedBatchNormV3conv2d_95/Relu:activations:0,batch_normalization_6/ReadVariableOp:value:0.batch_normalization_6/ReadVariableOp_1:value:0=batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:џџџџџџџџџмм
:
:
:
:
:*
epsilon%o:*
exponential_avg_factor%
з#<2(
&batch_normalization_6/FusedBatchNormV3Б
$batch_normalization_6/AssignNewValueAssignVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource3batch_normalization_6/FusedBatchNormV3:batch_mean:06^batch_normalization_6/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*Q
_classG
ECloc:@batch_normalization_6/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_6/AssignNewValueП
&batch_normalization_6/AssignNewValue_1AssignVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_6/FusedBatchNormV3:batch_variance:08^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_6/AssignNewValue_1и
max_pooling2d_47/MaxPoolMaxPool*batch_normalization_6/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџnn
*
ksize
*
paddingVALID*
strides
2
max_pooling2d_47/MaxPoolГ
conv2d_96/Conv2D/ReadVariableOpReadVariableOp(conv2d_96_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_96/Conv2D/ReadVariableOpн
conv2d_96/Conv2DConv2D!max_pooling2d_47/MaxPool:output:0'conv2d_96/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџll
*
paddingVALID*
strides
2
conv2d_96/Conv2DЊ
 conv2d_96/BiasAdd/ReadVariableOpReadVariableOp)conv2d_96_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 conv2d_96/BiasAdd/ReadVariableOpА
conv2d_96/BiasAddBiasAddconv2d_96/Conv2D:output:0(conv2d_96/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџll
2
conv2d_96/BiasAdd~
conv2d_96/ReluReluconv2d_96/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџll
2
conv2d_96/ReluГ
conv2d_97/Conv2D/ReadVariableOpReadVariableOp(conv2d_97_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_97/Conv2D/ReadVariableOpи
conv2d_97/Conv2DConv2Dconv2d_96/Relu:activations:0'conv2d_97/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџjj
*
paddingVALID*
strides
2
conv2d_97/Conv2DЊ
 conv2d_97/BiasAdd/ReadVariableOpReadVariableOp)conv2d_97_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 conv2d_97/BiasAdd/ReadVariableOpА
conv2d_97/BiasAddBiasAddconv2d_97/Conv2D:output:0(conv2d_97/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџjj
2
conv2d_97/BiasAdd~
conv2d_97/ReluReluconv2d_97/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџjj
2
conv2d_97/ReluЖ
$batch_normalization_7/ReadVariableOpReadVariableOp-batch_normalization_7_readvariableop_resource*
_output_shapes
:
*
dtype02&
$batch_normalization_7/ReadVariableOpМ
&batch_normalization_7/ReadVariableOp_1ReadVariableOp/batch_normalization_7_readvariableop_1_resource*
_output_shapes
:
*
dtype02(
&batch_normalization_7/ReadVariableOp_1щ
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype027
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype029
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ђ
&batch_normalization_7/FusedBatchNormV3FusedBatchNormV3conv2d_97/Relu:activations:0,batch_normalization_7/ReadVariableOp:value:0.batch_normalization_7/ReadVariableOp_1:value:0=batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџjj
:
:
:
:
:*
epsilon%o:*
exponential_avg_factor%
з#<2(
&batch_normalization_7/FusedBatchNormV3Б
$batch_normalization_7/AssignNewValueAssignVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource3batch_normalization_7/FusedBatchNormV3:batch_mean:06^batch_normalization_7/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*Q
_classG
ECloc:@batch_normalization_7/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_7/AssignNewValueП
&batch_normalization_7/AssignNewValue_1AssignVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_7/FusedBatchNormV3:batch_variance:08^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_7/AssignNewValue_1и
max_pooling2d_48/MaxPoolMaxPool*batch_normalization_7/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ55
*
ksize
*
paddingVALID*
strides
2
max_pooling2d_48/MaxPoolГ
conv2d_98/Conv2D/ReadVariableOpReadVariableOp(conv2d_98_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_98/Conv2D/ReadVariableOpн
conv2d_98/Conv2DConv2D!max_pooling2d_48/MaxPool:output:0'conv2d_98/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ33
*
paddingVALID*
strides
2
conv2d_98/Conv2DЊ
 conv2d_98/BiasAdd/ReadVariableOpReadVariableOp)conv2d_98_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 conv2d_98/BiasAdd/ReadVariableOpА
conv2d_98/BiasAddBiasAddconv2d_98/Conv2D:output:0(conv2d_98/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ33
2
conv2d_98/BiasAdd~
conv2d_98/ReluReluconv2d_98/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ33
2
conv2d_98/ReluГ
conv2d_99/Conv2D/ReadVariableOpReadVariableOp(conv2d_99_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_99/Conv2D/ReadVariableOpи
conv2d_99/Conv2DConv2Dconv2d_98/Relu:activations:0'conv2d_99/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ11
*
paddingVALID*
strides
2
conv2d_99/Conv2DЊ
 conv2d_99/BiasAdd/ReadVariableOpReadVariableOp)conv2d_99_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 conv2d_99/BiasAdd/ReadVariableOpА
conv2d_99/BiasAddBiasAddconv2d_99/Conv2D:output:0(conv2d_99/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ11
2
conv2d_99/BiasAdd~
conv2d_99/ReluReluconv2d_99/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ11
2
conv2d_99/ReluЖ
$batch_normalization_8/ReadVariableOpReadVariableOp-batch_normalization_8_readvariableop_resource*
_output_shapes
:
*
dtype02&
$batch_normalization_8/ReadVariableOpМ
&batch_normalization_8/ReadVariableOp_1ReadVariableOp/batch_normalization_8_readvariableop_1_resource*
_output_shapes
:
*
dtype02(
&batch_normalization_8/ReadVariableOp_1щ
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype027
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype029
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ђ
&batch_normalization_8/FusedBatchNormV3FusedBatchNormV3conv2d_99/Relu:activations:0,batch_normalization_8/ReadVariableOp:value:0.batch_normalization_8/ReadVariableOp_1:value:0=batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ11
:
:
:
:
:*
epsilon%o:*
exponential_avg_factor%
з#<2(
&batch_normalization_8/FusedBatchNormV3Б
$batch_normalization_8/AssignNewValueAssignVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource3batch_normalization_8/FusedBatchNormV3:batch_mean:06^batch_normalization_8/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*Q
_classG
ECloc:@batch_normalization_8/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_8/AssignNewValueП
&batch_normalization_8/AssignNewValue_1AssignVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_8/FusedBatchNormV3:batch_variance:08^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_8/AssignNewValue_1и
max_pooling2d_49/MaxPoolMaxPool*batch_normalization_8/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ
*
ksize
*
paddingVALID*
strides
2
max_pooling2d_49/MaxPoolu
flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  2
flatten_19/ConstЄ
flatten_19/ReshapeReshape!max_pooling2d_49/MaxPool:output:0flatten_19/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ-2
flatten_19/ReshapeЊ
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource* 
_output_shapes
:
-*
dtype02 
dense_26/MatMul/ReadVariableOpЄ
dense_26/MatMulMatMulflatten_19/Reshape:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_26/MatMulЈ
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_26/BiasAdd/ReadVariableOpІ
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_26/BiasAddt
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_26/ReluЉ
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype02 
dense_27/MatMul/ReadVariableOpЃ
dense_27/MatMulMatMuldense_26/Relu:activations:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_27/MatMulЇ
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_27/BiasAdd/ReadVariableOpЅ
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_27/BiasAdd|
dense_27/SoftmaxSoftmaxdense_27/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_27/SoftmaxШ
IdentityIdentitydense_27/Softmax:softmax:0%^batch_normalization_6/AssignNewValue'^batch_normalization_6/AssignNewValue_16^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_1%^batch_normalization_7/AssignNewValue'^batch_normalization_7/AssignNewValue_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1%^batch_normalization_8/AssignNewValue'^batch_normalization_8/AssignNewValue_16^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_1!^conv2d_94/BiasAdd/ReadVariableOp ^conv2d_94/Conv2D/ReadVariableOp!^conv2d_95/BiasAdd/ReadVariableOp ^conv2d_95/Conv2D/ReadVariableOp!^conv2d_96/BiasAdd/ReadVariableOp ^conv2d_96/Conv2D/ReadVariableOp!^conv2d_97/BiasAdd/ReadVariableOp ^conv2d_97/Conv2D/ReadVariableOp!^conv2d_98/BiasAdd/ReadVariableOp ^conv2d_98/Conv2D/ReadVariableOp!^conv2d_99/BiasAdd/ReadVariableOp ^conv2d_99/Conv2D/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*Ђ
_input_shapes
:џџџџџџџџџрр::::::::::::::::::::::::::::2L
$batch_normalization_6/AssignNewValue$batch_normalization_6/AssignNewValue2P
&batch_normalization_6/AssignNewValue_1&batch_normalization_6/AssignNewValue_12n
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp5batch_normalization_6/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_17batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2P
&batch_normalization_6/ReadVariableOp_1&batch_normalization_6/ReadVariableOp_12L
$batch_normalization_7/AssignNewValue$batch_normalization_7/AssignNewValue2P
&batch_normalization_7/AssignNewValue_1&batch_normalization_7/AssignNewValue_12n
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp5batch_normalization_7/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_17batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2P
&batch_normalization_7/ReadVariableOp_1&batch_normalization_7/ReadVariableOp_12L
$batch_normalization_8/AssignNewValue$batch_normalization_8/AssignNewValue2P
&batch_normalization_8/AssignNewValue_1&batch_normalization_8/AssignNewValue_12n
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp5batch_normalization_8/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_17batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2P
&batch_normalization_8/ReadVariableOp_1&batch_normalization_8/ReadVariableOp_12D
 conv2d_94/BiasAdd/ReadVariableOp conv2d_94/BiasAdd/ReadVariableOp2B
conv2d_94/Conv2D/ReadVariableOpconv2d_94/Conv2D/ReadVariableOp2D
 conv2d_95/BiasAdd/ReadVariableOp conv2d_95/BiasAdd/ReadVariableOp2B
conv2d_95/Conv2D/ReadVariableOpconv2d_95/Conv2D/ReadVariableOp2D
 conv2d_96/BiasAdd/ReadVariableOp conv2d_96/BiasAdd/ReadVariableOp2B
conv2d_96/Conv2D/ReadVariableOpconv2d_96/Conv2D/ReadVariableOp2D
 conv2d_97/BiasAdd/ReadVariableOp conv2d_97/BiasAdd/ReadVariableOp2B
conv2d_97/Conv2D/ReadVariableOpconv2d_97/Conv2D/ReadVariableOp2D
 conv2d_98/BiasAdd/ReadVariableOp conv2d_98/BiasAdd/ReadVariableOp2B
conv2d_98/Conv2D/ReadVariableOpconv2d_98/Conv2D/ReadVariableOp2D
 conv2d_99/BiasAdd/ReadVariableOp conv2d_99/BiasAdd/ReadVariableOp2B
conv2d_99/Conv2D/ReadVariableOpconv2d_99/Conv2D/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs
С
є
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_106607

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
:
:
:
:
:*
epsilon%o:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
_user_specified_nameinputs
З

$__inference_signature_wrapper_106019
input_20
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identityЂStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinput_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_1047952
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*Ђ
_input_shapes
:џџџџџџџџџрр::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџрр
"
_user_specified_name
input_20
С
є
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_106775

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
:
:
:
:
:*
epsilon%o:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
_user_specified_nameinputs
к
Љ
6__inference_batch_normalization_8_layer_call_fn_106865

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ11
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_1054942
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ11
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ11
::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ11

 
_user_specified_nameinputs
у
~
)__inference_dense_26_layer_call_fn_106896

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_1055562
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ-::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs
В
M
1__inference_max_pooling2d_49_layer_call_fn_105143

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_1051372
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
љ	
н
D__inference_dense_27_layer_call_and_return_conditional_losses_106907

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
шо
Щ-
"__inference__traced_restore_107447
file_prefix%
!assignvariableop_conv2d_94_kernel%
!assignvariableop_1_conv2d_94_bias'
#assignvariableop_2_conv2d_95_kernel%
!assignvariableop_3_conv2d_95_bias2
.assignvariableop_4_batch_normalization_6_gamma1
-assignvariableop_5_batch_normalization_6_beta8
4assignvariableop_6_batch_normalization_6_moving_mean<
8assignvariableop_7_batch_normalization_6_moving_variance'
#assignvariableop_8_conv2d_96_kernel%
!assignvariableop_9_conv2d_96_bias(
$assignvariableop_10_conv2d_97_kernel&
"assignvariableop_11_conv2d_97_bias3
/assignvariableop_12_batch_normalization_7_gamma2
.assignvariableop_13_batch_normalization_7_beta9
5assignvariableop_14_batch_normalization_7_moving_mean=
9assignvariableop_15_batch_normalization_7_moving_variance(
$assignvariableop_16_conv2d_98_kernel&
"assignvariableop_17_conv2d_98_bias(
$assignvariableop_18_conv2d_99_kernel&
"assignvariableop_19_conv2d_99_bias3
/assignvariableop_20_batch_normalization_8_gamma2
.assignvariableop_21_batch_normalization_8_beta9
5assignvariableop_22_batch_normalization_8_moving_mean=
9assignvariableop_23_batch_normalization_8_moving_variance'
#assignvariableop_24_dense_26_kernel%
!assignvariableop_25_dense_26_bias'
#assignvariableop_26_dense_27_kernel%
!assignvariableop_27_dense_27_bias!
assignvariableop_28_adam_iter#
assignvariableop_29_adam_beta_1#
assignvariableop_30_adam_beta_2"
assignvariableop_31_adam_decay*
&assignvariableop_32_adam_learning_rate
assignvariableop_33_total
assignvariableop_34_count
assignvariableop_35_total_1
assignvariableop_36_count_1
assignvariableop_37_total_2
assignvariableop_38_count_2/
+assignvariableop_39_adam_conv2d_94_kernel_m-
)assignvariableop_40_adam_conv2d_94_bias_m/
+assignvariableop_41_adam_conv2d_95_kernel_m-
)assignvariableop_42_adam_conv2d_95_bias_m:
6assignvariableop_43_adam_batch_normalization_6_gamma_m9
5assignvariableop_44_adam_batch_normalization_6_beta_m/
+assignvariableop_45_adam_conv2d_96_kernel_m-
)assignvariableop_46_adam_conv2d_96_bias_m/
+assignvariableop_47_adam_conv2d_97_kernel_m-
)assignvariableop_48_adam_conv2d_97_bias_m:
6assignvariableop_49_adam_batch_normalization_7_gamma_m9
5assignvariableop_50_adam_batch_normalization_7_beta_m/
+assignvariableop_51_adam_conv2d_98_kernel_m-
)assignvariableop_52_adam_conv2d_98_bias_m/
+assignvariableop_53_adam_conv2d_99_kernel_m-
)assignvariableop_54_adam_conv2d_99_bias_m:
6assignvariableop_55_adam_batch_normalization_8_gamma_m9
5assignvariableop_56_adam_batch_normalization_8_beta_m.
*assignvariableop_57_adam_dense_26_kernel_m,
(assignvariableop_58_adam_dense_26_bias_m.
*assignvariableop_59_adam_dense_27_kernel_m,
(assignvariableop_60_adam_dense_27_bias_m/
+assignvariableop_61_adam_conv2d_94_kernel_v-
)assignvariableop_62_adam_conv2d_94_bias_v/
+assignvariableop_63_adam_conv2d_95_kernel_v-
)assignvariableop_64_adam_conv2d_95_bias_v:
6assignvariableop_65_adam_batch_normalization_6_gamma_v9
5assignvariableop_66_adam_batch_normalization_6_beta_v/
+assignvariableop_67_adam_conv2d_96_kernel_v-
)assignvariableop_68_adam_conv2d_96_bias_v/
+assignvariableop_69_adam_conv2d_97_kernel_v-
)assignvariableop_70_adam_conv2d_97_bias_v:
6assignvariableop_71_adam_batch_normalization_7_gamma_v9
5assignvariableop_72_adam_batch_normalization_7_beta_v/
+assignvariableop_73_adam_conv2d_98_kernel_v-
)assignvariableop_74_adam_conv2d_98_bias_v/
+assignvariableop_75_adam_conv2d_99_kernel_v-
)assignvariableop_76_adam_conv2d_99_bias_v:
6assignvariableop_77_adam_batch_normalization_8_gamma_v9
5assignvariableop_78_adam_batch_normalization_8_beta_v.
*assignvariableop_79_adam_dense_26_kernel_v,
(assignvariableop_80_adam_dense_26_bias_v.
*assignvariableop_81_adam_dense_27_kernel_v,
(assignvariableop_82_adam_dense_27_bias_v
identity_84ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_51ЂAssignVariableOp_52ЂAssignVariableOp_53ЂAssignVariableOp_54ЂAssignVariableOp_55ЂAssignVariableOp_56ЂAssignVariableOp_57ЂAssignVariableOp_58ЂAssignVariableOp_59ЂAssignVariableOp_6ЂAssignVariableOp_60ЂAssignVariableOp_61ЂAssignVariableOp_62ЂAssignVariableOp_63ЂAssignVariableOp_64ЂAssignVariableOp_65ЂAssignVariableOp_66ЂAssignVariableOp_67ЂAssignVariableOp_68ЂAssignVariableOp_69ЂAssignVariableOp_7ЂAssignVariableOp_70ЂAssignVariableOp_71ЂAssignVariableOp_72ЂAssignVariableOp_73ЂAssignVariableOp_74ЂAssignVariableOp_75ЂAssignVariableOp_76ЂAssignVariableOp_77ЂAssignVariableOp_78ЂAssignVariableOp_79ЂAssignVariableOp_8ЂAssignVariableOp_80ЂAssignVariableOp_81ЂAssignVariableOp_82ЂAssignVariableOp_9Х.
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*б-
valueЧ-BФ-TB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЙ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*Н
valueГBАTB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesв
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ц
_output_shapesг
а::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*b
dtypesX
V2T	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity 
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_94_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1І
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_94_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ј
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_95_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3І
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_95_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Г
AssignVariableOp_4AssignVariableOp.assignvariableop_4_batch_normalization_6_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5В
AssignVariableOp_5AssignVariableOp-assignvariableop_5_batch_normalization_6_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Й
AssignVariableOp_6AssignVariableOp4assignvariableop_6_batch_normalization_6_moving_meanIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Н
AssignVariableOp_7AssignVariableOp8assignvariableop_7_batch_normalization_6_moving_varianceIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ј
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_96_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9І
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_96_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ќ
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_97_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Њ
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_97_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12З
AssignVariableOp_12AssignVariableOp/assignvariableop_12_batch_normalization_7_gammaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ж
AssignVariableOp_13AssignVariableOp.assignvariableop_13_batch_normalization_7_betaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Н
AssignVariableOp_14AssignVariableOp5assignvariableop_14_batch_normalization_7_moving_meanIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15С
AssignVariableOp_15AssignVariableOp9assignvariableop_15_batch_normalization_7_moving_varianceIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ќ
AssignVariableOp_16AssignVariableOp$assignvariableop_16_conv2d_98_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Њ
AssignVariableOp_17AssignVariableOp"assignvariableop_17_conv2d_98_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ќ
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_99_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Њ
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_99_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20З
AssignVariableOp_20AssignVariableOp/assignvariableop_20_batch_normalization_8_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Ж
AssignVariableOp_21AssignVariableOp.assignvariableop_21_batch_normalization_8_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Н
AssignVariableOp_22AssignVariableOp5assignvariableop_22_batch_normalization_8_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23С
AssignVariableOp_23AssignVariableOp9assignvariableop_23_batch_normalization_8_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Ћ
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_26_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Љ
AssignVariableOp_25AssignVariableOp!assignvariableop_25_dense_26_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Ћ
AssignVariableOp_26AssignVariableOp#assignvariableop_26_dense_27_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Љ
AssignVariableOp_27AssignVariableOp!assignvariableop_27_dense_27_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_28Ѕ
AssignVariableOp_28AssignVariableOpassignvariableop_28_adam_iterIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Ї
AssignVariableOp_29AssignVariableOpassignvariableop_29_adam_beta_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Ї
AssignVariableOp_30AssignVariableOpassignvariableop_30_adam_beta_2Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31І
AssignVariableOp_31AssignVariableOpassignvariableop_31_adam_decayIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Ў
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_learning_rateIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Ё
AssignVariableOp_33AssignVariableOpassignvariableop_33_totalIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34Ё
AssignVariableOp_34AssignVariableOpassignvariableop_34_countIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35Ѓ
AssignVariableOp_35AssignVariableOpassignvariableop_35_total_1Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Ѓ
AssignVariableOp_36AssignVariableOpassignvariableop_36_count_1Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37Ѓ
AssignVariableOp_37AssignVariableOpassignvariableop_37_total_2Identity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38Ѓ
AssignVariableOp_38AssignVariableOpassignvariableop_38_count_2Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39Г
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_conv2d_94_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40Б
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_conv2d_94_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41Г
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv2d_95_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42Б
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv2d_95_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43О
AssignVariableOp_43AssignVariableOp6assignvariableop_43_adam_batch_normalization_6_gamma_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44Н
AssignVariableOp_44AssignVariableOp5assignvariableop_44_adam_batch_normalization_6_beta_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45Г
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_96_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46Б
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_96_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47Г
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_97_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48Б
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_97_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49О
AssignVariableOp_49AssignVariableOp6assignvariableop_49_adam_batch_normalization_7_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50Н
AssignVariableOp_50AssignVariableOp5assignvariableop_50_adam_batch_normalization_7_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51Г
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_conv2d_98_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52Б
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_conv2d_98_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53Г
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_conv2d_99_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54Б
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_conv2d_99_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55О
AssignVariableOp_55AssignVariableOp6assignvariableop_55_adam_batch_normalization_8_gamma_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56Н
AssignVariableOp_56AssignVariableOp5assignvariableop_56_adam_batch_normalization_8_beta_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57В
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_dense_26_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58А
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_dense_26_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59В
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_dense_27_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60А
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_dense_27_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61Г
AssignVariableOp_61AssignVariableOp+assignvariableop_61_adam_conv2d_94_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62Б
AssignVariableOp_62AssignVariableOp)assignvariableop_62_adam_conv2d_94_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63Г
AssignVariableOp_63AssignVariableOp+assignvariableop_63_adam_conv2d_95_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64Б
AssignVariableOp_64AssignVariableOp)assignvariableop_64_adam_conv2d_95_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65О
AssignVariableOp_65AssignVariableOp6assignvariableop_65_adam_batch_normalization_6_gamma_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66Н
AssignVariableOp_66AssignVariableOp5assignvariableop_66_adam_batch_normalization_6_beta_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67Г
AssignVariableOp_67AssignVariableOp+assignvariableop_67_adam_conv2d_96_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68Б
AssignVariableOp_68AssignVariableOp)assignvariableop_68_adam_conv2d_96_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69Г
AssignVariableOp_69AssignVariableOp+assignvariableop_69_adam_conv2d_97_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70Б
AssignVariableOp_70AssignVariableOp)assignvariableop_70_adam_conv2d_97_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71О
AssignVariableOp_71AssignVariableOp6assignvariableop_71_adam_batch_normalization_7_gamma_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72Н
AssignVariableOp_72AssignVariableOp5assignvariableop_72_adam_batch_normalization_7_beta_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73Г
AssignVariableOp_73AssignVariableOp+assignvariableop_73_adam_conv2d_98_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74Б
AssignVariableOp_74AssignVariableOp)assignvariableop_74_adam_conv2d_98_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75Г
AssignVariableOp_75AssignVariableOp+assignvariableop_75_adam_conv2d_99_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76Б
AssignVariableOp_76AssignVariableOp)assignvariableop_76_adam_conv2d_99_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77О
AssignVariableOp_77AssignVariableOp6assignvariableop_77_adam_batch_normalization_8_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78Н
AssignVariableOp_78AssignVariableOp5assignvariableop_78_adam_batch_normalization_8_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79В
AssignVariableOp_79AssignVariableOp*assignvariableop_79_adam_dense_26_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80А
AssignVariableOp_80AssignVariableOp(assignvariableop_80_adam_dense_26_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81В
AssignVariableOp_81AssignVariableOp*assignvariableop_81_adam_dense_27_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82А
AssignVariableOp_82AssignVariableOp(assignvariableop_82_adam_dense_27_bias_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_829
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp
Identity_83Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_83ѓ
Identity_84IdentityIdentity_83:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_84"#
identity_84Identity_84:output:0*у
_input_shapesб
Ю: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
С
є
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_106503

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:
*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:
*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:
*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:
*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
:
:
:
:
:*
epsilon%o:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
_user_specified_nameinputs


*__inference_conv2d_95_layer_call_fn_106401

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџмм
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_95_layer_call_and_return_conditional_losses_1051852
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:џџџџџџџџџмм
2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџоо
::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџоо

 
_user_specified_nameinputs


*__inference_conv2d_97_layer_call_fn_106569

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџjj
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_97_layer_call_and_return_conditional_losses_1053132
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџjj
2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџll
::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџll

 
_user_specified_nameinputs"БL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*З
serving_defaultЃ
G
input_20;
serving_default_input_20:0џџџџџџџџџрр<
dense_270
StatefulPartitionedCall:0џџџџџџџџџ
tensorflow/serving/predict:ЏІ
У
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer_with_weights-8
layer-10
layer-11
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
_default_save_signature
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_sequentialэ{"class_name": "Sequential", "name": "TinyVGG-Extra-Conv-BatchNorm-Dense", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "TinyVGG-Extra-Conv-BatchNorm-Dense", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_20"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_94", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_95", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_47", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_96", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_97", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_48", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_98", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_99", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_49", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_19", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 224, 224, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "TinyVGG-Extra-Conv-BatchNorm-Dense", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_20"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_94", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_95", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_47", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_96", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_97", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_48", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_98", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_99", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_49", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_19", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "f1", "dtype": "float32", "fn": "f1"}}, {"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
ї	

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"а
_tf_keras_layerЖ{"class_name": "Conv2D", "name": "conv2d_94", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_94", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 224, 224, 3]}}
љ	

kernel
bias
regularization_losses
	variables
 trainable_variables
!	keras_api
+&call_and_return_all_conditional_losses
__call__"в
_tf_keras_layerИ{"class_name": "Conv2D", "name": "conv2d_95", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_95", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 222, 222, 10]}}
О	
"axis
	#gamma
$beta
%moving_mean
&moving_variance
'regularization_losses
(	variables
)trainable_variables
*	keras_api
+&call_and_return_all_conditional_losses
__call__"ш
_tf_keras_layerЮ{"class_name": "BatchNormalization", "name": "batch_normalization_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 220, 220, 10]}}

+regularization_losses
,	variables
-trainable_variables
.	keras_api
+&call_and_return_all_conditional_losses
__call__"ђ
_tf_keras_layerи{"class_name": "MaxPooling2D", "name": "max_pooling2d_47", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_47", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
љ	

/kernel
0bias
1regularization_losses
2	variables
3trainable_variables
4	keras_api
+&call_and_return_all_conditional_losses
__call__"в
_tf_keras_layerИ{"class_name": "Conv2D", "name": "conv2d_96", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_96", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 110, 110, 10]}}
љ	

5kernel
6bias
7regularization_losses
8	variables
9trainable_variables
:	keras_api
+&call_and_return_all_conditional_losses
__call__"в
_tf_keras_layerИ{"class_name": "Conv2D", "name": "conv2d_97", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_97", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 108, 108, 10]}}
О	
;axis
	<gamma
=beta
>moving_mean
?moving_variance
@regularization_losses
A	variables
Btrainable_variables
C	keras_api
+&call_and_return_all_conditional_losses
__call__"ш
_tf_keras_layerЮ{"class_name": "BatchNormalization", "name": "batch_normalization_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 106, 106, 10]}}

Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
+&call_and_return_all_conditional_losses
__call__"ђ
_tf_keras_layerи{"class_name": "MaxPooling2D", "name": "max_pooling2d_48", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_48", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ї	

Hkernel
Ibias
Jregularization_losses
K	variables
Ltrainable_variables
M	keras_api
+&call_and_return_all_conditional_losses
__call__"а
_tf_keras_layerЖ{"class_name": "Conv2D", "name": "conv2d_98", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_98", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 53, 53, 10]}}
ї	

Nkernel
Obias
Pregularization_losses
Q	variables
Rtrainable_variables
S	keras_api
+&call_and_return_all_conditional_losses
__call__"а
_tf_keras_layerЖ{"class_name": "Conv2D", "name": "conv2d_99", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_99", "trainable": true, "dtype": "float32", "filters": 10, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 51, 51, 10]}}
М	
Taxis
	Ugamma
Vbeta
Wmoving_mean
Xmoving_variance
Yregularization_losses
Z	variables
[trainable_variables
\	keras_api
+&call_and_return_all_conditional_losses
__call__"ц
_tf_keras_layerЬ{"class_name": "BatchNormalization", "name": "batch_normalization_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 49, 49, 10]}}

]regularization_losses
^	variables
_trainable_variables
`	keras_api
+&call_and_return_all_conditional_losses
__call__"ђ
_tf_keras_layerи{"class_name": "MaxPooling2D", "name": "max_pooling2d_49", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_49", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ъ
aregularization_losses
b	variables
ctrainable_variables
d	keras_api
+&call_and_return_all_conditional_losses
__call__"й
_tf_keras_layerП{"class_name": "Flatten", "name": "flatten_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_19", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
љ

ekernel
fbias
gregularization_losses
h	variables
itrainable_variables
j	keras_api
+ &call_and_return_all_conditional_losses
Ё__call__"в
_tf_keras_layerИ{"class_name": "Dense", "name": "dense_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 5760}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5760]}}
љ

kkernel
lbias
mregularization_losses
n	variables
otrainable_variables
p	keras_api
+Ђ&call_and_return_all_conditional_losses
Ѓ__call__"в
_tf_keras_layerИ{"class_name": "Dense", "name": "dense_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}

qiter

rbeta_1

sbeta_2
	tdecay
ulearning_ratemзmиmйmк#mл$mм/mн0mо5mп6mр<mс=mтHmуImфNmхOmцUmчVmшemщfmъkmыlmьvэvюvяv№#vё$vђ/vѓ0vє5vѕ6vі<vї=vјHvљIvњNvћOvќUv§Vvўevџfvkvlv"
	optimizer
 "
trackable_list_wrapper
і
0
1
2
3
#4
$5
%6
&7
/8
09
510
611
<12
=13
>14
?15
H16
I17
N18
O19
U20
V21
W22
X23
e24
f25
k26
l27"
trackable_list_wrapper
Ц
0
1
2
3
#4
$5
/6
07
58
69
<10
=11
H12
I13
N14
O15
U16
V17
e18
f19
k20
l21"
trackable_list_wrapper
Ю
regularization_losses
vnon_trainable_variables
wmetrics

xlayers
ylayer_regularization_losses
	variables
trainable_variables
zlayer_metrics
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
Єserving_default"
signature_map
*:(
2conv2d_94/kernel
:
2conv2d_94/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
А
regularization_losses
{non_trainable_variables
|metrics
}layer_regularization_losses

~layers
	variables
trainable_variables
layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
*:(

2conv2d_95/kernel
:
2conv2d_95/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
Е
regularization_losses
non_trainable_variables
metrics
 layer_regularization_losses
layers
	variables
 trainable_variables
layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'
2batch_normalization_6/gamma
(:&
2batch_normalization_6/beta
1:/
 (2!batch_normalization_6/moving_mean
5:3
 (2%batch_normalization_6/moving_variance
 "
trackable_list_wrapper
<
#0
$1
%2
&3"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
Е
'regularization_losses
non_trainable_variables
metrics
 layer_regularization_losses
layers
(	variables
)trainable_variables
layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
+regularization_losses
non_trainable_variables
metrics
 layer_regularization_losses
layers
,	variables
-trainable_variables
layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
*:(

2conv2d_96/kernel
:
2conv2d_96/bias
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
Е
1regularization_losses
non_trainable_variables
metrics
 layer_regularization_losses
layers
2	variables
3trainable_variables
layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
*:(

2conv2d_97/kernel
:
2conv2d_97/bias
 "
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
Е
7regularization_losses
non_trainable_variables
metrics
 layer_regularization_losses
layers
8	variables
9trainable_variables
layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'
2batch_normalization_7/gamma
(:&
2batch_normalization_7/beta
1:/
 (2!batch_normalization_7/moving_mean
5:3
 (2%batch_normalization_7/moving_variance
 "
trackable_list_wrapper
<
<0
=1
>2
?3"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
Е
@regularization_losses
non_trainable_variables
metrics
 layer_regularization_losses
layers
A	variables
Btrainable_variables
layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Dregularization_losses
non_trainable_variables
metrics
  layer_regularization_losses
Ёlayers
E	variables
Ftrainable_variables
Ђlayer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
*:(

2conv2d_98/kernel
:
2conv2d_98/bias
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
Е
Jregularization_losses
Ѓnon_trainable_variables
Єmetrics
 Ѕlayer_regularization_losses
Іlayers
K	variables
Ltrainable_variables
Їlayer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
*:(

2conv2d_99/kernel
:
2conv2d_99/bias
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
Е
Pregularization_losses
Јnon_trainable_variables
Љmetrics
 Њlayer_regularization_losses
Ћlayers
Q	variables
Rtrainable_variables
Ќlayer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'
2batch_normalization_8/gamma
(:&
2batch_normalization_8/beta
1:/
 (2!batch_normalization_8/moving_mean
5:3
 (2%batch_normalization_8/moving_variance
 "
trackable_list_wrapper
<
U0
V1
W2
X3"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
Е
Yregularization_losses
­non_trainable_variables
Ўmetrics
 Џlayer_regularization_losses
Аlayers
Z	variables
[trainable_variables
Бlayer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
]regularization_losses
Вnon_trainable_variables
Гmetrics
 Дlayer_regularization_losses
Еlayers
^	variables
_trainable_variables
Жlayer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
aregularization_losses
Зnon_trainable_variables
Иmetrics
 Йlayer_regularization_losses
Кlayers
b	variables
ctrainable_variables
Лlayer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
#:!
-2dense_26/kernel
:2dense_26/bias
 "
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
Е
gregularization_losses
Мnon_trainable_variables
Нmetrics
 Оlayer_regularization_losses
Пlayers
h	variables
itrainable_variables
Рlayer_metrics
Ё__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
": 	
2dense_27/kernel
:
2dense_27/bias
 "
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
Е
mregularization_losses
Сnon_trainable_variables
Тmetrics
 Уlayer_regularization_losses
Фlayers
n	variables
otrainable_variables
Хlayer_metrics
Ѓ__call__
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
J
%0
&1
>2
?3
W4
X5"
trackable_list_wrapper
8
Ц0
Ч1
Ш2"
trackable_list_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
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
.
%0
&1"
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
.
>0
?1"
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
.
W0
X1"
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
П

Щtotal

Ъcount
Ы	variables
Ь	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
х

Эtotal

Юcount
Я
_fn_kwargs
а	variables
б	keras_api"
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "f1", "dtype": "float32", "config": {"name": "f1", "dtype": "float32", "fn": "f1"}}


вtotal

гcount
д
_fn_kwargs
е	variables
ж	keras_api"И
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
0
Щ0
Ъ1"
trackable_list_wrapper
.
Ы	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Э0
Ю1"
trackable_list_wrapper
.
а	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
в0
г1"
trackable_list_wrapper
.
е	variables"
_generic_user_object
/:-
2Adam/conv2d_94/kernel/m
!:
2Adam/conv2d_94/bias/m
/:-

2Adam/conv2d_95/kernel/m
!:
2Adam/conv2d_95/bias/m
.:,
2"Adam/batch_normalization_6/gamma/m
-:+
2!Adam/batch_normalization_6/beta/m
/:-

2Adam/conv2d_96/kernel/m
!:
2Adam/conv2d_96/bias/m
/:-

2Adam/conv2d_97/kernel/m
!:
2Adam/conv2d_97/bias/m
.:,
2"Adam/batch_normalization_7/gamma/m
-:+
2!Adam/batch_normalization_7/beta/m
/:-

2Adam/conv2d_98/kernel/m
!:
2Adam/conv2d_98/bias/m
/:-

2Adam/conv2d_99/kernel/m
!:
2Adam/conv2d_99/bias/m
.:,
2"Adam/batch_normalization_8/gamma/m
-:+
2!Adam/batch_normalization_8/beta/m
(:&
-2Adam/dense_26/kernel/m
!:2Adam/dense_26/bias/m
':%	
2Adam/dense_27/kernel/m
 :
2Adam/dense_27/bias/m
/:-
2Adam/conv2d_94/kernel/v
!:
2Adam/conv2d_94/bias/v
/:-

2Adam/conv2d_95/kernel/v
!:
2Adam/conv2d_95/bias/v
.:,
2"Adam/batch_normalization_6/gamma/v
-:+
2!Adam/batch_normalization_6/beta/v
/:-

2Adam/conv2d_96/kernel/v
!:
2Adam/conv2d_96/bias/v
/:-

2Adam/conv2d_97/kernel/v
!:
2Adam/conv2d_97/bias/v
.:,
2"Adam/batch_normalization_7/gamma/v
-:+
2!Adam/batch_normalization_7/beta/v
/:-

2Adam/conv2d_98/kernel/v
!:
2Adam/conv2d_98/bias/v
/:-

2Adam/conv2d_99/kernel/v
!:
2Adam/conv2d_99/bias/v
.:,
2"Adam/batch_normalization_8/gamma/v
-:+
2!Adam/batch_normalization_8/beta/v
(:&
-2Adam/dense_26/kernel/v
!:2Adam/dense_26/bias/v
':%	
2Adam/dense_27/kernel/v
 :
2Adam/dense_27/bias/v
ъ2ч
!__inference__wrapped_model_104795С
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *1Ђ.
,)
input_20џџџџџџџџџрр
Ц2У
^__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_and_return_conditional_losses_105600
^__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_and_return_conditional_losses_106132
^__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_and_return_conditional_losses_105675
^__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_and_return_conditional_losses_106239Р
ЗВГ
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
kwonlydefaultsЊ 
annotationsЊ *
 
к2з
C__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_fn_105812
C__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_fn_105948
C__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_fn_106300
C__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_fn_106361Р
ЗВГ
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
kwonlydefaultsЊ 
annotationsЊ *
 
я2ь
E__inference_conv2d_94_layer_call_and_return_conditional_losses_106372Ђ
В
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
annotationsЊ *
 
д2б
*__inference_conv2d_94_layer_call_fn_106381Ђ
В
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
annotationsЊ *
 
я2ь
E__inference_conv2d_95_layer_call_and_return_conditional_losses_106392Ђ
В
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
annotationsЊ *
 
д2б
*__inference_conv2d_95_layer_call_fn_106401Ђ
В
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
annotationsЊ *
 
2
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_106503
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_106439
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_106485
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_106421Д
ЋВЇ
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
kwonlydefaultsЊ 
annotationsЊ *
 
2
6__inference_batch_normalization_6_layer_call_fn_106465
6__inference_batch_normalization_6_layer_call_fn_106529
6__inference_batch_normalization_6_layer_call_fn_106452
6__inference_batch_normalization_6_layer_call_fn_106516Д
ЋВЇ
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
kwonlydefaultsЊ 
annotationsЊ *
 
Д2Б
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_104905р
В
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
1__inference_max_pooling2d_47_layer_call_fn_104911р
В
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
я2ь
E__inference_conv2d_96_layer_call_and_return_conditional_losses_106540Ђ
В
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
annotationsЊ *
 
д2б
*__inference_conv2d_96_layer_call_fn_106549Ђ
В
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
annotationsЊ *
 
я2ь
E__inference_conv2d_97_layer_call_and_return_conditional_losses_106560Ђ
В
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
annotationsЊ *
 
д2б
*__inference_conv2d_97_layer_call_fn_106569Ђ
В
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
annotationsЊ *
 
2
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_106589
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_106607
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_106671
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_106653Д
ЋВЇ
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
kwonlydefaultsЊ 
annotationsЊ *
 
2
6__inference_batch_normalization_7_layer_call_fn_106620
6__inference_batch_normalization_7_layer_call_fn_106684
6__inference_batch_normalization_7_layer_call_fn_106633
6__inference_batch_normalization_7_layer_call_fn_106697Д
ЋВЇ
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
kwonlydefaultsЊ 
annotationsЊ *
 
Д2Б
L__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_105021р
В
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
1__inference_max_pooling2d_48_layer_call_fn_105027р
В
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
я2ь
E__inference_conv2d_98_layer_call_and_return_conditional_losses_106708Ђ
В
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
annotationsЊ *
 
д2б
*__inference_conv2d_98_layer_call_fn_106717Ђ
В
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
annotationsЊ *
 
я2ь
E__inference_conv2d_99_layer_call_and_return_conditional_losses_106728Ђ
В
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
annotationsЊ *
 
д2б
*__inference_conv2d_99_layer_call_fn_106737Ђ
В
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
annotationsЊ *
 
2
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_106775
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_106821
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_106757
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_106839Д
ЋВЇ
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
kwonlydefaultsЊ 
annotationsЊ *
 
2
6__inference_batch_normalization_8_layer_call_fn_106801
6__inference_batch_normalization_8_layer_call_fn_106865
6__inference_batch_normalization_8_layer_call_fn_106788
6__inference_batch_normalization_8_layer_call_fn_106852Д
ЋВЇ
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
kwonlydefaultsЊ 
annotationsЊ *
 
Д2Б
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_105137р
В
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
1__inference_max_pooling2d_49_layer_call_fn_105143р
В
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
№2э
F__inference_flatten_19_layer_call_and_return_conditional_losses_106871Ђ
В
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
annotationsЊ *
 
е2в
+__inference_flatten_19_layer_call_fn_106876Ђ
В
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
annotationsЊ *
 
ю2ы
D__inference_dense_26_layer_call_and_return_conditional_losses_106887Ђ
В
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
annotationsЊ *
 
г2а
)__inference_dense_26_layer_call_fn_106896Ђ
В
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
annotationsЊ *
 
ю2ы
D__inference_dense_27_layer_call_and_return_conditional_losses_106907Ђ
В
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
annotationsЊ *
 
г2а
)__inference_dense_27_layer_call_fn_106916Ђ
В
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
annotationsЊ *
 
ЬBЩ
$__inference_signature_wrapper_106019input_20"
В
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
annotationsЊ *
 э
^__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_and_return_conditional_losses_105600#$%&/056<=>?HINOUVWXefklCЂ@
9Ђ6
,)
input_20џџџџџџџџџрр
p

 
Њ "%Ђ"

0џџџџџџџџџ

 э
^__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_and_return_conditional_losses_105675#$%&/056<=>?HINOUVWXefklCЂ@
9Ђ6
,)
input_20џџџџџџџџџрр
p 

 
Њ "%Ђ"

0џџџџџџџџџ

 ы
^__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_and_return_conditional_losses_106132#$%&/056<=>?HINOUVWXefklAЂ>
7Ђ4
*'
inputsџџџџџџџџџрр
p

 
Њ "%Ђ"

0џџџџџџџџџ

 ы
^__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_and_return_conditional_losses_106239#$%&/056<=>?HINOUVWXefklAЂ>
7Ђ4
*'
inputsџџџџџџџџџрр
p 

 
Њ "%Ђ"

0џџџџџџџџџ

 Ф
C__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_fn_105812}#$%&/056<=>?HINOUVWXefklCЂ@
9Ђ6
,)
input_20џџџџџџџџџрр
p

 
Њ "џџџџџџџџџ
Ф
C__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_fn_105948}#$%&/056<=>?HINOUVWXefklCЂ@
9Ђ6
,)
input_20џџџџџџџџџрр
p 

 
Њ "џџџџџџџџџ
Т
C__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_fn_106300{#$%&/056<=>?HINOUVWXefklAЂ>
7Ђ4
*'
inputsџџџџџџџџџрр
p

 
Њ "џџџџџџџџџ
Т
C__inference_TinyVGG-Extra-Conv-BatchNorm-Dense_layer_call_fn_106361{#$%&/056<=>?HINOUVWXefklAЂ>
7Ђ4
*'
inputsџџџџџџџџџрр
p 

 
Њ "џџџџџџџџџ
Ж
!__inference__wrapped_model_104795#$%&/056<=>?HINOUVWXefkl;Ђ8
1Ђ.
,)
input_20џџџџџџџџџрр
Њ "3Њ0
.
dense_27"
dense_27џџџџџџџџџ
Ы
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_106421v#$%&=Ђ:
3Ђ0
*'
inputsџџџџџџџџџмм

p
Њ "/Ђ,
%"
0џџџџџџџџџмм

 Ы
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_106439v#$%&=Ђ:
3Ђ0
*'
inputsџџџџџџџџџмм

p 
Њ "/Ђ,
%"
0џџџџџџџџџмм

 ь
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_106485#$%&MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 ь
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_106503#$%&MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 Ѓ
6__inference_batch_normalization_6_layer_call_fn_106452i#$%&=Ђ:
3Ђ0
*'
inputsџџџџџџџџџмм

p
Њ ""џџџџџџџџџмм
Ѓ
6__inference_batch_normalization_6_layer_call_fn_106465i#$%&=Ђ:
3Ђ0
*'
inputsџџџџџџџџџмм

p 
Њ ""џџџџџџџџџмм
Ф
6__inference_batch_normalization_6_layer_call_fn_106516#$%&MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ф
6__inference_batch_normalization_6_layer_call_fn_106529#$%&MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
ь
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_106589<=>?MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 ь
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_106607<=>?MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 Ч
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_106653r<=>?;Ђ8
1Ђ.
(%
inputsџџџџџџџџџjj

p
Њ "-Ђ*
# 
0џџџџџџџџџjj

 Ч
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_106671r<=>?;Ђ8
1Ђ.
(%
inputsџџџџџџџџџjj

p 
Њ "-Ђ*
# 
0џџџџџџџџџjj

 Ф
6__inference_batch_normalization_7_layer_call_fn_106620<=>?MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ф
6__inference_batch_normalization_7_layer_call_fn_106633<=>?MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

6__inference_batch_normalization_7_layer_call_fn_106684e<=>?;Ђ8
1Ђ.
(%
inputsџџџџџџџџџjj

p
Њ " џџџџџџџџџjj

6__inference_batch_normalization_7_layer_call_fn_106697e<=>?;Ђ8
1Ђ.
(%
inputsџџџџџџџџџjj

p 
Њ " џџџџџџџџџjj
ь
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_106757UVWXMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 ь
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_106775UVWXMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 Ч
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_106821rUVWX;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ11

p
Њ "-Ђ*
# 
0џџџџџџџџџ11

 Ч
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_106839rUVWX;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ11

p 
Њ "-Ђ*
# 
0џџџџџџџџџ11

 Ф
6__inference_batch_normalization_8_layer_call_fn_106788UVWXMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ф
6__inference_batch_normalization_8_layer_call_fn_106801UVWXMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

6__inference_batch_normalization_8_layer_call_fn_106852eUVWX;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ11

p
Њ " џџџџџџџџџ11

6__inference_batch_normalization_8_layer_call_fn_106865eUVWX;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ11

p 
Њ " џџџџџџџџџ11
Й
E__inference_conv2d_94_layer_call_and_return_conditional_losses_106372p9Ђ6
/Ђ,
*'
inputsџџџџџџџџџрр
Њ "/Ђ,
%"
0џџџџџџџџџоо

 
*__inference_conv2d_94_layer_call_fn_106381c9Ђ6
/Ђ,
*'
inputsџџџџџџџџџрр
Њ ""џџџџџџџџџоо
Й
E__inference_conv2d_95_layer_call_and_return_conditional_losses_106392p9Ђ6
/Ђ,
*'
inputsџџџџџџџџџоо

Њ "/Ђ,
%"
0џџџџџџџџџмм

 
*__inference_conv2d_95_layer_call_fn_106401c9Ђ6
/Ђ,
*'
inputsџџџџџџџџџоо

Њ ""џџџџџџџџџмм
Е
E__inference_conv2d_96_layer_call_and_return_conditional_losses_106540l/07Ђ4
-Ђ*
(%
inputsџџџџџџџџџnn

Њ "-Ђ*
# 
0џџџџџџџџџll

 
*__inference_conv2d_96_layer_call_fn_106549_/07Ђ4
-Ђ*
(%
inputsџџџџџџџџџnn

Њ " џџџџџџџџџll
Е
E__inference_conv2d_97_layer_call_and_return_conditional_losses_106560l567Ђ4
-Ђ*
(%
inputsџџџџџџџџџll

Њ "-Ђ*
# 
0џџџџџџџџџjj

 
*__inference_conv2d_97_layer_call_fn_106569_567Ђ4
-Ђ*
(%
inputsџџџџџџџџџll

Њ " џџџџџџџџџjj
Е
E__inference_conv2d_98_layer_call_and_return_conditional_losses_106708lHI7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ55

Њ "-Ђ*
# 
0џџџџџџџџџ33

 
*__inference_conv2d_98_layer_call_fn_106717_HI7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ55

Њ " џџџџџџџџџ33
Е
E__inference_conv2d_99_layer_call_and_return_conditional_losses_106728lNO7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ33

Њ "-Ђ*
# 
0џџџџџџџџџ11

 
*__inference_conv2d_99_layer_call_fn_106737_NO7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ33

Њ " џџџџџџџџџ11
І
D__inference_dense_26_layer_call_and_return_conditional_losses_106887^ef0Ђ-
&Ђ#
!
inputsџџџџџџџџџ-
Њ "&Ђ#

0џџџџџџџџџ
 ~
)__inference_dense_26_layer_call_fn_106896Qef0Ђ-
&Ђ#
!
inputsџџџџџџџџџ-
Њ "џџџџџџџџџЅ
D__inference_dense_27_layer_call_and_return_conditional_losses_106907]kl0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ

 }
)__inference_dense_27_layer_call_fn_106916Pkl0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџ
Ћ
F__inference_flatten_19_layer_call_and_return_conditional_losses_106871a7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ

Њ "&Ђ#

0џџџџџџџџџ-
 
+__inference_flatten_19_layer_call_fn_106876T7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ

Њ "џџџџџџџџџ-я
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_104905RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ч
1__inference_max_pooling2d_47_layer_call_fn_104911RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџя
L__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_105021RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ч
1__inference_max_pooling2d_48_layer_call_fn_105027RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџя
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_105137RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ч
1__inference_max_pooling2d_49_layer_call_fn_105143RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџХ
$__inference_signature_wrapper_106019#$%&/056<=>?HINOUVWXefklGЂD
Ђ 
=Њ:
8
input_20,)
input_20џџџџџџџџџрр"3Њ0
.
dense_27"
dense_27џџџџџџџџџ
