findContextMatchingPredicate: aPredicate
	^ self findContextSuchThat: [ :ctx |
		aPredicate matches: ctx ]