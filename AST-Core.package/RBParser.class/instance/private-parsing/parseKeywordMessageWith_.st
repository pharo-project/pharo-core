parseKeywordMessageWith: node 
	| args isKeyword keywords |
	args := OrderedCollection new: 3.
	keywords := OrderedCollection new: 3.
	isKeyword := false.
	[currentToken isKeyword] whileTrue: 
			[keywords add: currentToken.
			self step.
			args add: self parseBinaryMessage.
			isKeyword := true].
	^isKeyword 
		ifTrue: 
			[self messageNodeClass 
				receiver: node
				selectorParts: keywords
				arguments: args]
		ifFalse: [node]