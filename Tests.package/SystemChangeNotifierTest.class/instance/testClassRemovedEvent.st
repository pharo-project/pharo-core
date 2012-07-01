Testing-system triggers
testClassRemovedEvent

	self systemChangeNotifier notify: self ofAllSystemChangesUsing: #event:.
	self systemChangeNotifier classRemoved: self class fromCategory: #FooCat.
	self
		checkEventForClass: self class
		category: #FooCat
		change: #Removed