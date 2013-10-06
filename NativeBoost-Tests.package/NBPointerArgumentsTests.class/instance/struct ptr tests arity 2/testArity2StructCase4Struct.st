testArity2StructCase4Struct
	"normally this test should fail, but it crashes the VM, because NBExternalStructure is variable byte class that gets captured by +optAllowByteArraysPtr"

	self should: [(self arity2StructPtrCase4: (self structValue: 12345678))] raise: NBFFICalloutError.
