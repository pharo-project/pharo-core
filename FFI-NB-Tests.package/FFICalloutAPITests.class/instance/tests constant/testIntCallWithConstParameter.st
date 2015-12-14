testIntCallWithConstParameter
	"Tests a function in the form: 
	
	self nbCall: #( long ffiTestInts ( 65, 65, 65, long aNumber ) )
	
	(passing constants as parameters)
	"
	| result |
	result := self ffiTestIntConstantWith: true.
	self assert: result = 130.