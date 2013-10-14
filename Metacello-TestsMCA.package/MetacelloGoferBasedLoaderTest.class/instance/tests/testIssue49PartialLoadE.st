testIssue49PartialLoadE

	| project version wc |
	project := self project.
	version := project version: '5.0'.
	version load: '2'.
	wc := (GoferPackageReference name: 'GoferFoo') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFoo-lr.2').
	self should: [ (GoferPackageReference name: 'GoferBar') workingCopy ] raise: Error.
	wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFaux-tg.34').
	self should: [ (GoferPackageReference name: 'GoferBeau') workingCopy ] raise: Error.
	version := project version: '4.0'.
	version load: '3'. "should get error, since there is no GoferBeau package in 5.0"
