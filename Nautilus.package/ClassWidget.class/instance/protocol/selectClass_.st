selectClass: aClass
	self classesSelection at: aClass put: true.
	self showHierarchy ifTrue:[ self setCachedHierarchyClass: aClass]