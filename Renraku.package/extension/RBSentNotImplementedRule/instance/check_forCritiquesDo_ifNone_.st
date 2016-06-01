check: aMethod forCritiquesDo: aCriticBlock ifNone: alternativeBlock

	(aMethod messages
		select: [ :each | each isSelectorSymbol not ]
		thenCollect: [ :each |
			aCriticBlock cull: (ReStringBasedCritique
					for: aMethod
					by: self
					badString: each) ])
				
	ifEmpty: alternativeBlock 