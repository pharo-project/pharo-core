initialize

	debugger := nil asReactiveVariable.
	super initialize.
	
	self whenWindowChanged: [:w | w whenClosedDo: [ self clear ] ].
	self bindKeyCombination: Character escape asKeyCombination toAction: [ self delete ]