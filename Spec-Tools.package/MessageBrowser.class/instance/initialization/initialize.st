initialize

	textConverterHolder := SourceMethodConverter new asValueHolder.
	model := AbstractTool new.
	maxClassSize = nil.
	searchedStringHolder := '' asValueHolder.
	topologicSortHolder := true asValueHolder.

	super initialize.

	self windowIcon: self taskbarIcon.
	self registerToAnnouncements.

	self announcer
		when: WidgetBuilt 
		send: #buildUpdateTitle
		to: self