check: aMethod forCritiquesDo: aCriticBlock ifNone: alternativeBlock
	
	self badSelectors
		select: [ :each | aMethod sendsSelector: each ]
		thenDo: [ :each |
			aCriticBlock cull: (ReTrivialCritique
					withAnchor: (ReSearchStringSourceAnchor
						entity: aMethod
						string: each)
					by: self
					hint: each) ]
		ifNone: alternativeBlock 