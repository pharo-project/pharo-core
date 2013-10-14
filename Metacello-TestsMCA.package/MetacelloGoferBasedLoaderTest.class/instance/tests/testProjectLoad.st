testProjectLoad

	| project version wc |
	project := self project.
	version := project version: '3.0'.
	version load.
	wc := (GoferPackageReference name: 'GoferFoo') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFoo-lr.1').
	wc := (GoferPackageReference name: 'GoferBar') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBar.branch-lr.1').
	wc := (GoferPackageReference name: 'GoferBeau') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBeau-dkh.53').
	wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFaux-tg.30').
	self assert: (Smalltalk at: #'Metacello_Configuration_Test_DoIt_Result')
