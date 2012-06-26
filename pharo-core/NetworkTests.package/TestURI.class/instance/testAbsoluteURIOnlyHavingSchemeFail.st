parsing tests
testAbsoluteURIOnlyHavingSchemeFail

	self should: [URI fromString: 'http:'] raise: IllegalURIException