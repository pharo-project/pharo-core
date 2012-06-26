initialization
initialize
	list := #().
	listIndex := 0.
	isResizeable := true.
	listBlock := [ :regex| #() ].
	super initialize.
	self title: 'Class Search'.
	self startStepping