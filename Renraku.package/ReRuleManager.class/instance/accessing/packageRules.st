packageRules

	packageRules ifNil: [ self initializeRules ].
	
	^ packageRules