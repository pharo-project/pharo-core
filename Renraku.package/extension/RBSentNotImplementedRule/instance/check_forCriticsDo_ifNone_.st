check: aMethod forCriticsDo: aCriticBlock ifNone: alternativeBlock

	| implementors |
	implementors := (SystemNavigation default allMethods collect: #selector) asSet.
	
	(aMethod messages
		select: [ :each | (implementors includes: each) not ]
		thenCollect: [ :each |
			aCriticBlock cull: (ReStringSearchCritic
					for: aMethod
					by: self
					badSubstring: each) ])
				
	ifEmpty: alternativeBlock 