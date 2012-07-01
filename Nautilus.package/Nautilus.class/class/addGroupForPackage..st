browser compatibility
addGroupForPackage: aPackage

	self groupsManager addADynamicClassGroupSilentlyNamed: aPackage name block: [ aPackage orderedClasses ].