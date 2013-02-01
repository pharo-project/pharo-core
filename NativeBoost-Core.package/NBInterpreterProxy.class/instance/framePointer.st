helpers
framePointer
	(self canUseStackPointer not
	or: [framePtrAddress isNil]) ifTrue: [ 
		self error: 'cannot use frame pointer directly' ].

	"answer a memory operand "	
	^ framePtrAddress asUImm32 ptr32