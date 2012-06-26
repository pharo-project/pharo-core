Testing-system triggers
testMethodAddedEvent3

	self systemChangeNotifier notify: self ofAllSystemChangesUsing: #event:.
	self systemChangeNotifier 
		methodChangedFrom: self class >> #testMethodAddedEvent1
		to: self class >> #testMethodAddedEvent2
		selector: #testMethodAddedEvent2
		inClass: self class.
	self 
		checkEventForMethod: self class >> #testMethodAddedEvent2
		protocol: nil
		change: #Modified
		oldMethod: self class >> #testMethodAddedEvent1.