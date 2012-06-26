menu actions
invertSelections
	"Invert the selectedness of each item in the changelist"

	listSelections := listSelections collect: [ :ea | ea not].
	listIndex := 0.
	self changed: #allSelections.
	self contentsChanged