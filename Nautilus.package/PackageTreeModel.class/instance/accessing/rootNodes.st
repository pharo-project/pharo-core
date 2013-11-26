rootNodes 
	self model showGroups 
		ifTrue: [ ^ self groupsAsNodes ].

	^ PackageTreeNautilus showGroupsOnTop 
		ifTrue: [ self groupsAsNodes, (self packagesAsNodes) ]
		ifFalse: [ self packagesAsNodes ].	
