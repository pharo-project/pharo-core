ffiTestLongLong: long1 with: long2
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >	
	^ self ffiCall: #( longlong ffiTestLongLong ( longlong long1, longlong long2 ) )