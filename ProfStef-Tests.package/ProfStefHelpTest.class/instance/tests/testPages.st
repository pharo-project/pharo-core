testPages
	self assert: ProfStefHelp pages isCollection.
	self assert: (ProfStefHelp pages allSatisfy: #isSymbol).