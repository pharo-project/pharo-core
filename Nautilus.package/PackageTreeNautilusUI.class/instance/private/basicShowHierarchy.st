basicShowHierarchy
	"Prepares the class panel to show hierarchies"
	self resetClassesListSelection.
	self classWidget selectClass: self selectedClass.
	self resetPackageGroupsList.
	self resetClassesList.	