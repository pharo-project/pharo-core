initialize

	super initialize.
	
	textHolder := '' asReactiveVariable.
	behaviorHolder := nil asReactiveVariable.
	aboutToStyleHolder := [ false ] asReactiveVariable.
	actionToPerformHolder := [ :text |  ] asReactiveVariable.
	readSelectionHolder := [ selection value ] asReactiveVariable.
	enabledHolder := true asReactiveVariable.
	actionPerformedHolder := '' asReactiveVariable.
	isCodeCompletionAllowedHolder := true asReactiveVariable.
	doItContext := nil asReactiveVariable.
	doItReceiver := nil asReactiveVariable.
	hasUnacceptedEdits := false asReactiveVariable.
	selection := (1 to: 0) asReactiveVariable.
	scrollValue := (0@0) asReactiveVariable.
	menuHolder := [ :menu :shifted | shifted
			ifTrue: [ SmalltalkEditor shiftedYellowButtonMenu ]
			ifFalse: [ SmalltalkEditor yellowButtonMenu ] ] asReactiveVariable.
	autoAccept := false asReactiveVariable.
	wantsVisualFeedback := true asReactiveVariable.
	askBeforeDiscardingEdits := true asReactiveVariable.
	
	self registerEvents.
	self registerEventsForShout