nil
deselectItem
	| item |
	self isSelected: false.
	subMenu ifNotNil: [subMenu deleteIfPopUp].
	(owner isKindOf: MenuMorph) ifTrue:
		[item := owner popUpOwner.
		(item isKindOf: MenuItemMorph) ifTrue: [item deselectItem]].
