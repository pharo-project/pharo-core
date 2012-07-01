initialization
initialize
	"Initialization code for ComposableModel"

	super initialize.

	bindings := BindingsHolder new.
	extentHolder := nil asValueHolder.
	self initializeWidgets.
	self initializePresenter.