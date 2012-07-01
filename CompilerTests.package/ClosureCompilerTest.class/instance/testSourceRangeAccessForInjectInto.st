tests
testSourceRangeAccessForInjectInto
	"Test debugger source range selection for inject:into: for the current version of the method"
	"self new testSourceRangeAccessForInjectInto"
	self supportTestSourceRangeAccessForInjectInto: (Collection compiledMethodAt: #inject:into:)
		source: (Collection sourceCodeAt: #inject:into:) asString