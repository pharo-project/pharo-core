testProtoObjectMethod
	"This test works in you move Object>>#class to ProtoObject>>#class 
	I proposed the fix in the bug issue tracker "

	self
		shouldnt: [self interpret: 'ProtoObject new flag: #hallo']
		raise: InterpretationError
	