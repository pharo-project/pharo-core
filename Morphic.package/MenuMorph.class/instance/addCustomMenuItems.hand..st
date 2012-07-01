menu
addCustomMenuItems: aCustomMenu hand: aHandMorph

	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	aCustomMenu addLine.
	aCustomMenu add: 'add title...' translated action: #addTitle.
	aCustomMenu add: 'set target...' translated action: #setTarget:.
	defaultTarget ifNotNil: [
		aCustomMenu add: 'add item...' translated action: #addItem].
	aCustomMenu add: 'add line' translated action: #addLine.
	(self items count:[:any| any hasSubMenu]) > 0
		ifTrue:[aCustomMenu add: 'detach submenu' translated action: #detachSubMenu:].