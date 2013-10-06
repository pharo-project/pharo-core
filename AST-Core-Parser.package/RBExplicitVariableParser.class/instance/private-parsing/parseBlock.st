parseBlock
	| position node |
	position := currentToken start.
	self step.
	node := self blockNodeClass new. 
	self pushScope: node.
	
	self useVariable: RBArgumentNode during: [ self parseBlockArgsInto: node ].
	node left: position.
	
	node body: self sequenceNodeClass new.
	(self parseStatements: false into: node body).
	
	(currentToken isSpecial and: [currentToken value = $]])
		ifFalse: [  ^ self parserError: ''']'' expected'].
	node right: currentToken start.
	
	self step.
	self popScope.
	^node