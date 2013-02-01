as yet unclassified
readByte: array at: index

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout
		function: #(byte (byte * array, ulong index))
		emit: [:gen |
			gen asm pop: EAX;
				pop: ECX;
				add: EAX with: ECX;
				mov: EAX ptr8 to: AL
			] 