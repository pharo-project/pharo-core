showHierarchy: aBoolean

	self model showHierarchy: aBoolean.
	self resetPackagesList.
	self resetClassesList.
	aBoolean 
		ifTrue: [ self hierarchyClass: self selectedClass ].
	self updateBothView