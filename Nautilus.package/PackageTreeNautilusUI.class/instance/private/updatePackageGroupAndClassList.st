updatePackageGroupAndClassList
	| selectedPackage selectedClass |
	
	
	selectedPackage := self selectedPackage.
	selectedClass := self selectedClass.
	super updatePackageGroupAndClassList.
	"I need to restore selection (otherwise, nothing goes to the right position)"
	self packageWidget updateList.
	self selectedPackage: selectedPackage.
	self selectedClass: selectedClass.