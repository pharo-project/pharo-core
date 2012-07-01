Testing-Classes
testClassRecategorizedEvent2

	self systemChangeNotifier notify: self
		ofAllSystemChangesUsing: #classRecategorizedEvent:.
	generatedTestClass category: 'Collections-Abstract'.
	self checkForOnlySingleEvent