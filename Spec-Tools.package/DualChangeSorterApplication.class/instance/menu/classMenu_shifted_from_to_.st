classMenu: menu shifted: shifted from: src to: dest
	"Fill aMenu with items appropriate for the class list"
	| menuSrc menuDual |
	
	src selectedClass ifNil: [ ^nil ].
	
	menuSrc := menu copy.
	src classMenu: menuSrc shifted: shifted.

	menuDual := MenuModel new fromSpec: (PragmaMenuBuilder 
		pragmaKeyword: 'dualChangeSorterClassListMenu'
		model: {self. src. dest}) menuSpec.

		
	^menu	
