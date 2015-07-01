hook
	| receiver |
	self setupTable.
	
	receiver := link metaObject isSymbol 
		ifTrue: [ table at: link metaObject ]
		ifFalse: [  RBLiteralNode value: link metaObject ].
	
	hook := RBMessageNode 
		receiver: receiver
		selector: link selector 
		arguments: (link arguments collect: [: each | table at: each]).
		
	link hasCondition ifTrue: [hook := self wrapCondition: hook].
	link hasMetaLevel ifTrue: [hook := self wrapInContext: hook].		
			
	^ hook