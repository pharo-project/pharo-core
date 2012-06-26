PharoKernel-private
privCleanMonticello

	(Smalltalk classNamed: #MCFileBasedRepository) flushAllCaches.
	(Smalltalk classNamed: #MCDefinition) clearInstances.

	(Smalltalk classNamed: #MCWorkingCopy) allInstancesDo:[:wc| 
		SystemChangeNotifier uniqueInstance noMoreNotificationsFor: wc. wc unregister].
	
	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: (Smalltalk classNamed: #MCPackageManager).
	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: (Smalltalk classNamed: #MCWorkingCopy).

