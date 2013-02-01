initialization
initialize
	"Initialization code for ComposableModel"

	super initialize.

	extentHolder := nil asValueHolder.
	needRebuild := true asValueHolder.
	isEventForNextFocusBlock := [ false ] asValueHolder.
	isEventForPreviousFocusBlock := [ false ] asValueHolder.
	self initializeWidgets.
	self initializePresenter.