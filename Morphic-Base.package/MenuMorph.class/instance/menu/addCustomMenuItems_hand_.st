addCustomMenuItems: aCustomMenu hand: aHandMorph

	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	aCustomMenu addLine.
	aCustomMenu add: 'add title...' action: #addTitle.
	aCustomMenu add: 'set target...' action: #setTarget:.
	defaultTarget ifNotNil: [
		aCustomMenu add: 'add item...' action: #addItem].
	aCustomMenu add: 'add line' action: #addLine.
	(self items count: [:any| any hasSubMenu]) > 0
		ifTrue:[aCustomMenu add: 'detach submenu' action: #detachSubMenu:].