getMenu
	^ (PragmaMenuBuilder
		pragmaKeyword: self widget widget textArea editingMode class menuKeyword
		model: self widget) menu