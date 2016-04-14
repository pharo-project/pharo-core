runTestForAMethod: aMethod notifying: aBoolean priority: aPriority
	| testMethod testClass testResult color |
	testMethod := aMethod correspondingTestMethod.
	testMethod ifNil: [ ^ self ].
	testClass := testMethod methodClass.
	(testMethod hasFailedTest or: [ testMethod hasErrorTest ])
		ifTrue: [ testClass debug: testMethod selector ].
	testResult := testClass run: testMethod selector.
	testResult updateResultsInHistory.
	aBoolean
		ifFalse: [ ^ self ].
	color := Color gray.
	testMethod hasPassedTest
		ifTrue: [ color := Color green ].
	testMethod hasFailedTest
		ifTrue: [ color := Color yellow ].
	testMethod hasErrorTest
		ifTrue: [ color := Color red ].
	self notifyTitle: 'Test Finished' contents: 'Method: ' , testMethod methodClass asString , '>>#' , testMethod selector asString color: color