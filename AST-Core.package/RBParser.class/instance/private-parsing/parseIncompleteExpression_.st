parseIncompleteExpression: priorStatementsNode
"some incomplete expressions followed. Add a parserError node
 to the prior statements"
	| errorNode | 
	errorNode := self parserError: 'Unknown input at end'.
	errorNode ifNotNil:[ priorStatementsNode statements: priorStatementsNode statements, { errorNode }].
	^ priorStatementsNode 