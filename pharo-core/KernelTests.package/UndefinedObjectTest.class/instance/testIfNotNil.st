tests - testing
testIfNotNil

	self shouldnt: [ nil ifNotNil: [self halt]] raise: Halt.


