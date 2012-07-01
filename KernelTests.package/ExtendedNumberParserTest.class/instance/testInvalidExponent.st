testing
testInvalidExponent
	"The leading number is returned, the invalid part is ignored"
	
	self assert: (ExtendedNumberParser parse: '1e') = 1.
	self assert: (ExtendedNumberParser parse: '1eZ') = 1.
	self assert: (ExtendedNumberParser parse: '+1eW') = 1.
	self assert: (ExtendedNumberParser parse: '-1eX') = -1.
	
	self assert: (ExtendedNumberParser parse: '2e-') = 2.
	self assert: (ExtendedNumberParser parse: '2e--1') = 2.
	self assert: (ExtendedNumberParser parse: '2e-+1') = 2.
	self assert: (ExtendedNumberParser parse: '2e-Z') = 2.
	self assert: (ExtendedNumberParser parse: '+2e-W') = 2.
	self assert: (ExtendedNumberParser parse: '-2e-X') = -2.
	
	self assert: (ExtendedNumberParser parse: '3e+') = 3.
	self assert: (ExtendedNumberParser parse: '3e+-') = 3.
	self assert: (ExtendedNumberParser parse: '3e+-1') = 3.
	self assert: (ExtendedNumberParser parse: '+3e+W') = 3.
	self assert: (ExtendedNumberParser parse: '-3e+Z') = -3.