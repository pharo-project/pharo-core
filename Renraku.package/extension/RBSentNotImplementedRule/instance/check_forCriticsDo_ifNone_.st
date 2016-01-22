check: aMethod forCriticsDo: aCriticBlock ifNone: alternativeBlock

	| implementors |
	implementors := (SystemNavigation default allMethods collect: #selector) asSet.
	
	(aMethod messages
		select: [ :each | (implementors includes: each) not ]
		thenCollect: [ :each |
			aCriticBlock cull: (ReStringBasedCritic
					for: aMethod
					by: self
					badString: each) ])
				
	ifEmpty: alternativeBlock 