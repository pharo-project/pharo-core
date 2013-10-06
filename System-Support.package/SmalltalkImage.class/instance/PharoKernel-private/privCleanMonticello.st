privCleanMonticello

	(Smalltalk classNamed: #MCFileBasedRepository) flushAllCaches.
	(Smalltalk classNamed: #MCDefinition) clearInstances.

	(Smalltalk classNamed: #MCWorkingCopy) allInstancesDo:[:wc| 
		SystemAnnouncer uniqueInstance unsubscribe: wc. 
		wc unregister].
	
	SystemAnnouncer uniqueInstance 
		unsubscribe: (Smalltalk classNamed: #MCPackageManager);
		unsubscribe: (Smalltalk classNamed: #MCWorkingCopy).

