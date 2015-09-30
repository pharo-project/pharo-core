wrapCondition: hook link: aLink
	| linkBlock conditionExpression condSelector condArguments |
	
	condSelector := aLink condition valueSelector.
	condArguments  := #().
	(condSelector numArgs > 0) ifTrue: [
			condArguments := OrderedCollection new.
			1 to: condSelector numArgs do: [:i |
				condArguments add: (self genReification: (aLink condition argumentNames at: i) for: aLink)]
	].
	
	linkBlock := self encloseInBlock: hook asSequenceNode.
	conditionExpression := RBMessageNode 
			receiver: (aLink optionInlineCondtion 
				ifTrue: [aLink condition asLiteralNode]
				ifFalse:[RBMessageNode receiver: (RBLiteralNode value: aLink)
											 selector: #condition ])
			selector: condSelector
			arguments: condArguments.
	^RBMessageNode
				receiver: conditionExpression
				selector: #ifTrue:
				arguments: {linkBlock}