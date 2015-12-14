ffiTestFloats: f1 with: f2
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >
	^ self ffiCall: #( float ffiTestFloats ( float f1, float f2 ) )