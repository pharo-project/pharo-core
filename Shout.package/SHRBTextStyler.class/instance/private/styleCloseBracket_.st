styleCloseBracket: aBlockNode
	bracketLevel := bracketLevel - 1.
	self addStyle: (#blockEnd asString , bracketLevel asString) asSymbol from: aBlockNode right to: aBlockNode right