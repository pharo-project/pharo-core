as yet unclassified
arraySize2: array with: param2
	
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout
		function: #(ulong (NBByteArraySize array, long param2))
		emit: [:gen |
			"pop the array size"
			gen asm pop: gen asm EAX
		]
