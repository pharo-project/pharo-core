testIssue86B
	""
	| project version loadDirective repo wc |
	loadType := #linear.
	project := self project.
	version := project version: '6.1-baseline'.
	repo := MetacelloAtomicConfigurationResource current monticelloRepository.
	Smalltalk at: #'Metacello_Configuration_Test_Repository' put: repo.

	repo := MetacelloMonticelloResource current monticelloRepository.
	Smalltalk at: #'Metacello_Gofer_Test_Repository' put: repo.

	loadDirective := (version load: #('GeauxBeau')) loaderPolicy loadDirective.
	wc := (GoferPackageReference name: 'GoferFoo') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFoo-lr.4').
	wc := (GoferPackageReference name: 'GoferBar') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBar-lr.1').

	self 
		should: [ (GoferPackageReference name: 'GoferFaux') workingCopy ]
		raise: Error.
	self 
		should: [ (GoferPackageReference name: 'GoferBeau') workingCopy ]
		raise: Error.
