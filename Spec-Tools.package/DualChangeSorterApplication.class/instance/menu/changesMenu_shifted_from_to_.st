changesMenu: menu shifted: shifted from: src to: dest
 	| menuSrc1 menuSrc2 menuDest |
	
	menuSrc1 := menu copy. 
	src changeSetMenu1: menuSrc1 shifted: shifted.

	menuSrc2 := menu copy. 
	src changeSetMenu1: menuSrc2 shifted: shifted.
	 
	menuDest := (PragmaMenuBuilder 
		pragmaKeyword: 'dualChangeSorteChangesListMenu'
		model: {self. src. dest}) 
		menu.

	menu addAllFrom: (MenuMorph new 
		addAllMorphs: menuSrc1 submorphs;
		addAllMorphs: menuDest submorphs;
		addAllMorphs: menuSrc2 submorphs;
		yourself).
		
	^menu