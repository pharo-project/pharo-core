running
runCase: aTestCase
	| error time stack |
	time := [ [ aTestCase runCase ] 
		on: Halt , Error, TestFailure
		do: [ :err |
			error := err.
			self serializeError: error of: aTestCase.
			stack := self stackTraceString: err of: aTestCase ] ]
			timeToRun.
	self beginTestCase: aTestCase time: time.
	(error isNil or: [ aTestCase expectedFailures includes: aTestCase selector ]) ifFalse: [
		(error isKindOf: TestFailure)
			ifTrue: [ self writeError: error stack: stack ]
			ifFalse: [ self writeError: error stack: stack ] ].
	self endTestCase