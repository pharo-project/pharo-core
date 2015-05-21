wrapCondition: aLink
	| linkBlock conditionExpression |
	linkBlock := self encloseInBlock: aLink asSequenceNode.
	conditionExpression := RBMessageNode 
			receiver: link condition asLiteralNode 
			selector: #value.
	^RBMessageNode
				receiver: conditionExpression
				selector: #ifTrue:
				arguments: {linkBlock}