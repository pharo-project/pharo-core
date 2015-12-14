ffiTestIntConstantWith: aNumber
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >
	^ self ffiCall: #( long ffiTestInts ( 65, 65, 65, long aNumber ) )