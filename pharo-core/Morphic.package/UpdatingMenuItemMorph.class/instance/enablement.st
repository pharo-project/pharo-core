enablement
enablement 

	enablementSelector isBlock
		ifTrue: [^ enablementSelector value]
		ifFalse: [enablementSelector numArgs = 0
				ifTrue: [^ wordingProvider perform: enablementSelector]
				ifFalse: [^ wordingProvider perform: enablementSelector
										withArguments: arguments]]