ui requests
request: queryString initialAnswer: defaultAnswer
	(ProvideAnswerNotification signal: queryString)
		ifNotNil: [:answer | ^ answer = #default ifTrue:[defaultAnswer] ifFalse:[answer]].
	^ self nonInteractive