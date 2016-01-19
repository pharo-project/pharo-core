testUlongRange
	"Simple test for making sure the FFI can call certain numbers in the ulong range"
	| result |
	self shouldnt: [
		result := self 
			ffiTestUlong: 3103854339 
			with: 3103854339 
			with: 3103854339 
			with: 3103854339 ] raise: Error.
	self assert: result =  1912741382.