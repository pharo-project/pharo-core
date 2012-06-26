Testing-Methods
testMethodRemovedEvent1

	createdMethodName := #testCreation.
	generatedTestClass compile: createdMethodName , '	^1'.
	createdMethod := generatedTestClass >> createdMethodName.
	self systemChangeNotifier notify: self
		ofAllSystemChangesUsing: #methodRemovedEvent1:.
	generatedTestClass removeSelector: createdMethodName.
	self checkForOnlySingleEvent