hookFor: aLink
	| receiver hook |
	
	(self hasOption: #optionDisabledLink for: aLink) ifTrue: [ ^RBSequenceNode new ].
	
	receiver := aLink metaObject isSymbol 
		ifTrue: [ self genReification: aLink metaObject for: aLink ]
		ifFalse: [  
			(self hasOption: #optionInlineMetaObject for: aLink)
				ifTrue: [RFLiteralVariableNode value: aLink metaObject]
				ifFalse: [RBMessageNode receiver: (RFLiteralVariableNode value: aLink)
											 selector: #metaObject ]].
	hook := RBMessageNode 
		receiver: receiver
		selector: aLink selector 
		arguments: (aLink arguments collect: [: each | self genReification: each for: aLink]).
	
	(self hasOption: #optionOneShot for: aLink) ifTrue: [
			hook := RBSequenceNode statements: { hook .  RBMessageNode receiver: (RFLiteralVariableNode value: aLink) selector: #uninstall }]  .
	aLink hasCondition ifTrue: [hook := self wrapCondition: hook link: aLink].
	(aLink hasMetaLevel or: [self hasOption: #optionMetalevel for: aLink]) ifTrue: [hook := self wrapInContext: hook link: aLink].		
			
	^ hook