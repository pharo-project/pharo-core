basicShowHierarchy
	"Prepares the class panel to show hierarchies"
	| class |
			
	class := self selectedClass theNonMetaClass.
	classesSelection at: class put: true.
	self hierarchyClass: class.
	listElements := nil.
	list2Elements := nil	