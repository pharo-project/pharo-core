basicParsePragma
	^ currentToken isIdentifier
		ifTrue: [ self parseUnaryPragma ]
		ifFalse: [
			currentToken isKeyword
				ifTrue: [ 	
					currentToken isExternalFunctionKeyword 
						ifTrue: [ ^ self externalFunctionDeclaration ].
					currentToken isPrimitiveKeyword
						ifTrue: [ ^ self parsePrimitiveKeywordPragma ].
					self parseKeywordPragma ]
				ifFalse: [ self parseBinaryPragma ] ]