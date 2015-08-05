rootNodes
	^ Nautilus showGroupsOnTop
		ifTrue: [ self methodGroupAsNode , self groupsAsNodes , self packagesAsNodes ]
		ifFalse: [ self packagesAsNodes ]