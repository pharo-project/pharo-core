checkMethod: aContext 
	(RBReadBeforeWrittenTester variablesReadBeforeWrittenIn: aContext compiledMethod parseTree) do: 
		[ :each | 
		result 
			addClass: aContext selectedClass
			selector: aContext selector.
		result addSearchString: each ]