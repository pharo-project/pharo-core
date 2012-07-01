parsing
match: aCharacter

	aCharacter = lookahead
		ifFalse: [RxParser signalSyntaxException: 'unexpected character: ', (String with: lookahead)].
	^source atEnd
		ifTrue: [lookahead := nil]
		ifFalse: [lookahead := source next]