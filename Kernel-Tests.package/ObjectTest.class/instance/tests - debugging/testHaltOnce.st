testHaltOnce
	| anObject block |
	anObject := Object new.
	block :=  [ anObject haltOnce ].
	Halt resetHaltOnce.
	self should: block raise: Halt.
	block value.