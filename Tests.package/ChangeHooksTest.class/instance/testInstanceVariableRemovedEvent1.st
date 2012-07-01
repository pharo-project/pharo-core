Testing-Instance Variables
testInstanceVariableRemovedEvent1

	self systemChangeNotifier notify: self
		ofAllSystemChangesUsing: #instanceVariableRemovedEvent:.
	Object 
		subclass: generatedTestClassX name
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'System-Change Notification'.
	self checkForOnlySingleEvent