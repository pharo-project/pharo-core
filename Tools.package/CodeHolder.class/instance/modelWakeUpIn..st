misc
modelWakeUpIn: aWindow
	"The window has been activated.  Respond to possible changes that may have taken place while it was inactive"

	self updateListsAndCodeIn: aWindow.
	self decorateButtons.
	self refreshAnnotation.

	super modelWakeUpIn: aWindow