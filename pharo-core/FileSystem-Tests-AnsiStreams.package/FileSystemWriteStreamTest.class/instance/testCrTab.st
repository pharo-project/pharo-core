tests
testCrTab
	stream crtab.
	self assert: self contents first = Character cr asInteger.
	self assert: self contents second = Character tab asInteger.