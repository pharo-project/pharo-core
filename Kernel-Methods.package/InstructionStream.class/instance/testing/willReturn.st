willReturn
	"Answer whether the next bytecode is a return."

	^(self method at: pc) between: 120 and: 125