as yet unclassified
argName: argName indirectIndex: anIndex type: typeName ptrArity: ptrArity

	| arg |
	arg := NBNativeFunctionArgument new.
	arg type: (self typeName: typeName ptrArity: ptrArity).
	arg name: argName.
	
	^ arg
	