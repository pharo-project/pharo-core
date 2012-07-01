testing
testImplementingAMessageNamedAsVariableWithOneParameterShouldGenerateSetter

	| messageImplementor sourceCode |		
	
	messageImplementor := DynamicMessageImplementor for: (Message selector: #instVar: argument: 1) in: self class.	
	sourceCode := messageImplementor value.	
	self assert: sourceCode withSeparatorsCompacted = 'instVar: aSmallInteger self shouldBeImplemented. instVar := aSmallInteger' withSeparatorsCompacted