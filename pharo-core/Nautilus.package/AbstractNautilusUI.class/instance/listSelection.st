list selections
listSelection

	^ self showGroups
		ifTrue: [ groupsSelection ]
		ifFalse: [ packagesSelection ]