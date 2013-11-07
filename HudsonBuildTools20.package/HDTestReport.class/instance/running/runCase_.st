runCase: aTestCase
	| error stack  |
	self 
		beginTestCase: aTestCase
		runBlock: [ [ [ aTestCase runCase ] 
			on: Halt , Error, TestFailure
			do: [ :err |
				error := err.
			 	aTestCase isExpectedFailure ifFalse: [self serializeError: error of: aTestCase].
				stack := self stackTraceString: err of: aTestCase ]]
			on: TestSkip do: [ :err| "nothing to do..." ] ].
		
	(error isNil or: [aTestCase isExpectedFailure])  ifFalse: [
		(error isKindOf: TestFailure)
			ifTrue: [ self writeError: error stack: stack ]
			ifFalse: [ self writeFailure: error stack: stack ]].
		
	self endTestCase