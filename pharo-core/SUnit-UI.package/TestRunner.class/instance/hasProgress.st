history saving
hasProgress

	result classesTested do: [:cls |
		(cls class methodDictionary includesKey: #lastStoredRun)
			ifTrue: [^ true]].
	^ false