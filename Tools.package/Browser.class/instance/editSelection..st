accessing
editSelection: aSelection
	"Set the editSelection as requested."

	editSelection := aSelection.
	self changed: #editSelection.