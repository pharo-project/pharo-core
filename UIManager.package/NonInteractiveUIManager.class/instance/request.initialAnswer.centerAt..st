ui requests
request: queryString initialAnswer: defaultAnswer centerAt: aPoint
	"Create an instance of me whose question is queryString with the given initial answer. Answer the string the user accepts. Answer the empty string if the user cancels."
	
	(ProvideAnswerNotification signal: queryString)
		ifNotNil: [:answer | ^ answer = #default ifTrue:[defaultAnswer] ifFalse:[answer]].
	^ self nonInteractive