initialize
retrieveTestClasses

	testClasses := OrderedCollection new.	
	
	testClasses addAll: self coreTests.
	testClasses := testClasses select: [:e | 
						(e inheritsFrom: TestCase) and: [ e isAbstract not ]].