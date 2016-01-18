handleError: anError log: shouldLog

	shouldLog ifTrue: [ self logError: anError ].