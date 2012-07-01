Testing-Classes
testClassRenamedEvent

	self systemChangeNotifier notify: self
		ofAllSystemChangesUsing: #classRenameEvent:.
	generatedTestClass rename: self renamedTestClassName.
	self checkForOnlySingleEvent