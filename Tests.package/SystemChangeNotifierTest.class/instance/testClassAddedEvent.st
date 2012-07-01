Testing-system triggers
testClassAddedEvent

	self systemChangeNotifier notify: self ofAllSystemChangesUsing: #event:.
	self systemChangeNotifier classAdded: self class inCategory: #FooCat.
	self
		checkEventForClass: self class
		category: #FooCat
		change: #Added