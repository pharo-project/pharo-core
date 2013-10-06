printf: aString

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout function: #( void printf (String printFormat, String aString) )
		module: NativeBoost CLibrary