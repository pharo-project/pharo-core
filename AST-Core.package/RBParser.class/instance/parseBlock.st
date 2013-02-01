private-parsing
parseBlock
	| position node |
	position := currentToken start.
	self step.
	node := self blockNodeClass new. 
	self parseBlockArgsInto: node.
	node left: position.
	node body: (self parseStatements: false).
	(currentToken isSpecial and: [currentToken value = $]])
		ifFalse: [ ^ self parserError: ''']'' expected'].
	node right: currentToken start.
	self step.
	^node