hierarchyButtonLabel

	^ self showHierarchy
		ifFalse: [ 'Hierarchy' ]
		ifTrue: [ 'Flat' ]