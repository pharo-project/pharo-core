addPackagesInGroup: aCollection
	
	aCollection
		ifNotEmpty: [:packages || classes |
			classes := packages gather: [:package | package classes ].
			(DialogGroupAdder new
				groups:	self groupsManager;
				elementsToAdd: (self model classes intersection: classes))
				open]