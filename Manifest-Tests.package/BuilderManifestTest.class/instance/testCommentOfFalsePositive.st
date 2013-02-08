tests
testCommentOfFalsePositive
	
	| manifestBuilder comment |
	
	comment := 'foo bar'.
	manifestBuilder := BuilderManifest of: MFClassA .
	manifestBuilder  installFalsePositiveOf: 'test' version: 0.
	
	manifestBuilder addFalsePositive: MFClassA of: 'test' version: 0. 
	
	self assert: (manifestBuilder commentOfFalsePositive: MFClassA onRule: 'test' version: 0) = ''.
	
	manifestBuilder addFalsePositive: MFClassA withComment: comment of: 'test' version: 0. 
	
	self assert: (manifestBuilder commentOfFalsePositive: MFClassA onRule: 'test' version: 0) = comment .
	
	
	
	