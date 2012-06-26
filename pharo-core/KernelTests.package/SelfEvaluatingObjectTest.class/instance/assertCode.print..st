utilities
assertCode: code print: aString
	self assert: (self compile: code) printString = aString