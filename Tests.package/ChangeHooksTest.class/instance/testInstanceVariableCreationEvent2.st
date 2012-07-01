Testing-Instance Variables
testInstanceVariableCreationEvent2

	self systemChangeNotifier notify: self
		ofAllSystemChangesUsing: #instanceVariableCreationEvent:.
	generatedTestClass addInstVarNamed: 'x'.
	self checkForOnlySingleEvent