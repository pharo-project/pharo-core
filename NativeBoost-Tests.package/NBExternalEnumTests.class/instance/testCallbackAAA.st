as yet unclassified
testCallbackAAA
	|result|
	self skip.
	result := (self executeCb:  self callbackAAA ).
	self assert: (result isKindOf: self enumClass ).
	self assert: result value = 1.
	self assert: result item = #AAA.