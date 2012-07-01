Testing-Methods
testMethodRecategorizationEvent

	createdMethodName := #testCreation.
	generatedTestClass compile: createdMethodName , '	^1' classified: #testing.
	self systemChangeNotifier notify: self
		ofAllSystemChangesUsing: #methodRecategorizationEvent:.
	generatedTestClass organization 
		classify: createdMethodName
		under: #newCategory
		suppressIfDefault: false.
	self checkForOnlySingleEvent