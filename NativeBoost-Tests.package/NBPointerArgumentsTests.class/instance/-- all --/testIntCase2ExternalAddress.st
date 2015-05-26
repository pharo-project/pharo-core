testIntCase2ExternalAddress 
	| value | 
	value := 12345.
	self assert: (self readIntPtrCase2: (self intExternalAddress: value)) = value.