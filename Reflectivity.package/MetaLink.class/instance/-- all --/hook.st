hook
	| hook arg |
	hook := RBMessageNode receiver: (RBLiteralNode value: metaObject) selector: self selector arguments: (self arguments collect: #asLiteralNode).
	self hasCondition
		ifTrue: [ 
			arg := (RBBlockNode body: hook asSequenceNode).
			hook := RBMessageNode
				receiver: (RBMessageNode receiver: self condition sourceNode selector: #value)
				selector: #ifTrue:
				arguments: {arg} ].
	^ hook