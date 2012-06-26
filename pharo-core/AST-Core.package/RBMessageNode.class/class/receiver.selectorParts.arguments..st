instance creation
receiver: aValueNode selectorParts: keywordTokens arguments: valueNodes 
	^(self new)
		receiver: aValueNode
			selectorParts: keywordTokens
			arguments: valueNodes;
		yourself