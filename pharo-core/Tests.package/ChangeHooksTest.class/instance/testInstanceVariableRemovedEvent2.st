Testing-Instance Variables
testInstanceVariableRemovedEvent2

	self systemChangeNotifier notify: self
		ofAllSystemChangesUsing: #instanceVariableRemovedEvent:.
	generatedTestClassX removeInstVarNamed: 'x'.
	self checkForOnlySingleEvent