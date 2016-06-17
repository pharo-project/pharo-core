check: aMethod forCritiquesDo: aCriticBlock ifNone: alternativeBlock

	aMethod messages
		select: [ :each | each isSelectorSymbol not ]
		thenDo: [ :each |
			aCriticBlock cull: (ReTrivialCritique
				withAnchor: (ReSearchStringSourceAnchor
					entity: aMethod
					string: each)
				by: self
				hint: each) ]
		ifNone: alternativeBlock 