testMczFileExplicitLoad
	"Older files will be loaded if directly referenced from the project being loaded (explicit version request)"
	
	| project version wc |
	project := self project.
	version := project version: '6.2'.
	version load.

	wc := (GoferPackageReference name: 'GoferFoo') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFoo-lr.4').
	wc := (GoferPackageReference name: 'GoferBar') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBar-lr.1').
	wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFaux-tg.35').

	version := project version: '6.3'.
	version load.

	wc := (GoferPackageReference name: 'GoferFoo') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFoo-lr.4').
	wc := (GoferPackageReference name: 'GoferBar') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBar-lr.1').
	wc := (GoferPackageReference name: 'GoferBeau') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBeau-dkh.53').
	wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
	
	"explicit load older mcz file IS loaded ... see testMczFileImplicitLoad for alternate case"
	self assert: (wc ancestry ancestors first name = 'GoferFaux-tg.31').
