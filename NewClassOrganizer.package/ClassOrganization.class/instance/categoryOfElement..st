backward compatibility
categoryOfElement: aSelector

	^ (self protocolOrganizer protocolsOfSelector: aSelector)
		ifEmpty: [ Protocol defaultName ]
		ifNotEmpty: [:col | col first name ]