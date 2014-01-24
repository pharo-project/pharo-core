initialize

	super initialize.

	model := nil asReactiveVariable.
	initialExtent := nil asReactiveVariable.
	title := self class title asReactiveVariable.
	isClosedHolder := false asReactiveVariable.
	isResizeable := true asReactiveVariable.
	
	model whenChangedDo: [:m | self updateTitle ].