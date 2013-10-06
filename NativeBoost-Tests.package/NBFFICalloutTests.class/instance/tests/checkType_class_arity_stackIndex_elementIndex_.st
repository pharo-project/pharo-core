checkType: type class: typeClass arity: ptrArity stackIndex: stackIndex elementIndex: anIndex

	self assert: type class == typeClass.
	self assert: type pointerArity = ptrArity.
	self assert: type loader class == NBSTIndirectArgument.
	self assert: type loader argumentLoader stackIndex = stackIndex. 
	self assert: type loader elementIndex = anIndex  
	