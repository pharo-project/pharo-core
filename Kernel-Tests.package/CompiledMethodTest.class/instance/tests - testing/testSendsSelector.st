testSendsSelector
	self assert: ((CompiledMethod >> #sendsSelector:) sendsSelector: #includes:).
	self deny: ((CompiledMethod >> #sendsSelector:) sendsSelector: #doBreakfastForMe)