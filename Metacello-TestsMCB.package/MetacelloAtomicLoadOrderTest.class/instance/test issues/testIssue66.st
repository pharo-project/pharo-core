testIssue66
	"http://code.google.com/p/metacello/issues/detail?id=66"
	
	| project version wc |
	project := self project.
	version := project version: '2.0'.
	self shouldnt: [ version load ] raise: Warning.
	wc := (GoferPackageReference name: 'GoferFoo') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFoo-dkh.4').
	wc := (GoferPackageReference name: 'GoferBeau') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBeau-dkh.15').
	wc := (GoferPackageReference name: 'GoferBar') workingCopy.
	self assert: wc ancestry ancestors first name = 'GoferBar-dkh.1'.
	version := project version: '2.0-baseline'.
	self shouldnt: [ version load ] raise: Warning.
	wc := (GoferPackageReference name: 'GoferFoo') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFoo-dkh.5').
	wc := (GoferPackageReference name: 'GoferBeau') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBeau-dkh.15').
	wc := (GoferPackageReference name: 'GoferBar') workingCopy.
	self assert: wc ancestry ancestors first name = 'GoferBar-dkh.1'