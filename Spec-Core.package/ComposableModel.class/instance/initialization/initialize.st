initialize

	super initialize.

	extentHolder := nil asReactiveVariable.
	needRebuild := true asReactiveVariable.
	keyStrokesForNextFocusHolder := { KMNoShortcut new } asReactiveVariable.
	keyStrokesForPreviousFocusHolder := { KMNoShortcut new } asReactiveVariable.
	additionalKeyBindings := Dictionary new.
	announcer := Announcer new asReactiveVariable.
	aboutText := self class comment asReactiveVariable.
	windowIcon := nil asReactiveVariable.
	window := nil asReactiveVariable.
	askOkToClose := false asReactiveVariable.
	titleHolder := self class title asReactiveVariable.
	
	self initializeWidgets.
	self initializePresenter.
	
	keyStrokesForNextFocusHolder whenChangedDo: [ self registerKeyStrokesForNextFor: self widget ].
	keyStrokesForPreviousFocusHolder whenChangedDo: [ self registerKeyStrokesForPreviousFor: self widget ].
	titleHolder whenChangedDo: [ self updateTitle ]