display
open

	| win |
	win := StandardWindow new model: self.
	win title: self model title.
	self addAllItems: win.
	win themeChanged.
	win openInWorld.
	^ win