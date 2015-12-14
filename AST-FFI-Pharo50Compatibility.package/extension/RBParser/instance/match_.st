match: type 
	"Answer with true if next tokens type matches."
	
	(currentToken value isKindOf: type)
		ifTrue: 
			[self step.
			^true].
	^false