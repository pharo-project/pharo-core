initialize

	textConverterHolder := SourceMethodConverter new asReactiveVariable.
	model := AbstractTool new.
	maxClassSize = nil.
	searchedStringHolder := '' asReactiveVariable.
	topologicSortHolder := true asReactiveVariable.

	super initialize.
      askOkToClose:= true asReactiveVariable.
	self windowIcon: self taskbarIcon.
	self registerToAnnouncements.

	self announcer
		when: WidgetBuilt 
		send: #buildUpdateTitle
		to: self