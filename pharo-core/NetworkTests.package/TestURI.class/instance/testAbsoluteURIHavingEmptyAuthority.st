parsing tests
testAbsoluteURIHavingEmptyAuthority

	self shouldnt: [URI fromString: 'http://'] raise: IllegalURIException