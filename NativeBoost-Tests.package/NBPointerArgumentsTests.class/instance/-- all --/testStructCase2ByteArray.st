testStructCase2ByteArray 

	self should: [self readStructPtrCase2: (self structByteArray: 12345678)] raise: NBFFICalloutError 
