initialization
initialize
	"Initialization code for TextComposableModel"

	super initialize.
	
	textHolder := '' asValueHolder.
	behaviorHolder := nil asValueHolder.
	aboutToStyleHolder := [ false ] asValueHolder.
	actionToPerformHolder := [ :text |  ] asValueHolder.
	readSelectionHolder := [ 1 to: 0 ] asValueHolder.
	enabledHolder := true asValueHolder.
	actionPerformedHolder := nil asValueHolder.
	isCodeCompletionAllowedHolder := true asValueHolder.
	doItContext := nil asValueHolder.
	doItReceiver := nil asValueHolder.
	
	self registerEvents.
	self registerEventsForShout