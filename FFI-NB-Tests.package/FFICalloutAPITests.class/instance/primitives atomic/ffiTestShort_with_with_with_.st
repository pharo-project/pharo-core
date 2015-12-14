ffiTestShort: c1 with: c2 with: c3 with: c4
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >	
	^ self ffiCall: #( short ffiTestShorts ( short c1,  short c2, short c3, short c4 ) )