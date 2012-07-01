private-parsing
parsePrimitiveObject
	currentToken isIdentifier ifTrue: [^self parsePrimitiveIdentifier].
	(currentToken isLiteralToken and: [currentToken isMultiKeyword not]) 
		ifTrue: [^self parsePrimitiveLiteral].
	currentToken isLiteralArrayToken 
		ifTrue: 
			[^currentToken isForByteArray 
				ifTrue: [self parseLiteralByteArray]
				ifFalse: [self parseLiteralArray]].
	currentToken isSpecial 
		ifTrue: 
			[currentToken value = $[ ifTrue: [^self parseBlock].
			currentToken value = $( ifTrue: [^self parseParenthesizedExpression].
			currentToken value = ${ ifTrue: [^self parseArray]].
	(currentToken isBinary and: [ currentToken value = #- ]) 
		ifTrue: [ ^self parseNegatedNumber ].
	self parserError: 'Variable expected'