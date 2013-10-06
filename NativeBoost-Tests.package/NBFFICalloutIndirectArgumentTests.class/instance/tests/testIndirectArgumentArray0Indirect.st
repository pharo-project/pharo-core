testIndirectArgumentArray0Indirect
	| array |
	array := {1.
	2.
	3.
	4.
	5}.
	self
		should: [ self returnOop0Of: array ]
		raise: Error
		withExceptionDo: [ :anEx | self assert: (anEx messageText beginsWith: self boundsError) ].