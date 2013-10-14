testStableVersion
	| project version wc |
	project := self project.
	version := project version: '2.0'.
	version load.
	wc := (GoferPackageReference name: 'GoferBeau') workingCopy.
	self assert: wc ancestry ancestors first name = 'GoferBeau-dkh.53'.
	wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
	self assert: wc ancestry ancestors first name = 'GoferFaux-tg.32'.
