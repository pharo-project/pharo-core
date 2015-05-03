wrapCondition: link
	| linkBlock conditionExpression |
	linkBlock := self encloseInBlock: link asSequenceNode.
	conditionExpression := RBMessageNode 
			receiver: self condition asLiteralNode 
			selector: #value.
	^RBMessageNode
				receiver: conditionExpression
				selector: #ifTrue:
				arguments: {linkBlock}