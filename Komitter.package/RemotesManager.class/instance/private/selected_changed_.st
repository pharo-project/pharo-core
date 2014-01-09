selected: aRepository changed: selected
	selectedChangedBlock ifNotNil: 
		[ selectedChangedBlock cull: aRepository cull: selected ] 