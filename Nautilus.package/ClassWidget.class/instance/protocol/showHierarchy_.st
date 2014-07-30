showHierarchy: anObject
	showHierarchy := anObject.
	self selectedClass ifNotNil:[: class |
		self setCachedHierarchyClass: class]