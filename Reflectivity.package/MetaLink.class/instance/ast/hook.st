hook
	| hook arg |
	hook := RBMessageNode receiver: (RBLiteralNode value: metaObject) selector: self selector arguments: (self arguments collect: #asLiteralNode).
	self hasCondition
		ifTrue: [ 
			arg := (RBBlockNode body: hook asSequenceNode) scope: OCBlockScope new. self flag: #FIXME. "Later we should do sem analysis for hooks in the correct place"
			hook := RBMessageNode
				receiver: (RBMessageNode receiver: self condition asLiteralNode selector: #value)
				selector: #ifTrue:
				arguments: {arg} ].
	level ifNotNil: [hook := self wrapInContext: hook].		

	^ hook