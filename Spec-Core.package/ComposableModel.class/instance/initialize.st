initialization
initialize
	"Initialization code for ComposableModel"

	super initialize.

	bindings := BindingsHolder new.
	extentHolder := nil asValueHolder.
	needRebuild := true asValueHolder.
	isEventForNextFocusBlock := [ false ] asValueHolder.
	isEventForPreviousFocusBlock := [ false ] asValueHolder.
	self initializeWidgets.
	self initializePresenter.