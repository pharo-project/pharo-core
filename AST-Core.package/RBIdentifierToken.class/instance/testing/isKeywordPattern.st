isKeywordPattern
	^ self isPatternVariable and:[ value second = RBScanner keywordPatternCharacter ].