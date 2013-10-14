testBaselineLoad

	| project version wc |
	project := self project.
	version := project version: '1.0-baseline'.
	version load: #('default').
	wc := (GoferPackageReference name: 'GoferFoo') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFoo-lr.4').
	wc := (GoferPackageReference name: 'GoferBar') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBar-lr.1').
	wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFaux-tg.35').
