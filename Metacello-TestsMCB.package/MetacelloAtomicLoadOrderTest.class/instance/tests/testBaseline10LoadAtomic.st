testBaseline10LoadAtomic

	| project version wc |
	project := self project.
	version := project version: '1.0-baseline'.
	version load.
	wc := (GoferPackageReference name: 'GoferFoo') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFoo-dkh.5').
	wc := (GoferPackageReference name: 'GoferBeau') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBeau-dkh.15').
	wc := (GoferPackageReference name: 'GoferBar') workingCopy.
	self assert: wc ancestry ancestors first name = 'GoferBar-dkh.1'