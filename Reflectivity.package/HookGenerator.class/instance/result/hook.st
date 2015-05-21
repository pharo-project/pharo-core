hook
	hook := RBMessageNode 
		receiver: (RBLiteralNode value: link metaObject) 
		selector: link selector 
		arguments: (link arguments collect: #asLiteralNode).
		
	link hasCondition ifTrue: [hook := self wrapCondition: hook].
	link hasMetaLevel ifTrue: [hook := self wrapInContext: hook].		
	^ hook