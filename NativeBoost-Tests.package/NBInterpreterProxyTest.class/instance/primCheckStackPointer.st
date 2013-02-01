as yet unclassified
primCheckStackPointer
	"should answer 0"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	^ self nbCallout function: #(uint () ) emit: [:gen :proxy :asm | 
		| get |
		proxy getStackPointer.
		asm 
			mov: NBInterpreterProxy stackPointerAddress asUImm32 to: asm ECX;
		 	mov: asm ECX ptr to: asm ECX;
			sub: asm EAX with: asm ECX
	] 