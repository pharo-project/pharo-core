ui requests
request: aStringOrText initialAnswer: defaultAnswer title: aTitle
	(ProvideAnswerNotification signal: aStringOrText)
		ifNotNil: [:answer | ^ answer = #default ifTrue:[defaultAnswer] ifFalse:[answer]].
	^ self nonInteractive