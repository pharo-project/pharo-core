primCheckStackPointer2
	"should answer 0"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	^ self nbCallout
		function: #(uint () ) 
		emit: [:gen :proxy :asm | 
			| get |
			proxy getStackPointer.
			asm 
				mov: NBInterpreterProxy stackPointerAddress asUImm32 ptr32 to: asm ECX;
				sub: asm EAX with: asm ECX
		] 