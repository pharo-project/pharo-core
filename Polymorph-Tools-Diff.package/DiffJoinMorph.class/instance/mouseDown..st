event handling
mouseDown: evt
	"Check for a click."

	|cj|
	cj := self mappings
		detect: [:j | j containsPoint: evt position - self topLeft]
		ifNone: [].
	cj ifNotNil: [
		cj clicked.
		self triggerEvent: #joinClicked].
	super mouseDown: evt