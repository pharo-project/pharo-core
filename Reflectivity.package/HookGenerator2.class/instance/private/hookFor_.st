hookFor: aLink
	| receiver hook |
	
	receiver := aLink metaObject isSymbol 
		ifTrue: [ self genReification: aLink metaObject for: aLink ]
		ifFalse: [  RBLiteralNode value: aLink metaObject ].
	
	hook := RBMessageNode 
		receiver: receiver
		selector: aLink selector 
		arguments: (aLink arguments collect: [: each | self genReification: each for: aLink]).
		
	aLink hasCondition ifTrue: [hook := self wrapCondition: hook link: aLink].
	aLink hasMetaLevel ifTrue: [hook := self wrapInContext: hook link: aLink].		
			
	^ hook