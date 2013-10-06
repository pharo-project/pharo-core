testOutIntoByteArray
	|x value|
	NBTestExternalValue initialize.
	value := 12345678.
	x := ByteArray new: 4.

	self outputVoidArg: x value: value.
	
	self assert: (x nbUInt32AtOffset: 0)  = value.