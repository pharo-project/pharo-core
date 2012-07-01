user interface
addModelItemsToWindowMenu: aMenu
	"Add model-related items to the window menu"
	super addModelItemsToWindowMenu: aMenu.
	SystemBrowser addRegistryMenuItemsTo: aMenu inAccountOf: self.