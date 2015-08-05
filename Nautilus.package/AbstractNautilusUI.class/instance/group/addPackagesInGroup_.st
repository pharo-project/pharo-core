addPackagesInGroup: aCollection
	(DialogGroupAdder new
		groups: self groupsManager;
		elementsToAdd: aCollection) open