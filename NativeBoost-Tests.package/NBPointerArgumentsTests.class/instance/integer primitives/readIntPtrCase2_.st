readIntPtrCase2: anInt
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	^self primitiveInt: anInt case: self case2
		