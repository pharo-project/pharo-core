declareClassVar

	self methodClass theNonMetaClass
		addClassVarNamed: node name asSymbol.
	^ (node owningScope lookupVar: node name)
		ifNil: [self error: 'should be found']