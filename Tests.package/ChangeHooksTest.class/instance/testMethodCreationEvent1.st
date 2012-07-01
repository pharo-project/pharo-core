Testing-Methods
testMethodCreationEvent1

	self systemChangeNotifier notify: self
		ofAllSystemChangesUsing: #methodCreationEvent1:.
	createdMethodName := #testCreation.
	generatedTestClass compile: createdMethodName , '	^1'.
	self checkForOnlySingleEvent