showHierarchy: aBoolean

	self model showHierarchy: aBoolean.
	listElements := nil.
	self resetClassesList.
	aBoolean 
		ifTrue: [ self hierarchyClass: self selectedClass ].
	self updateBothView