tests
testIndirectArgumentLargePositiveIntegerFailure
	| array |
	array := 100 factorial.
	self
		should: [ self returnOop1Of: array ]
		raise: NBFFICalloutError
		withExceptionDo: [ :anEx | self assert: anEx messageText = self typeError ].
	self
		should: [ self returnOop2Of: array ]
		raise: NBFFICalloutError
		withExceptionDo: [ :anEx | self assert: anEx messageText = self typeError ].
	self
		should: [ self returnOop5Of: array ]
		raise: NBFFICalloutError
		withExceptionDo: [ :anEx | self assert: anEx messageText = self typeError ]