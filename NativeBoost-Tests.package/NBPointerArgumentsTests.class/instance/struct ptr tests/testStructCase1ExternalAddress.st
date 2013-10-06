testStructCase1ExternalAddress 
	| value | 
	value := 12345678.
	self should: [ self readStructPtrCase1: (self structExternalAddress: value) ] raise: NBFFICalloutError 
