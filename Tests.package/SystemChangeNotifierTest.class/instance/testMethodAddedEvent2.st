Testing-system triggers
testMethodAddedEvent2

	self systemChangeNotifier notify: self ofAllSystemChangesUsing: #event:.
	self systemChangeNotifier 
		methodAdded: self class >> #testMethodAddedEvent1
		selector: #testMethodAddedEvent1
		inClass: self class.
	self 
		checkEventForMethod: self class >> #testMethodAddedEvent1
		protocol: nil
		change: #Added