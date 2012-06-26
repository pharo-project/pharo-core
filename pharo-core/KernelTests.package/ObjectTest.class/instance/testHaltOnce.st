tests - debugging
testHaltOnce

	| anObject |
	anObject := Object new.
	
	Halt enableHaltOnce.
	self should: [anObject haltOnce] raise: Halt.
	
	Halt disableHaltOnce.
	self shouldnt: [anObject haltOnce] raise: Halt.
