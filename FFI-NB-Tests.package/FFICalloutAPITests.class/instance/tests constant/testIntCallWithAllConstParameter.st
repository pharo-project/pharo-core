testIntCallWithAllConstParameter
	"Test a function in the form:
	
	self nbCall: #( long ffiTestInts ( 65, 65, 65, true ) )
	
	(passing ALL constants as parameters)
	"
	| result |
	result := self ffiTestIntConstant.
	self assert: result = 130.