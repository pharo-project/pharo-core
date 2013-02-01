private-parsing
parseLiteralByteArrayObject
	(currentToken isLiteralToken and: 
			[currentToken value isInteger and: [currentToken value between: 0 and: 255]]) 
		ifFalse: [ ^ self parserError: 'Expecting 8-bit integer'].
	^self parsePrimitiveLiteral