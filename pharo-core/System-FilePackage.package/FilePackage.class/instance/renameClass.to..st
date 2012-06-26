accessing
renameClass: aPseudoClass to: newName
	| oldName |
	oldName := aPseudoClass name.
	self classes removeKey: oldName.
	self classes at: newName put: aPseudoClass.
	aPseudoClass renameTo: newName.