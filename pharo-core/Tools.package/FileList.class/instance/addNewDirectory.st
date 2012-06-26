own services
addNewDirectory
	self 
		addNew: 'Directory'
		byEvaluating: [:newName | (reference /  newName ) ensureDirectory ]
