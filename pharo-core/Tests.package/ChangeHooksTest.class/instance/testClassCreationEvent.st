Testing-Classes
testClassCreationEvent

	self systemChangeNotifier notify: self
		ofAllSystemChangesUsing: #classCreationEvent:.
	Object 
		subclass: self newlyCreatedClassName
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'System-Change Notification'.
	self checkForOnlySingleEvent