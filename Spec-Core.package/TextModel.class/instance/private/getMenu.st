getMenu
	^ (PragmaMenuBuilder
		pragmaKeyword: self widget widget editingModeClass menuKeyword
		model: self widget) menu