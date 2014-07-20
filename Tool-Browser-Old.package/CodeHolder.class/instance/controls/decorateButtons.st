decorateButtons
	"Change screen feedback for any buttons in the UI of the receiver that may wish it.  Initially, it is only the Inheritance button that is decorated, but one can imagine others."
	self changed: #inheritanceButtonColor.
	self decorateForInheritance 