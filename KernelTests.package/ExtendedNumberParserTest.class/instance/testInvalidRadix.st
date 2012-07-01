testing
testInvalidRadix
	"The leading number is returned, the invalid part is ignored"
	
	self assert: (ExtendedNumberParser parse: '1r') = 1.
	self assert: (ExtendedNumberParser parse: '+1r') = 1.
	self assert: (ExtendedNumberParser parse: '-1r') = -1.
	self assert: (ExtendedNumberParser parse: '-1r+') = -1.
	self assert: (ExtendedNumberParser parse: '-1r-') = -1.
	
	self assert: (ExtendedNumberParser parse: '-2r.') = -2.
	self assert: (ExtendedNumberParser parse: '-2r-.') = -2.
	self assert: (ExtendedNumberParser parse: '+2r-.') = 2.
	
	self assert: (ExtendedNumberParser parse: '+2r3.') = 2.
	self assert: (ExtendedNumberParser parse: '+2r.3') = 2.
	self assert: (ExtendedNumberParser parse: '+2r-.3') = 2.