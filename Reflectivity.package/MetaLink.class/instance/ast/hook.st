hook
	| hook |
	hook := RBMessageNode 
		receiver: (RBLiteralNode value: metaObject) 
		selector: self selector 
		arguments: (self arguments collect: #asLiteralNode).
		
	self hasCondition ifTrue: [hook := self wrapCondition: hook].
	self hasMetaLevel ifTrue: [hook := self wrapInContext: hook].		

	^ hook