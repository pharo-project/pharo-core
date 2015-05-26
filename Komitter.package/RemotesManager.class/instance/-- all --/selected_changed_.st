selected: aRepository changed: selected
	selected
		ifTrue: [ self selectedRemotes add: aRepository ]
		ifFalse: [ self selectedRemotes remove: aRepository ].
	selectedChangedBlock ifNotNil: 
		[ selectedChangedBlock cull: aRepository cull: selected ] 