styleOpenBracket: aBlockNode
	self addStyle: (#blockStart asString , bracketLevel asString) asSymbol from: aBlockNode left to: aBlockNode left.
	bracketLevel := bracketLevel + 1