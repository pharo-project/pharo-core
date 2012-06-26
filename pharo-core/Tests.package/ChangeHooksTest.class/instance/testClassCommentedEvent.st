Testing-Classes
testClassCommentedEvent

	self systemChangeNotifier notify: self
		ofAllSystemChangesUsing: #classCommentedEvent:.
	generatedTestClass comment: self commentStringForTesting.
	self checkForOnlySingleEvent