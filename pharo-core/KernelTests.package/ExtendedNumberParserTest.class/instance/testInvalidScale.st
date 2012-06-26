testing
testInvalidScale
	"The leading number is returned, the invalid part is ignored"
	
	self assert: (ExtendedNumberParser parse: '1s') = 1.
	self assert: (ExtendedNumberParser parse: '1sZ') = 1.
	self assert: (ExtendedNumberParser parse: '+1sW') = 1.
	self assert: (ExtendedNumberParser parse: '-1sX') = -1.
	
	self assert: (ExtendedNumberParser parse: '2s-') = 2.
	self assert: (ExtendedNumberParser parse: '2s--1') = 2.
	self assert: (ExtendedNumberParser parse: '2s-+1') = 2.
	self assert: (ExtendedNumberParser parse: '2s-1') = 2.
	self assert: (ExtendedNumberParser parse: '+2s-2') = 2.
	self assert: (ExtendedNumberParser parse: '-2s-3') = -2.
	
	self assert: (ExtendedNumberParser parse: '3s+') = 3.
	self assert: (ExtendedNumberParser parse: '3s+-') = 3.
	self assert: (ExtendedNumberParser parse: '3s+-1') = 3.
	self assert: (ExtendedNumberParser parse: '+3s+2') = 3.
	self assert: (ExtendedNumberParser parse: '-3s+3') = -3.