messageMenu: menu shifted: shifted from: sourcePanel to: destinationPanel
	"Fill aMenu with items appropriate for the message list; could be for a single or double changeSorter"
	
	| menuDual |
	
	sourcePanel selectedSelector ifNil: [ ^ nil ].
	sourcePanel messageMenu: menu shifted: shifted.
	menuDual := MenuModel new fromSpec: (PragmaMenuBuilder 
		pragmaKeyword: 'dualChangeSorterMessageListMenu'
		model: { self. sourcePanel. destinationPanel }) 
		menuSpec.
	menuDual menuGroups do: [ :each | menu addMenuGroup: each ].
	^menu	