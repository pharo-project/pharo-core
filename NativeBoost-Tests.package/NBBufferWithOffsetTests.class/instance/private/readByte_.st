readByte: bufferAndOffset

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout
		function: #(byte (NBBufferWithOffset bufferAndOffset))
		emit: [:gen :proxy :asm |
			gen asm pop: asm EAX;
				mov: asm EAX ptr8 to: asm AL
			] 