testing
testHighPriorityOverridesWaitTime

	| lowerPriorityWaitingLonger higherPriorityWaitingLess |
	lowerPriorityWaitingLonger := [ ] forkAt: 10.
	higherPriorityWaitingLess := [ ] forkAt: 12.
	
	self assert: Processor nextReadyProcess equals: higherPriorityWaitingLess.