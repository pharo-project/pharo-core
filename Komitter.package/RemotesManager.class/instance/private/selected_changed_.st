selected: aRepository changed: selected
	selected
		ifTrue: [ selectedRemotes add: aRepository ]
		ifFalse: [ selectedRemotes remove: aRepository ].
	selectedChangedBlock ifNotNil: 
		[ selectedChangedBlock cull: aRepository cull: selected ] 