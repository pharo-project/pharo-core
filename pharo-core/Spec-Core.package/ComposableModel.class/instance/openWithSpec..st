protocol
openWithSpec: aSpec
	"Build the widget using the spec name provided as argument and display it into a window"

	window := StandardWindow new model: self.
	self addAll: window withSpec: aSpec.
	window openInWorld.
	window title: self title.
	self takeKeyboardFocus.
	^ window