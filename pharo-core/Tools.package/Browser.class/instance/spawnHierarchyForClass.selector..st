traits
spawnHierarchyForClass: aClass selector: aSelector
	"Create and schedule a new hierarchy browser for the given class and selector."
	self setClass: aClass selector: aSelector.
	self spawnHierarchy.
	