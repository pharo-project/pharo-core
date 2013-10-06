testPrimitive220ErrorCode
	"
	Test a protocol for installing/removing native code directly.
	"
	NBNativeCodeGen removeNativeCodeFrom: (self class>>#methodWithPrimitive220).
	self assert: (self class>>#methodWithPrimitive220) hasNativeCode not.
	
	"502 is error code = ErrNoNativeCodeInMethod "
	self methodWithPrimitive220 = 502.
