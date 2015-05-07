rootNodes 

	self model showGroups 
		ifTrue: [ ^ self groupsAsNodes ].

	^ Nautilus showGroupsOnTop 
		ifTrue: [ self groupsAsNodes, (self packagesAsNodes) ]
		ifFalse: [ self packagesAsNodes ].	
