testingConversion
	
	| rgComm |
	rgComm := RGCommentDefinition realClass: RGClassDefinition.
	self assert: rgComm asStringOrText = 'RGClassDefinition Comment'.
	
	rgComm := RGCommentDefinition class: (RGClassDefinition named: #Foo).
	self assert: rgComm asStringOrText = 'Foo Comment'