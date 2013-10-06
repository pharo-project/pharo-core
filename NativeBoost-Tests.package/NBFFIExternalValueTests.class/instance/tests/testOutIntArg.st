testOutIntArg
	|x value|
	NBTestExternalValue initialize.
	value := 12345678.
	x := NBTestExternalValue new.

	self outputIntArg: x value: value.
	
	self assert: x value = value.