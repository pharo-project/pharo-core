testCallbackAAA
	|result|
	self skip: 'workaround: this crashes the VM sometimes'.
	result := (self executeCb:  self callbackAAA ).
	self assert: (result isKindOf: self enumClass ).
	self assert: result value = 1.
	self assert: result item = #AAA.