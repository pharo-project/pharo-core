testing
testUnimplementedNonPrimitiveCalls
	<expectedFailure>
	self assert: (SystemNavigation new allClassesWithUnimplementedCalls
		associationsSelect: [ :each | (each key inheritsFrom: TestCase) not ]) isEmpty.