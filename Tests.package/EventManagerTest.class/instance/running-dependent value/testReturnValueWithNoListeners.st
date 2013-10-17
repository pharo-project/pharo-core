testReturnValueWithNoListeners

	| value |
	value := eventSource triggerEvent: #needsValue.
	self should: [value == nil]