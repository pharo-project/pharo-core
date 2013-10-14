testIssue77
	"The following project structure is loaded:
		project A 1.0
	   		project B 1.0
	     		project C 1.2
	   		project D 1.0 [without a direct load reference for C, but specifying version 1.3 of C]
	     		project C 1.3
	 and with the bug, project C version 1.3 is _not_ loaded.
	"

	| project version loader wc |
	project := self project.
	version := project version: 'Issue77-baseline'.
	loader := version load.
	wc := (GoferPackageReference name: 'GoferBar') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBar-lr.1').
	wc := (GoferPackageReference name: 'GoferBeau') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBeau-dkh.53').
	wc := (GoferPackageReference name: 'GoferFoo') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFoo-lr.4').
	self 
		should: [ (GoferPackageReference name: 'GeauxBeau') workingCopy ]
		raise: Error