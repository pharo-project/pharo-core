selectorParts: keywordTokens arguments: valueNodes 
	super selectorParts: keywordTokens arguments: valueNodes.
	isList := (keywordTokens first value at: 2) == self listCharacter