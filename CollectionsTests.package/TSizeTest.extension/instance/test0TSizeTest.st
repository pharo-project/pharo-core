tests - fixture
test0TSizeTest
	self shouldnt: [self empty] raise: Error.
	self shouldnt: [self sizeCollection] raise: Error.
	self assert: self empty isEmpty.
	self deny: self sizeCollection isEmpty.