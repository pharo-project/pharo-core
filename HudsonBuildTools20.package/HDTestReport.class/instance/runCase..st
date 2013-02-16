running
runCase: aTestCase
	| error time stack  |
	
	time := [[[ aTestCase runCase ] 
		on: Halt , Error, TestFailure
		do: [ :err |
			error := err.
		 	aTestCase isExpectedFailure ifFalse: [self serializeError: error of: aTestCase].
			stack := self stackTraceString: err of: aTestCase ]]
		on: TestSkip do: [ :err| "nothing to do..." ]] timeToRun.
	
	self beginTestCase: aTestCase time: time.
	(error isNil or: [aTestCase isExpectedFailure])  ifFalse: [
		(error isKindOf: TestFailure)
			ifTrue: [ self writeError: error stack: stack ]
			ifFalse: [ self writeFailure: error stack: stack ]].
		
	self endTestCase