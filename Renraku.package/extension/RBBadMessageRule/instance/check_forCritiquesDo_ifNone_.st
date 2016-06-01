check: aMethod forCritiquesDo: aCriticBlock ifNone: alternativeBlock
	
	(self badSelectors
		select: [ :each | aMethod sendsSelector: each ]
		thenCollect: [ :each |
			aCriticBlock cull: (ReStringBasedCritique
					for: aMethod
					by: self
					badString: each) ])
				
	ifEmpty: alternativeBlock 