Testing-Instance Variables
testInstanceVariableCreationEvent1

	self systemChangeNotifier notify: self
		ofAllSystemChangesUsing: #instanceVariableCreationEvent:.
	Object 
		subclass: self generatedTestClassName
		instanceVariableNames: 'x'
		classVariableNames: ''
		poolDictionaries: ''
		category: 'System-Change Notification'.
	self checkForOnlySingleEvent