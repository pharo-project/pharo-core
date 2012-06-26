instance creation
release
	SystemChangeNotifier uniqueInstance 
		noMoreNotificationsFor: self.
	self uniqueInstance release