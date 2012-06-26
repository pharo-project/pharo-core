reporting
reportTestRunner: aStream
	testRunner ifNil: [| runAllTests |
		runAllTests := UIManager confirm: 'Running all Tests\will take long time' withCRs.
		runAllTests
			ifTrue: [testRunner := TestRunner new runAll]
			ifFalse: [
				categoriesSelected remove: #SUnit. 
				^self changed: #categorySelected]].
	self header: 'SUnit Results' on: aStream.
	aStream nextPutAll: testRunner statusText; cr; cr.
	self header: 'Failed Tests' on: aStream.
	testRunner failedList do: [:each | aStream nextPutAll: each; cr].
	aStream cr.
	self header: 'Errors' on: aStream.
	testRunner errorList do: [:each | aStream nextPutAll: each; cr]
