Testing-Classes
testClassSuperChangedEvent

	self systemChangeNotifier notify: self
		ofAllSystemChangesUsing: #classSuperChangedEvent:.
	Model 
		subclass: generatedTestClass name
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'System-Change Notification'.
	self checkForOnlySingleEvent