testing
testRecompile
	gofer package: 'Gofer-Core'.
	self shouldnt: [ gofer recompile ] raise: Error