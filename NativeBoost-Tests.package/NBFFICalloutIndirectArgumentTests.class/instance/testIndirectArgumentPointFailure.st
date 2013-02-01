tests
testIndirectArgumentPointFailure
	| array |
	array := 2 @ 5.
	self assert: (self returnOop1Of: array) == 2.
	self assert: (self returnOop2Of: array) == 5.
	self
		should: [ self returnOop5Of: array ]
		raise: NBFFICalloutError
		withExceptionDo: [ :anEx | self assert: anEx messageText = self boundsError ]