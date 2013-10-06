testCdeclNoModule
	| aRBMethode |
	
	Smalltalk globals at: #ExternalFunction ifAbsent:[^self].
	aRBMethode := OpalCompiler new parse: self methodCdeclNoModule in: self class notifying: [nil].
	
	self assert: ((aRBMethode compiledMethod literalAt: 1) isKindOf: (Smalltalk globals at: #ExternalFunction)).
	self assert: (aRBMethode compiledMethod primitive = 120)