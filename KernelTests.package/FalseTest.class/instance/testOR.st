tests
testOR

	self assert: (false | true).
	self deny: (false | false).