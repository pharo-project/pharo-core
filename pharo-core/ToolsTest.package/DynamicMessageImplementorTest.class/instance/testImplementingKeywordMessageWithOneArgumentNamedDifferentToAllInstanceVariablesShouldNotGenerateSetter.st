testing
testImplementingKeywordMessageWithOneArgumentNamedDifferentToAllInstanceVariablesShouldNotGenerateSetter

	| messageImplementor sourceCode |		
	
	messageImplementor := DynamicMessageImplementor for: (Message selector: #m1: argument: 1) in: self class.	
	sourceCode := messageImplementor value.	
	self assert: sourceCode withSeparatorsCompacted = 'm1: aSmallInteger self shouldBeImplemented.' withSeparatorsCompacted