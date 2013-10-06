parseKeywordPattern
	| keywords args node |
	keywords := OrderedCollection new: 2.
	args := OrderedCollection new: 2.
	[currentToken isKeyword]
		whileTrue:
			[keywords add: currentToken.
			self step.
			args add: self parseVariableNode].
	node := self methodNodeClass
		selectorParts: keywords
		arguments: args.
	node comments: (node comments, args last comments).
	args last comments: nil.
	^node