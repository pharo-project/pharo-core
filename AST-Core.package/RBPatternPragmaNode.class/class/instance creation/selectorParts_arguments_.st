selectorParts: keywordTokens arguments: valueNodes 
	^ (keywordTokens anySatisfy: [ :each | each isPatternVariable ]) 
		ifTrue: [ super selectorParts: keywordTokens arguments: valueNodes ]
		ifFalse: [ RBPragmaNode selectorParts: keywordTokens arguments: valueNodes ]