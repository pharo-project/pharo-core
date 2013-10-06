testHaltOnce
	| anObject |
	anObject := Object new.
	Halt enableHaltOnce.
	self should: [ anObject haltOnce ] raise: Halt.
	Halt disableHaltOnce.
	anObject haltOnce