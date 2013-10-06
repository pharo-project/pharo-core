encodeToUTF8: aWideString

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^
		self nbCallout 
			function: #(String (NBUTF8StringExample aWideString)) 
			emit: [:gen :proxy :asm |
				asm pop: asm EAX
			] 