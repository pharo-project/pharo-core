testLoad
	gofer version: 'GoferFoo-lr.1'.
	self shouldnt: [ gofer load ] raise: Error.
	self assert: (self hasVersion: 'GoferFoo-lr.1').
	self assert: (self hasClass: #GoferFoo)