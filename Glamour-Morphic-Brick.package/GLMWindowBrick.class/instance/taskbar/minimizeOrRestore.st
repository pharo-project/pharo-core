minimizeOrRestore
	"Collapse or expand the window, depending on existing state"
	
	| windowEvent |
	isCollapsed
		ifTrue: ["Expand -- restore panes to morphics structure"
			isCollapsed := false.
			"Bring to front first"
			self
				comeToFront;
				show;
				activate ]
		ifFalse: ["Collapse -- remove panes from morphics structure"
			isCollapsed := true.
			self
				hide.
			self isActive ifTrue: [
				self world navigateVisibleWindowForward]].
	self layoutChanged.
	
	"This gets invoked only if the taskbar is present, see sender of minimizeOrRestore"
	windowEvent := 
		self isMinimized 
			ifTrue: [ WindowCollapsed new ]
			ifFalse: [ WindowExpanded new ].

	windowEvent window: self.
	self announce: windowEvent.