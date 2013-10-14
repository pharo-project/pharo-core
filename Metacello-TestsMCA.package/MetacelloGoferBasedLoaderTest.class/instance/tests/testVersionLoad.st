testVersionLoad

	| project version wc |
	project := self project.
	version := project version: '1.0'.
	version load.
	wc := (GoferPackageReference name: 'GoferFoo') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFoo-lr.1').
	wc := (GoferPackageReference name: 'GoferBar') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBar-jf.1').
