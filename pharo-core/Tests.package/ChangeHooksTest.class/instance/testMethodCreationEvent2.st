Testing-Methods
testMethodCreationEvent2

	self systemChangeNotifier notify: self
		ofAllSystemChangesUsing: #methodCreationEvent2:.
	createdMethodName := #testCreation.
	generatedTestClass compile: createdMethodName , '	^1' classified: #testing.
	self checkForOnlySingleEvent