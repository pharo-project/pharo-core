PharoKernel-private
privCleanMonticello

	(Smalltalk classNamed: #MCFileBasedRepository) flushAllCaches.
	(Smalltalk classNamed: #MCDefinition) clearInstances.

	(Smalltalk classNamed: #MCWorkingCopy) allInstancesDo:[:wc| 
		SystemAnnouncer uniqueInstance noMoreNotificationsFor: wc. wc unregister].
	
	SystemAnnouncer uniqueInstance noMoreNotificationsFor: (Smalltalk classNamed: #MCPackageManager).
	SystemAnnouncer uniqueInstance noMoreNotificationsFor: (Smalltalk classNamed: #MCWorkingCopy).

