menu
addCustomMenuItems: aCustomMenu hand: aHandMorph

	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	model ifNotNil: [model addModelMenuItemsTo: aCustomMenu forMorph: self hand: aHandMorph].
	self isOpen ifTrue: [aCustomMenu add: 'close editing' translated action: #closeToEdits]
			ifFalse: [aCustomMenu add: 'open editing' translated action: #openToEdits].
