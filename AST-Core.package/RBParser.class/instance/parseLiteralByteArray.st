private-parsing
parseLiteralByteArray
	| stream start stop |
	start := currentToken start.
	stream := WriteStream on: (Array new: 5).
	self step.
	[self atEnd or: [currentToken isSpecial and: [currentToken value = $]]]] 
		whileFalse: [stream nextPut: self parseLiteralByteArrayObject].
	(currentToken isSpecial and: [currentToken value = $]]) 
		ifFalse: [^ self parserError: ''']'' expected'].
	stop := currentToken stop.
	self step.
	^self literalArrayNodeClass 
		startPosition: start
		contents: stream contents
		stopPosition: stop
		isByteArray: true