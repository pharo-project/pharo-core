initializeTestContextFrom: aContext

	testContext := aContext findContextSuchThat: [ :anotherContext |
		anotherContext method isTestMethod ].
	testContext ifNil: [ testContext := aContext ]