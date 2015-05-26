codeBlock: statementsCollection returns: returnBool 
	|  block |
	block := RBBlockNode new.
	block body: (RBSequenceNode statements:
		(statementsCollection size = 0
						ifTrue: [Array with: (RBLiteralNode value: nil)]
						ifFalse: [statementsCollection])).
	block arguments: #().
	block body temporaries: #().
	returnBool ifTrue: [ statementsCollection at: statementsCollection size put: statementsCollection last asReturnNode].
	^ block 