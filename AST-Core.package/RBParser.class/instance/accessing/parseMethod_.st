parseMethod: aString
	| node errorNode |
	node := self parseMethod.
	self atEnd
		ifFalse: [ 
			errorNode := self parserError: 'Unknown input at end'.
			errorNode ifNotNil: [ node statements: node statements, {errorNode }] ].
	node source: aString.
	^ node