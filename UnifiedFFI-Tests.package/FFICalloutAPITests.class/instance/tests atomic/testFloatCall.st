testFloatCall
	"Test using generic FFI spec"
	| result |
	
	"This test fails in windows, but it is expected (is because the funtion used is in 
	 another library)"
	Smalltalk os isWindows ifTrue: [ ^ self skip ].	
	
	result := self ffiFloatAbs: 65.
	self assert: result equals: 65.0.
	
	result := self ffiFloatAbs: 65.0.
	self assert: result equals: 65.0.

	result := self ffiFloatAbs: $A.
	self assert: result equals: 65.0.

	result := self ffiFloatAbs: true.
	self assert: result equals: 1.0.
