defaultAction
	| answer |
	
	self errorNotification ifFalse: [ ^nil ].

	answer := UIManager default 
		chooseFrom: #('yes' 'no')
		lines: #() 
		title: node name asWideString, ' appears to be unused in this method. OK to remove it?' withCRs.
	
	(answer = 2 ) ifTrue: [ ^self].
      (answer = 0 ) ifTrue: [ self compilationContext failBlock value].

	self node parent scope removeTemp: (self node parent scope lookupVar:(node name)).
	self node parent removeTemporaryNamed: node name.
	self requestor correctFrom: node startForReplacement to: node stop with: ''.

	
	
	
	
	
	
	
	
		
