convertByteString: aByteString 

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	^ NBFFICallout cdecl: #( void (void * aByteString)) emitCall: [:gen :proxy :anAsm |
		
		
		
		
		
	]