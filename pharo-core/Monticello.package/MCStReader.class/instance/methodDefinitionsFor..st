as yet unclassified
methodDefinitionsFor: aPseudoClass
	^ aPseudoClass selectors collect: 
		[:ea |
		 MCMethodDefinition
			className: aPseudoClass name
			classIsMeta: aPseudoClass isMeta
			selector: ea
			category: (aPseudoClass organization categoryOfElement: ea)
			timeStamp: (aPseudoClass stampAt: ea)
			source: (aPseudoClass sourceCodeAt: ea)]