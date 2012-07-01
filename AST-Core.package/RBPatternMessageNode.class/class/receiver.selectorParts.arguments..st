instance creation
receiver: aValueNode selectorParts: keywordTokens arguments: valueNodes 
	^(keywordTokens anySatisfy: [:each | each isPatternVariable]) 
		ifTrue: 
			[super 
				receiver: aValueNode
				selectorParts: keywordTokens
				arguments: valueNodes]
		ifFalse: 
			[RBMessageNode 
				receiver: aValueNode
				selectorParts: keywordTokens
				arguments: valueNodes]