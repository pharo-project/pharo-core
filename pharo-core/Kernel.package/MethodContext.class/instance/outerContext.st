accessing
outerContext
	"Answer the context within which the receiver is nested."

	^closureOrNil == nil ifFalse:
		[closureOrNil outerContext]