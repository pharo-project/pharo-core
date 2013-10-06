initialize

	super initialize.
	
	textHolder := '' asValueHolder.
	behaviorHolder := nil asValueHolder.
	aboutToStyleHolder := [ false ] asValueHolder.
	actionToPerformHolder := [ :text |  ] asValueHolder.
	readSelectionHolder := [ 1 to: 0 ] asValueHolder.
	enabledHolder := true asValueHolder.
	actionPerformedHolder := '' asValueHolder.
	isCodeCompletionAllowedHolder := true asValueHolder.
	doItContext := nil asValueHolder.
	doItReceiver := nil asValueHolder.
	hasUnacceptedEdits := false asValueHolder.
	selection := (1 to: 0) asValueHolder.
	scrollValue := (0@0) asValueHolder.
	
	self registerEvents.
	self registerEventsForShout