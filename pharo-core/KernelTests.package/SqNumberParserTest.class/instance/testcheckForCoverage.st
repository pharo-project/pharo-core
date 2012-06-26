tests - Integer
testcheckForCoverage
	"self debug: #testcheckForCoverage"
	"Tests for old semantics of Number>>readFrom:"
	
	self should: [(SqNumberParser parse: '.') = 0 ] raise: Error.
	self should: [(SqNumberParser parse: '.1') asNumber = 0.1] raise: Error.
	self assert: (SqNumberParser parse: '0.0') asNumber = 0.
	self assert: (SqNumberParser parse: '0.1') asNumber = 0.1.
	self assert: (SqNumberParser parse: '1.1') asNumber = 1.1.
	self assert: (SqNumberParser parse: '-1') asNumber = -1.