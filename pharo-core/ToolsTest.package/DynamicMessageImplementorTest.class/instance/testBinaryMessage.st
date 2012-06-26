testing
testBinaryMessage

	| messageImplementor sourceCode |		
	
	messageImplementor := DynamicMessageImplementor for: (Message selector: #+ argument: 1) in: self class.	
	sourceCode := messageImplementor value.	
	self assert: sourceCode withSeparatorsCompacted = '+ aSmallInteger self shouldBeImplemented.' withSeparatorsCompacted