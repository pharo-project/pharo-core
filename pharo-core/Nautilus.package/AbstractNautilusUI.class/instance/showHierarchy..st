accessing
showHierarchy: aBoolean

	self model showHierarchy: aBoolean.
	listElements := nil.
	list2Elements := nil.
	aBoolean 
		ifTrue: [ self hierarchyClass: self selectedClass ].
	self updateBothView