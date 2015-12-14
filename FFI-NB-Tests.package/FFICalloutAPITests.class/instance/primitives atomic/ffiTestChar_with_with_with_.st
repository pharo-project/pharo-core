ffiTestChar: c1 with: c2 with: c3 with: c4
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >
	^ self ffiCall: #( char ffiTestChars ( char c1, char c2, char c3, char c4 ) )