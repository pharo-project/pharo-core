Testing-Classes
testClassRedefinition

	self systemChangeNotifier notify: self
		ofAllSystemChangesUsing: #classRedefinitionEvent:.
	self generateTestClass