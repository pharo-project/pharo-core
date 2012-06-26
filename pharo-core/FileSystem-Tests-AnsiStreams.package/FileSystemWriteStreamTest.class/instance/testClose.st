tests
testClose
	self
		shouldnt: [stream close]
		raise: Error