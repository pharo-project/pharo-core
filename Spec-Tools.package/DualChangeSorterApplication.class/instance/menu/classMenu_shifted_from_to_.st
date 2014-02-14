classMenu: menu shifted: shifted from: sourcePanel to: destinationPanel
	"Fill aMenu with items appropriate for the class list"

	| menuDest |
	
	sourcePanel selectedClass ifNil: [ ^ nil ].
	sourcePanel classMenu: menu shifted: shifted.
	menuDest := MenuModel new fromSpec: (PragmaMenuBuilder
		pragmaKeyword: 'dualChangeSorterClassListMenu'
		model: {self. sourcePanel. destinationPanel}) 
		menuSpec.
	menuDest menuGroups do: [ :each | menu addMenuGroup: each ].
	^ menu