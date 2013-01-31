testing
testAtError
	dict at: #a put: 1.
	self shouldnt: [ dict at: #a ] raise: Error.
	self should: [ dict at: #b ] raise: Error