tests
testIndirectArgumentArrayNegativeIndirect
	| array |
	array := {1.
	2.
	3.
	4.
	5}.
	self should: [(self returnOopMinus1Of: array)] raise: NBFFICalloutError  withExceptionDo: [:anEx | self assert: anEx messageText = self boundsError ].
	self should: [(self returnOopMinus3Of: array)] raise: NBFFICalloutError  withExceptionDo: [:anEx | self assert: anEx messageText = self boundsError ].
