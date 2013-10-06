parseBinaryPragma
	| binaryToken |
	currentToken isBinary 
		ifFalse: [ ^ self parserError: 'Message pattern expected' ].
	binaryToken := currentToken.
	self step.
	^ self pragmaNodeClass
		selectorParts: (Array with: binaryToken)
		arguments: (Array with: self parsePragmaLiteral)