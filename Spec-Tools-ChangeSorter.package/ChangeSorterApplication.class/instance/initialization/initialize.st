initialize

	prettyPrint := false.
	showDiff := false.
	model := ChangeSorterModel new.
	SystemAnnouncer uniqueInstance weak 
		when: CurrentChangeSetChanged do: [:each | self updateTitle].
	super initialize.
	self initializeAnnouncements.
	
	
	