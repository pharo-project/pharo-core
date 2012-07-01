private-parsing
parseStatements: pragmaBoolean 
	| args leftBar rightBar |
	args := #().
	leftBar := rightBar := nil.
	currentToken isBinary 
		ifTrue: 
			[currentToken value = #| 
				ifTrue: 
					[leftBar := currentToken start.
					self step.
					args := self parseArgs.
					(currentToken isBinary and: [currentToken value = #|]) 
						ifFalse: [self parserError: '''|'' expected'].
					rightBar := currentToken start.
					self step]
				ifFalse: 
					[currentToken value = #'||' 
						ifTrue: 
							[rightBar := (leftBar := currentToken start) + 1.
							self step]]].
	^self parseStatementList: pragmaBoolean
		into: (self sequenceNodeClass 
				leftBar: leftBar
				temporaries: args
				rightBar: rightBar)