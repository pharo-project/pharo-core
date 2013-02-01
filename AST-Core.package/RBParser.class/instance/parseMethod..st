accessing
parseMethod: aString 
	| node |
	node := self parseMethod.
	self atEnd ifFalse: [ ^ self parserError: 'Unknown input at end'].
	node source: aString.
	^node