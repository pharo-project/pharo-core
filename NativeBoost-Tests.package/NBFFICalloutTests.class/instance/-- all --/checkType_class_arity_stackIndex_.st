checkType: type class: typeClass arity: ptrArity stackIndex: stackIndex

	self assert: type class == typeClass.
	self assert: type pointerArity = ptrArity.
	self assert: type loader class == NBSTMethodArgument.
	self assert: type loader stackIndex = stackIndex 