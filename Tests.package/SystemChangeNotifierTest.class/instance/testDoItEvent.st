Testing-system triggers
testDoItEvent

	self systemChangeNotifier notify: self ofAllSystemChangesUsing: #event:.
	self systemChangeNotifier 
		evaluated: '1 + 2'
		context: self.
	self assert: capturedEvent isDoIt.
	self assert: capturedEvent item = '1 + 2'.
	self assert: capturedEvent itemKind = AbstractEvent expressionKind.
	self assert: capturedEvent itemClass = nil.
	self assert: capturedEvent itemMethod = nil.
	self assert: capturedEvent itemProtocol = nil.
	self assert: capturedEvent itemExpression = '1 + 2'.
	self assert: capturedEvent context = self.