handleFailure: anError of: aTestCase 
	self printFailure: anError of: aTestCase.
	self shouldSerializeError 
		ifTrue: [ self serializeError: anError of: aTestCase ]