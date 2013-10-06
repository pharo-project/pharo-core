showHierarchy: aBoolean

	showHierarchy := aBoolean.
	self announcer announce: ( NautilusShowHierarchyChanged boolean: aBoolean )