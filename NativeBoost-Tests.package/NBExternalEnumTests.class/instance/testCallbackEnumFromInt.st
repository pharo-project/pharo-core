as yet unclassified
testCallbackEnumFromInt
	|result|
	result := (self executeCb:  self callback ).
	self assert: (result isKindOf: self enumClass ).
	self assert: result value = 2400.
	self assert: result item = #DDD. 