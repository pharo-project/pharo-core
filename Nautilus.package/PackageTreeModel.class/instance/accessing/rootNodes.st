rootNodes
	^ Nautilus showGroupsOnTop
		ifTrue: [ self groupsAsNodes , self packagesAsNodes ]
		ifFalse: [ self packagesAsNodes ]