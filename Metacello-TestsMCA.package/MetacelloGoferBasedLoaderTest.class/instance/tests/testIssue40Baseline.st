testIssue40Baseline

	| project version wc1 wc2 |
	project := self project.
	version := project version: 'Issue40-baseline'.
	version load.
	wc1 := (GoferPackageReference name: 'GoferFoo') workingCopy.
	self assert: wc1 repositoryGroup repositories size = 2.
	self assert: (wc1 repositoryGroup includes: (Smalltalk at: #'Metacello_Gofer_Test_Repository')).
	self assert: (wc1 ancestry ancestors first name = 'GoferFoo-lr.4').
	wc2 := (GoferPackageReference name: 'GoferBar') workingCopy.
	self assert: (wc2 ancestry ancestors first name = 'GoferBar-dkh.25').
	self assert: wc2 repositoryGroup repositories size = 2.
	self assert: (wc2 repositoryGroup includes: (Smalltalk at: #'Metacello_Configuration_Test_Alternate_Repository')).
