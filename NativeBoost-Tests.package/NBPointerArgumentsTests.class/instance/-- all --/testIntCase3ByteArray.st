testIntCase3ByteArray 

	self should: [ self readIntPtrCase3: (self intByteArray: 12345)] raise: NBFFICalloutError .
