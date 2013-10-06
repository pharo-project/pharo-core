testIndirectArgumentArrayNegativeIndirect
	| array |
	array := {1.
	2.
	3.
	4.
	5}.
	self
		should: [ self returnOopMinus1Of: array ]
		raise: Error
		withExceptionDo: [ :anEx | self assert: (anEx messageText beginsWith: self boundsError) ].
	self
		should: [ self returnOopMinus3Of: array ]
		raise: Error
		withExceptionDo: [ :anEx | self assert: (anEx messageText beginsWith: self boundsError) ]