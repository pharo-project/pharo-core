collapseOrExpand
	"Collapse or expand the window, depending on existing state.
	Use the taskbar if present, otherwise do as normal."
	
	self isTaskbarPresent ifTrue: [^self minimizeOrRestore].
	isCollapsed
		ifTrue: 
			["Expand -- restore panes to morphics structure"
			isCollapsed := false.
			self activate.  "Bring to frint first" ]
		ifFalse: 
			["Collapse -- remove panes from morphics structure"
			isCollapsed := true ].
	self layoutChanged.
	
	self announce: 
		(WindowCollapsed new
			window: self;
			yourself).