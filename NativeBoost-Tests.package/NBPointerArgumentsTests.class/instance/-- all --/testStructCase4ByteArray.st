testStructCase4ByteArray 
	|value|
	value := 12345678.
	self should:  [self readStructPtrCase4: (self structByteArray: value) ] raise: NBFFICalloutError .
