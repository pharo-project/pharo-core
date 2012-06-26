Testing-Expression
testDoItEvent2

	self systemChangeNotifier notify: self
		ofAllSystemChangesUsing: #shouldNotBeCalledEvent:.
	doItExpression := '1 + 2'.
	self class evaluatorClass evaluate: doItExpression logged: false.