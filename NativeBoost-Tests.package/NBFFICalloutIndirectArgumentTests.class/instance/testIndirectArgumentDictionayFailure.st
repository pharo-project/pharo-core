tests
testIndirectArgumentDictionayFailure
	| array |
	array := {(1 -> 2).
	(3 -> 3)} asDictionary.
	self assert: (self returnOop1Of: array) =  2. "tally"
	self assert: (self returnOop2Of: array) = {nil. 1->2. nil. 3->3. nil}. "array"
	self
		should: [ self returnOop5Of: array ]
		raise: NBFFICalloutError
		withExceptionDo: [ :anEx | self assert: anEx messageText = self boundsError ]