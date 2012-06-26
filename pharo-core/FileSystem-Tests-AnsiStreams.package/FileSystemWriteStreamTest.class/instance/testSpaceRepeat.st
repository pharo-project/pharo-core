tests
testSpaceRepeat
	stream space: 3.
	self assert: self contents first = Character space asInteger.
	self assert: self contents second = Character space asInteger.
	self assert: self contents third = Character space asInteger.