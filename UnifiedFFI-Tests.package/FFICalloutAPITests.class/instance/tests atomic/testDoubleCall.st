testDoubleCall
	"Test using generic FFI spec"
	| result |
	
	result := self ffiDoubleAbs: 65.
	self assert: result equals: 65.0.
	
	result := self ffiDoubleAbs: 65.0.
	self assert: result equals: 65.0.

	result := self ffiDoubleAbs: $A.
	self assert: result equals: 65.0.

	result := self ffiDoubleAbs: true.
	self assert: result equals: 1.0.
