addModelItemsToWindowMenu: aMenu
	"Add model-related item to the window menu"

	super addModelItemsToWindowMenu: aMenu. 
	aMenu addLine.
	aMenu add: 'What to show...' translated target: self action: #offerWhatToShowMenu