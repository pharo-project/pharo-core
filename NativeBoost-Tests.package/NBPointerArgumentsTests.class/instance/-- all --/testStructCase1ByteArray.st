testStructCase1ByteArray 
	|value|
	value := 12345678.
	self should: [ self readStructPtrCase1: (self structByteArray: value)] raise: NBFFICalloutError.
