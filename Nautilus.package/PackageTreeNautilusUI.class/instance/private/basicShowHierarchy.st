basicShowHierarchy
	"Prepares the class panel to show hierarchies"
	| class |
			
	class := self selectedClass theNonMetaClass.
	self classWidget selectClass: class.
	self resetPackagesList.
	self resetClassesList.	