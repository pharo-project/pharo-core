asMinimalRepresentation

	self isReceiverOrAnyArgumentGarbage
		ifTrue: [^nil]
		ifFalse:[^self].