testPrimitiveNamedErrorCode1
	"This test useses the #primitiveDirectoryLookup primitive."

	self compile: '<primitive: ''primitiveDirectoryLookup'' error: errorCode module: ''FilePlugin''> ^ errorCode' selector: #lookup.
	self assert: self lookup equals: nil.
	
