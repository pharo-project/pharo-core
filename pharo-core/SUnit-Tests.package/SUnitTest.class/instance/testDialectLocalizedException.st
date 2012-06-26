testing
testDialectLocalizedException

	self
		should: [self classForTestResult signalFailureWith: 'Foo']
		raise: self defaultTestError.
	self
		should: [self classForTestResult signalErrorWith: 'Foo']
		raise: self defaultTestError.