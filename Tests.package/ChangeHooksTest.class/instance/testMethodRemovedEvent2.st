Testing-Methods
testMethodRemovedEvent2

	createdMethodName := #testCreation.
	generatedTestClass compile: createdMethodName , '	^1'.
	createdMethod := generatedTestClass >> createdMethodName.
	self systemChangeNotifier notify: self
		ofAllSystemChangesUsing: #methodRemovedEvent2:.
	Smalltalk 
		removeSelector: (Array with: generatedTestClass name with: createdMethodName).
	self checkForOnlySingleEvent