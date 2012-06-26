tests
testPrintStringAll
	Character allCharacters do: [ :each |
		self assert: (self class compilerClass 
			evaluate: each printString) = each ].