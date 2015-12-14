testResolveType
	| externalArray |
	
	externalArray := FFIExternalArray basicNew. 
	
	self assert: (externalArray resolveType: 'int') class equals: FFIInt32.
	self assert: (externalArray resolveType: 'String') class equals: FFIExternalString.
	self assert: (externalArray resolveType: 'char') class equals: FFICharacterType.
	self assert: (externalArray resolveType: 'void *') class equals: FFIVoid.
	self assert: (externalArray resolveType: 'void *') pointerArity equals: 1.
	self assert: (externalArray resolveType: FFIUInt16) class equals: FFIUInt16.
	self assert: (externalArray resolveType: String) class equals: FFIExternalString.