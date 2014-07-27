addHaloActionsTo: aMenu
	"Add items to aMenu representing actions requestable via halo"

	| subMenu |
	subMenu := UIManager default newMenuIn: self for: self.
	subMenu addTitle: self externalName.
	subMenu addStayUpItem.
	subMenu addLine.
	subMenu add: 'delete' translated action: #dismissViaHalo.
	subMenu balloonTextForLastItem: 'Delete this object -- warning -- can be destructive!' translated.

	self maybeAddCollapseItemTo: subMenu.
	subMenu add: 'grab' translated action: #openInHand.
	subMenu balloonTextForLastItem: 'Pick this object up -- warning, since this removes it from its container, it can have adverse effects.' translated.

	subMenu addLine.

	subMenu add: 'resize' translated action: #resizeFromMenu.
	subMenu balloonTextForLastItem: 'Change the size of this object' translated.

	subMenu add: 'duplicate' translated action: #maybeDuplicateMorph.
	subMenu balloonTextForLastItem: 'Hand me a copy of this object' translated.

	subMenu addLine.

	subMenu add: 'set color' translated target: self renderedMorph action: #changeColor.
	subMenu balloonTextForLastItem: 'Change the color of this object' translated.

	subMenu addLine.

	subMenu add: 'inspect' translated target: self action: #inspect.
	subMenu balloonTextForLastItem: 'Open an Inspector on this object' translated.

	aMenu add: 'halo actions...' translated subMenu: subMenu
