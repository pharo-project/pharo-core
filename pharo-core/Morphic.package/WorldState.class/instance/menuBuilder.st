worldmenu building
menuBuilder
	^ menuBuilder ifNil: [menuBuilder := PragmaMenuBuilder pragmaKeyword: self desktopMenuPragmaKeyword model: self]