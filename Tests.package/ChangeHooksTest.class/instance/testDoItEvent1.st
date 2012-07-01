Testing-Expression
testDoItEvent1

	self systemChangeNotifier notify: self
		ofAllSystemChangesUsing: #methodDoItEvent1:.
	doItExpression := '1 + 2'.
	self class evaluatorClass evaluate: doItExpression logged: true.
	self checkForOnlySingleEvent