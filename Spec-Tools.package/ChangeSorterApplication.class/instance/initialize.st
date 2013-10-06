initialization
initialize
	"Initialization code for ChangeSorterApplication"

	prettyPrint := false.
	showDiff := false.
	
	model := ChangeSorterModel new.
	SystemAnnouncer uniqueInstance weak 
		on: CurrentChangeSetChanged send: #updateTitle to: self.
	super initialize.
	self initializeAnnouncements.
	
	
	