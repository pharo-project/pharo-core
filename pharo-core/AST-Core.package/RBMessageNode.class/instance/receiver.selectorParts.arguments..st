initialize-release
receiver: aValueNode selectorParts: keywordTokens arguments: valueNodes 
	self receiver: aValueNode.
	selectorParts := keywordTokens.
	self arguments: valueNodes