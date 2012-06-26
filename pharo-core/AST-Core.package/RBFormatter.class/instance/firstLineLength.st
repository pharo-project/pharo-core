accessing
firstLineLength
	^firstLineLength isNil
		ifTrue: [codeStream position]
		ifFalse: [firstLineLength]