primEnumToInt1: aMyEnumInst
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	^ NBFFICallout 
		cdecl: {NBInt32. {self enumClass. #aMyEnumInst}}
		emitCall: [ :gen :proxy :asm | 
			asm pop: asm EAX 
		]