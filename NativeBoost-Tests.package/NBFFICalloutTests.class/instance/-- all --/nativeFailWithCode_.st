nativeFailWithCode: aCode

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout 
		function: #(void (uint aCode) ) emit: [:gen :proxy :asm |
			asm pop: asm EAX.
			gen failWithCode: asm EAX.
		]
