check: aMethod forCriticsDo: aCriticBlock ifNone: alternativeBlock

	(aMethod messages
		select: [ :each | each isSelectorSymbol not ]
		thenCollect: [ :each |
			aCriticBlock cull: (ReStringBasedCritic
					for: aMethod
					by: self
					badString: each) ])
				
	ifEmpty: alternativeBlock 