Testing-Classes
testClassRecategorizedEvent1

	self systemChangeNotifier notify: self
		ofAllSystemChangesUsing: #classRecategorizedEvent:.
	Object 
		subclass: generatedTestClass name
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'Collections-Abstract'.
	self checkForOnlySingleEvent