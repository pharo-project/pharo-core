initialization
initializeWidgets
	"Initialization code for DualChangeSorterApplication"

	self instantiateModels: #(
		changeSorterLeft  ChangeSorterApplication
		changeSorterRight  ChangeSorterApplication ).
		
	self menusRegistration.
	self shortcutsRegistration.
	self setFocusOrder