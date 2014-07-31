hierarchyButtonLabel

	^ self showPackages
		ifTrue: [ 'Hierarchy' ]
		ifFalse: [ 'Flat' ]