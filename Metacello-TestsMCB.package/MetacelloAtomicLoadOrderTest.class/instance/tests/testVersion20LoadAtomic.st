testVersion20LoadAtomic

	| project version wc |
	project := self project.
	version := project version: '2.0'.
	self shouldnt: [ version load ] raise: Warning.
	wc := (GoferPackageReference name: 'GoferFoo') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFoo-dkh.4').
	wc := (GoferPackageReference name: 'GoferBeau') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBeau-dkh.15').
	wc := (GoferPackageReference name: 'GoferBar') workingCopy.
	self assert: wc ancestry ancestors first name = 'GoferBar-dkh.1'