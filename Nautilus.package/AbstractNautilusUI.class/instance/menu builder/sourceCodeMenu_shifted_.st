sourceCodeMenu: aMenu shifted: shifted
	| menu |
	menu := (PragmaMenuBuilder
		pragmaKeyword: self sourceTextWidget textArea editingMode class menuKeyword
		model: self sourceTextWidget) menu.
	^ aMenu
		addAllFrom: self sourceCodeMenuBuilder menu;
		addLine;
		addAllFrom: menu;
		yourself