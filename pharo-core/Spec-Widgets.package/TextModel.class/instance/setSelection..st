protocol
setSelection: anInterval
	"Set the text selection without changing the readSelectionBlock"

	self widget
		ifNotNil: [:w | w selectionInterval: anInterval ]