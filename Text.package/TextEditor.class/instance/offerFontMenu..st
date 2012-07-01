editing keys
offerFontMenu: aKeyboardEvent 
	"The user typed the command key that requests a font change; Offer the font menu.  5/27/96 sw"

	self closeTypeIn.
	self offerFontMenu.
	^ true