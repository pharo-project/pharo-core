testIntCase1ExternalAddress 
	| value | 
	value := 12345.
	self assert: (self readIntPtrCase1: (self intExternalAddress: value)) = value.
