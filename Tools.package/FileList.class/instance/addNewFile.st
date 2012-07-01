file menu action
addNewFile
	self 
		addNew: 'File'
		byEvaluating: [:newName | (reference / newName) ensureFile ]
