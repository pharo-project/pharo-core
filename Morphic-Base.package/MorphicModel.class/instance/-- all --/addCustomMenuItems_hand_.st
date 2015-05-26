addCustomMenuItems: aCustomMenu hand: aHandMorph

	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	model ifNotNil: [model addModelMenuItemsTo: aCustomMenu forMorph: self hand: aHandMorph].