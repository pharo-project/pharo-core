keyUp: event
	super keyUp: event.
	
	self stopSteppingSelector: #autoScrollView:.
	"editView scrollSelectionIntoView: evt."
	editView selectionInterval: editor selectionInterval.