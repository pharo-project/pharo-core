testStructCase3ByteArray 

	self should: [self readStructPtrCase3: (self structByteArray: 12345678)] raise: NBFFICalloutError 