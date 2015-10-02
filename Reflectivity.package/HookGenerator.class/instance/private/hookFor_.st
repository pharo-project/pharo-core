hookFor: aLink
	| receiver hook |
	
	aLink optionDisabledLink ifTrue: [ ^RBSequenceNode new ].
	
	receiver := aLink metaObject isSymbol 
		ifTrue: [ self genReification: aLink metaObject for: aLink ]
		ifFalse: [  
			aLink optionInlineMetaObject 
				ifTrue: [RBLiteralNode value: aLink metaObject]
				ifFalse: [RBMessageNode receiver: (RBLiteralNode value: aLink)
											 selector: #metaObject ]].
	hook := RBMessageNode 
		receiver: receiver
		selector: aLink selector 
		arguments: (aLink arguments collect: [: each | self genReification: each for: aLink]).
	
	aLink 	optionOneShot ifTrue: [
			hook := RBSequenceNode statements: { hook .  RBMessageNode receiver: (RBLiteralNode value: aLink) selector: #uninstall }]  .
	aLink hasCondition ifTrue: [hook := self wrapCondition: hook link: aLink].
	aLink hasMetaLevel ifTrue: [hook := self wrapInContext: hook link: aLink].		
			
	^ hook