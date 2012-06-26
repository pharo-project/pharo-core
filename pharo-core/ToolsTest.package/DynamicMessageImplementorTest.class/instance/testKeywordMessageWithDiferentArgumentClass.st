testing
testKeywordMessageWithDiferentArgumentClass

	| messageImplementor sourceCode |		
	
	messageImplementor := DynamicMessageImplementor for: (Message selector: #m1:m2:m3: arguments: #(1 $a 'string')) in: self class.	
	sourceCode := messageImplementor value.	
	self assert: sourceCode withSeparatorsCompacted = 'm1: aSmallInteger m2: aCharacter m3: aByteString self shouldBeImplemented.' withSeparatorsCompacted