initialization
initialize
	"Initialization code for ComposableModel"

	super initialize.

	bindings := BindingsHolder new.
	self initializeWidgets.
	self initializePresenter.