testing
testUnimplementedNonPrimitiveCalls
	<expectedFailure>
	self assert: (SystemNavigation default allClassesWithUnimplementedCalls
		associationsSelect: [ :each | (each key inheritsFrom: TestCase) not ]) isEmpty.