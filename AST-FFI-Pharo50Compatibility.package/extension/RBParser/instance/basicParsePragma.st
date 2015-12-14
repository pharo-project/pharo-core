basicParsePragma
	^ currentToken isIdentifier
		ifTrue: [ self parseUnaryPragma ]
		ifFalse: [
			currentToken isKeyword
				ifTrue: [ 	
					(currentToken value = #apicall: or: [ currentToken value = #cdecl: ])
						ifTrue: [ ^ self externalFunctionDeclaration ].
					self parseKeywordPragma ]
				ifFalse: [ self parseBinaryPragma ] ]