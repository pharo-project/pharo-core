ffiTestInt: c1 with: c2 with: c3 with: c4
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >
	^ self ffiCall: #( long ffiTestInts ( long c1, long c2, long c3, long c4 ) )