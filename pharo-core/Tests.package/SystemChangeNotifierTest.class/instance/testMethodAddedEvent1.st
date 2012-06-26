Testing-system triggers
testMethodAddedEvent1

	self systemChangeNotifier notify: self ofAllSystemChangesUsing: #event:.
	self systemChangeNotifier 
		methodAdded: self class >> #testMethodAddedEvent1
		selector: #testMethodAddedEvent1
		inProtocol: #FooCat
		class: self class.
	self 
		checkEventForMethod: self class >> #testMethodAddedEvent1
		protocol: #FooCat
		change: #Added