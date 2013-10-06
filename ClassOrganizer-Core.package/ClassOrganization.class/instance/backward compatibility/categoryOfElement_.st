categoryOfElement: aSelector

	^ (self protocolOrganizer protocolsOfSelector: aSelector)
		ifEmpty: [ Protocol unclassified ]
		ifNotEmpty: [:col | col first name ]