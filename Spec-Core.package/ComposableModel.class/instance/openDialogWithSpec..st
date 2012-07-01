protocol
openDialogWithSpec: aSpec
	"Build the widget using the spec name provided as argument and display it into a window"

	window := SpecDialogWindow basicNew.
	window specWidget: (self buildWithSpec: aSpec).
	window initialize.
	window model: self.
	self initializeDialogWindow: window.
	window openInWorld.
	window title: self title.
	self takeKeyboardFocus.
	^ window