testing
testMetaclassNameShouldBeUsedWhenArgumentIsAClass

	| messageImplementor sourceCode |		
	
	messageImplementor := DynamicMessageImplementor for: (Message selector: #m1: argument: Array) in: self class.	
	sourceCode := messageImplementor value.	
	self assert: sourceCode withSeparatorsCompacted = 'm1: anArrayClass self shouldBeImplemented.' withSeparatorsCompacted