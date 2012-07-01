Testing-system triggers
testClassCommentedEvent

	self systemChangeNotifier notify: self ofAllSystemChangesUsing: #event:.
	self systemChangeNotifier classCommented: self class inCategory: #FooCat.
	self
		checkEventForClass: self class
		category: #FooCat
		change: #Commented