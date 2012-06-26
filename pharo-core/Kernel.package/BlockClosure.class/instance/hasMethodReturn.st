testing
hasMethodReturn
	"Answer whether the receiver has a method-return ('^') in its code."
	| scanner endpc |
	scanner := InstructionStream new method: outerContext method pc: startpc.
	endpc := self endPC.
	scanner scanFor: [:byte | (byte between: 120 and: 124) or: [scanner pc > endpc]].
	^scanner pc <= endpc