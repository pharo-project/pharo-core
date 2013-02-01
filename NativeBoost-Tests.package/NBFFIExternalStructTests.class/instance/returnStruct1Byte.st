as yet unclassified
returnStruct1Byte
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout
		function: #(NBTestStructure1byte () ) 
		emit: [:gen :proxy :asm |
			asm mov: 42 to: asm EAX
		]
	