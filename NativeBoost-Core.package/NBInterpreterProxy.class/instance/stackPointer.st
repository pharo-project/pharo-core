helpers
stackPointer
	(self canUseStackPointer not
	or: [stackPtrAddress isNil]) ifTrue: [ 
		self error: 'cannot use stack pointer directly' ].

	"answer a memory operand "	
	^ stackPtrAddress asUImm32 ptr32