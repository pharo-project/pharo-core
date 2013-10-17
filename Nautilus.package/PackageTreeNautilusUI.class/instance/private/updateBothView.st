updateBothView
	| selectedPackage selectedClass |
	
	super updateBothView.
	selectedPackage := self selectedPackage.
	selectedClass := self selectedClass.
	self updatePackageView.
	"I need to restore selection (otherwise, nothing goes to the right position)"
	self selectedPackage: selectedPackage.
	self selectedClass: selectedClass.