testIfNil

	self should: [ nil ifNil: [self halt]] raise: Halt.


