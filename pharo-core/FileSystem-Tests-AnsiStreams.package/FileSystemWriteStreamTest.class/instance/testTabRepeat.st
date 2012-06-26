tests
testTabRepeat
	stream tab: 3.
	self assert: self contents first = Character tab asInteger.
	self assert: self contents second = Character tab asInteger.
	self assert: self contents third = Character tab asInteger.