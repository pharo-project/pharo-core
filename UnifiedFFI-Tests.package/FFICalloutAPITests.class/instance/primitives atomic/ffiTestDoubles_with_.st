ffiTestDoubles: f1 with: f2
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >
	^ self ffiCall: #( double ffiTestDoubles ( double f1, double f2 ) )