methodModified: anEvent

	(anEvent method class name asString beginsWith: 'ConfigurationOf')
		ifTrue: [  self respondToEventFor: anEvent method withOperation: #modified ]