ui requests
request: queryString initialAnswer: defaultAnswer entryCompletion: anEntryCompletion
	(ProvideAnswerNotification signal: queryString)
		ifNotNil: [:answer | ^ answer = #default ifTrue:[defaultAnswer] ifFalse:[answer]].
	^ self nonInteractive