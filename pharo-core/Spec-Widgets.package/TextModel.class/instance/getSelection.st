protocol
getSelection
	"Get the text selection"

	self widget
		ifNil: [ self readSelection ]
		ifNotNil: [:w | w selectionInterval ]