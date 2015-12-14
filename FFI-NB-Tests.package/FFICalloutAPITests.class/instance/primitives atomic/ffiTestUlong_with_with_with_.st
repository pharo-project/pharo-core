ffiTestUlong: c1 with: c2 with: c3 with: c4
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >	
	^ self ffiCall: #( long ffiTestInts ( ulong c1, ulong c2, ulong c3, ulong c4 ) )