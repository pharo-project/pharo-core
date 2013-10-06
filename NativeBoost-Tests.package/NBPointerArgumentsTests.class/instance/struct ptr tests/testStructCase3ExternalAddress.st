testStructCase3ExternalAddress 

	self should: [self readStructPtrCase3: (self structExternalAddress: 12345)] raise: NBFFICalloutError.