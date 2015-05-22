wrapCondition: aLink
	| linkBlock conditionExpression condSelector condArguments |
	
	condSelector := link condition valueSelector.
	condArguments  := #().
	(condSelector numArgs > 0) ifTrue: [
			condArguments := OrderedCollection new.
			1 to: condSelector numArgs do: [:i |
				condArguments add: (table at: (link condition argumentNames at: i))]
	].
	
	linkBlock := self encloseInBlock: aLink asSequenceNode.
	conditionExpression := RBMessageNode 
			receiver: link condition asLiteralNode 
			selector: condSelector
			arguments: condArguments.
	^RBMessageNode
				receiver: conditionExpression
				selector: #ifTrue:
				arguments: {linkBlock}