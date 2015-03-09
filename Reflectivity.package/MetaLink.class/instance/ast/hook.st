hook
	| hook meta arg |
	meta := self metaObject isSymbol
		ifFalse: [ RBMessageNode receiver: self  asLiteralNode selector: #metaObject ].
	hook := RBMessageNode receiver: meta selector: self selector arguments: (self arguments collect: #asLiteralNode).
	self hasCondition
		ifTrue: [ 
			arg := (RBBlockNode body: hook asSequenceNode).
			hook := RBMessageNode
				receiver: (RBMessageNode receiver: self condition sourceNode selector: #value)
				selector: #ifTrue:
				arguments: {arg} ].
	^ hook