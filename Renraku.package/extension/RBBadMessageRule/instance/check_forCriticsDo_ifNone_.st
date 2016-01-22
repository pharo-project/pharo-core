check: aMethod forCriticsDo: aCriticBlock ifNone: alternativeBlock
	
	(self badSelectors
		select: [ :each | aMethod sendsSelector: each ]
		thenCollect: [ :each |
			aCriticBlock cull: (ReStringBasedCritic
					for: aMethod
					by: self
					badString: each) ])
				
	ifEmpty: alternativeBlock 