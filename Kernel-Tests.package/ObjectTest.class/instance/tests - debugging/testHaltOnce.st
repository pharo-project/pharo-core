testHaltOnce
	| anObject block |
	anObject := Object new.
	block :=  [ anObject haltOnce ].
	Halt enableHaltOnce.
	self should: block raise: Halt.
	block value.