testing
testIntegerPartWithoutFraction
	"The fraction part after the decimal is optional"
	
	self assert: (ExtendedNumberParser parse: '1.') = 1.
	self assert: (ExtendedNumberParser parse: '1.') isFloat.
	
	self assert: (ExtendedNumberParser parse: '3.e2') = 300.
	self assert: (ExtendedNumberParser parse: '3.e2') isFloat.
	
	self assert: (ExtendedNumberParser parse: '-4.e2') = -400.
	self assert: (ExtendedNumberParser parse: '-4.e2') isFloat.
	
	self assert: (ExtendedNumberParser parse: '+5.e2') = 500.
	self assert: (ExtendedNumberParser parse: '+5.e2') isFloat.

	self assert: (ExtendedNumberParser parse: '+6.e+2') = 600.
	self assert: (ExtendedNumberParser parse: '+6.e+2') isFloat.

	self assert: (ExtendedNumberParser parse: '-7.e+2') = -700.
	self assert: (ExtendedNumberParser parse: '-7.e+2') isFloat.
	
	self assert: (ExtendedNumberParser parse: '+2r1.e-2') = (1/4).
	self assert: (ExtendedNumberParser parse: '+2r1.e-2') isFloat.
	
	self assert: (ExtendedNumberParser parse: '-4r1.e-2') = (-1/16).
	self assert: (ExtendedNumberParser parse: '-4r1.e-2') isFloat.