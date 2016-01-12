process: aProcess context: aContext

	super process: aProcess context: aContext.

	assertionContext ifNil: [
		assertionContext := aContext findContextMatchingPredicate: self class activationPredicate.
		actualResult := assertionContext tempAt: 1.
		expectedResult := assertionContext tempAt: 2.
		testObject := assertionContext sender receiver ]