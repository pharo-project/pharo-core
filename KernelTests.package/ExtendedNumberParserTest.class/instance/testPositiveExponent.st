testing
testPositiveExponent
	"A leading + sign is allowed in exponent"
	
	self assert: (ExtendedNumberParser parse: '1e+2') = 100.
	self assert: (ExtendedNumberParser parse: '1e+2') isInteger.
	self assert: (ExtendedNumberParser parse: '-1e+2') = -100.

	self assert: (ExtendedNumberParser parse: '1.e+2') = 100.
	self assert: (ExtendedNumberParser parse: '1.e+2') isFloat.
	self assert: (ExtendedNumberParser parse: '-1.0e+2') = -100.