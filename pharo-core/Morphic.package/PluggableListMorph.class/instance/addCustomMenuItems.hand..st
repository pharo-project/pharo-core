menus
addCustomMenuItems:  aMenu hand: aHandMorph
	"Add halo menu items to be handled by the invoking hand. The halo menu is invoked by clicking on the menu-handle of the receiver's halo."

	super addCustomMenuItems: aMenu hand: aHandMorph.
	aMenu addLine.
	aMenu add: 'list font...' translated target: self action: #setListFont.
	aMenu add: 'copy list to clipboard' translated target: self action: #copyListToClipboard.
	aMenu add: 'copy selection to clipboard' translated target: self action: #copySelectionToClipboard