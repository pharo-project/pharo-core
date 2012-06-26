Testing-system triggers
testMethodRemovedEvent

	self systemChangeNotifier notify: self ofAllSystemChangesUsing: #event:.
	self systemChangeNotifier 
		methodRemoved: self class>> #testMethodRemovedEvent
		selector: #testMethodRemovedEvent
		inProtocol: #FooCat
		class: self class.
	self
		checkEventForMethod: self class>> #testMethodRemovedEvent
		protocol: #FooCat
		change: #Removed.