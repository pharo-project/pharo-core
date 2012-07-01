accessing
initialize
	"Initialize the receiver."

	super initialize.
	entryText := ''.
	self changed: #entryText.
	self textEditorMorph selectAll.