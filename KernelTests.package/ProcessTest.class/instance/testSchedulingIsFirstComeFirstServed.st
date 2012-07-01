testing
testSchedulingIsFirstComeFirstServed

	| priorityWaitingLonger priorityWaitingLess |
	priorityWaitingLonger := [ ] fork.
	priorityWaitingLess := [ ] fork.
	
	self assert: Processor nextReadyProcess equals: priorityWaitingLonger.