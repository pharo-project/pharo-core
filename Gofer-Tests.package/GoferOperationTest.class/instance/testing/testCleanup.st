testCleanup
	| class |
	gofer package: 'GoferFoo'; load.
	class := Smalltalk globals classNamed: #GoferFoo.
	Smalltalk globals organization addCategory: #'GoferFoo-Empty'.
	class organization addCategory: #empty.
	class class organization addCategory: #empty.
	self shouldnt: [ gofer cleanup ] raise: Error.
	self deny: (Smalltalk organization categories includes: #'GoferFoo-Empty').
	self deny: (class organization categories includes: #'GoferFoo-Empty').
	self deny: (class class organization categories includes: #'GoferFoo-Empty')