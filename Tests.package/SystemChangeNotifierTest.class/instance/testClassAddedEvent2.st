Testing-system triggers
testClassAddedEvent2

	self systemChangeNotifier notify: self ofSystemChangesOfItem: #class change: #Added using: #event:.
	self systemChangeNotifier classAdded: self class inCategory: #FooCat.
	self
		checkEventForClass: self class
		category: #FooCat
		change: #Added