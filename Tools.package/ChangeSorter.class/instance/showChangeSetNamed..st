access
showChangeSetNamed: index
	| aName |
	
	aName := self changeSetList at: index ifAbsent: [ '' ].
	self showChangeSet: (ChangeSet named: aName) 