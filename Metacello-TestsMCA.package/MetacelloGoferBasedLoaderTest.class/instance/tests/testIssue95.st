testIssue95
	| project version wc |
	project := self project.
	version := project version: 'Issue95-baseline'.
	gofer
		version: 'GoferFaux-tg.30';
		version: 'GeauxBeau-dkh.55';
		version: 'GeauxBar.branch-lr.2';
		load.
	version load.
	wc := (GoferPackageReference name: 'GoferBar') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBar-lr.1').
	wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFaux-tg.30').
	wc := (GoferPackageReference name: 'GeauxBeau') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GeauxBeau-dkh.55').
	wc := (GoferPackageReference name: 'GeauxBar') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GeauxBar.branch-lr.2').
