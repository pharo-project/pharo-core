testRevert
	gofer
		package: 'GoferFoo';
		package: 'GoferBar';
		load.
	(Smalltalk globals classNamed: #GoferBar) category: 'GoferFoo'.
	self shouldnt: [ gofer revert ] raise: Error.
	self assert: (Smalltalk globals classNamed: #GoferFoo) category asSymbol = #GoferFoo.
	self assert: (Smalltalk globals classNamed: #GoferBar) category asSymbol = #GoferBar