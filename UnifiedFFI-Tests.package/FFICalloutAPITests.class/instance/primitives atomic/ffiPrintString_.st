ffiPrintString: aString
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >
	^ self ffiCall: #( String ffiPrintString ( String aString ) )
