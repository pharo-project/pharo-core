contents: aString notifying: aController
	"Compile the code in aString and proceed. Do not notify anybody of errors, because nobody would have been notified of errors if this syntax error had not arisen"

	doitFlag
		ifTrue: [ self class compiler evaluate: aString ]
		ifFalse: [ class compile: aString classified: category ].
	aController hasUnacceptedEdits: false