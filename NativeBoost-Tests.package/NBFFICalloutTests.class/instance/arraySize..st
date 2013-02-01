as yet unclassified
arraySize: array
	
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout 
		function: #(ulong (NBByteArraySize array))
		emit: [:gen |
			"pop the array size"
			gen asm pop: gen asm EAX
		]
