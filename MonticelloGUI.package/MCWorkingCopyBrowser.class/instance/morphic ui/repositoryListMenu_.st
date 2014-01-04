repositoryListMenu: aMenu
	self repository ifNil: [^ aMenu].
	self fillMenu: aMenu fromSpecs: self repositoryMenuSpec.
	aMenu add: (self repository alwaysStoreDiffs
					ifTrue: ['Store full versions']
					ifFalse: ['Store diffs'])
		target: self
		selector: #toggleDiffs.
		
	^ aMenu
				