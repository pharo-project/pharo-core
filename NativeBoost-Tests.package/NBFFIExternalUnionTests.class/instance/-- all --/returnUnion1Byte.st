returnUnion1Byte
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout
		function: #(NBTestUnion1Byte  () ) 
		emit: [:gen :proxy :asm |
			NativeBoost platformId ~= NativeBoostConstants linux32PlatformId ifTrue:[
			asm mov: 42 to: asm EAX]
			ifFalse:[
				asm mov: asm ESP ptr to: asm EAX;
				mov: 42 to: asm EAX ptr32]
		]
	