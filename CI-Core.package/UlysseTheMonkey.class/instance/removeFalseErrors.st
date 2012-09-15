testing
removeFalseErrors

	testFailures := #().
	testErrors := #().
	testResult ifNil: [ ^ self ].
	
	testFailures := testResult failures reject:[: each || detected |
		detected := previousTestResult failures detect: [:e2 | each name = e2 name ] ifNone: [nil].
		detected ifNil: [ false ] ifNotNil: [ each selector = detected selector ]].
	
	
	testErrors := testResult errors reject:[: each || detected |
		detected := previousTestResult errors detect: [:e2 | each name = e2 name ] ifNone: [nil].
		detected ifNil: [ false ] ifNotNil: [ each selector = detected selector ]].
	