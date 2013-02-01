tests
testBuildingFnSpecWithQueries

	| generator type s |
	generator := NBFFICallout new.
	
	CLASSVAR := 100.
	TYPEVAR := 'long'.
	
	generator
		requestor: self;
		methodArgs: #( 'arg1' 'arg2' 'arg3' );
		cdecl;
		anonSpec: #( long* (int self , int arg3@2,  String arg1, void**arg2, TYPEVAR arg1, long **arg1@1, char arg3, 0, nil, true, false , CLASSVAR ) ).


	type := generator fnSpec returnType.
	self assert: (type class == NBInt32).	
	self assert: (type pointerArity = 1).
	
	self assert: (generator fnSpec arguments size = 12).
	s := generator fnSpec arguments readStream.
"int self"		self checkType: s next class:  NBInt32 arity: 0 stackIndex: 3 .
"int arg3@2"    self checkType: s next class: NBInt32 arity: 0 stackIndex: 0 elementIndex: 2.
"String arg1"	self checkType: s next class: NBExternalString arity: 0 stackIndex: 2 .
"void**arg2"	self checkType: s next class: NBVoid arity: 2 stackIndex: 1.
"TYPEVAR arg1"	self checkType: s next class:  NBInt32 arity: 0 stackIndex: 2.
"long ** arg1@1"    self checkType: s next class: NBInt32 arity: 2 stackIndex: 2 elementIndex: 1.
"char arg3"		self checkType: s next class: NBCharacterType arity: 0 stackIndex: 0.
"0"				self checkType: s next class: NBFFIConst value: 0.
"nil"				self checkType: s next class: NBFFIConst value: 0.
"true"			self checkType: s next class: NBFFIConst value: 1.
"false"			self checkType: s next class: NBFFIConst value: 0.
"CLASSVAR"	self checkType: s next class: NBFFIConst value: 100.

