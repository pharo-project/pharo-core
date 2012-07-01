tests - testing
testIfNotNilDo

	self shouldnt: [ nil ifNotNil: [self halt]] raise: Halt.
