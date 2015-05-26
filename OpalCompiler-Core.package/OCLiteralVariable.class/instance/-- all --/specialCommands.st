specialCommands
	(self isLiteralVariable and: [Smalltalk globals  includesAssociation: self assoc ])
		ifTrue:[ ^SugsSuggestionFactory commandsForClass].
	(self isLiteralVariable and: [(Smalltalk globals  includesAssociation: self assoc ) not])
		ifTrue:[^SugsSuggestionFactory commandsForClassVariable].
