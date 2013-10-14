testMczFileImplicitLoad
	"when loading a project reference, do not load mcz files that are older than the currently loaded mcz files (implicit version request)"
	
	| project version wc |
	project := self project.
	version := project version: '6.0'.
	version load.

	wc := (GoferPackageReference name: 'GoferFoo') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFoo-lr.4').
	wc := (GoferPackageReference name: 'GoferBar') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBar-lr.1').
	wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFaux-tg.35').

	version := project version: '6.1'.
	version load.

	wc := (GoferPackageReference name: 'GoferFoo') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFoo-lr.4').
	wc := (GoferPackageReference name: 'GoferBar') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBar-lr.1').
	wc := (GoferPackageReference name: 'GoferBeau') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBeau-dkh.53').
	wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
	
	"implicit load older mcz file NOT loaded ... see testMczFileExplicitLoad for alternate case"
	self assert: (wc ancestry ancestors first name = 'GoferFaux-tg.35').
