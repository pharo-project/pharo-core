initialization
initialize
	"Initialization code for DualChangeSorterApplication"

	super initialize.

	model := ChangeSorterModel new.
	isRefreshing := false.
	
	SystemAnnouncer uniqueInstance weak 
		on: CurrentChangeSetChanged send: #updateTitle to: self.