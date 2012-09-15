testing
removeCriticalTestsFrom: aTestSuite
	
	{
		MethodContextTest>>#testClosureRestart. 
		AllocationTest>>#testOneGigAllocation.
		SizeInMemoryTest>>#testSizeInMemoryClasses
	} do: [ :method|
		(aTestSuite tests
				detect: [ :testCase| 
						testCase class = method methodClass and: [ testCase selector = method selector ]] 
				ifNone: [ nil ])
			ifNotNil: [:testCase| aTestSuite tests remove: testCase ]].
	
	^ aTestSuite