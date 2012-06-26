testing
testFetch
	gofer package: 'GoferFoo'.
	self shouldnt: [ gofer fetch ] raise: Error