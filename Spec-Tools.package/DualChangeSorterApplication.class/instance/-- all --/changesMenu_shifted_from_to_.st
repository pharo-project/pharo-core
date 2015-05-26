changesMenu: menu shifted: shifted from: sourcePanel to: destinationPanel
	| menuDest |
	menu addTitle: 'Change Set'.
	sourcePanel changeSetMenu1: menu shifted: shifted.
	menuDest := MenuModel new
		fromSpec:
			(PragmaMenuBuilder
				pragmaKeyword: 'dualChangeSorteChangesListMenu'
				model:
					{self.
					sourcePanel.
					destinationPanel}) menuSpec.
	menuDest menuGroups do: [ :each | menu addMenuGroup: each ].
	sourcePanel changeSetMenu2: menu shifted: shifted.
	^ menu