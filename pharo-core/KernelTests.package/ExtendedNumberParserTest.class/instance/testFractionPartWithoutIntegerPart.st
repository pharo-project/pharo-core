testing
testFractionPartWithoutIntegerPart
	"The integer part before the decimal is optional"
	
	self assert: (ExtendedNumberParser parse: '.5') = (1/2).
	self assert: (ExtendedNumberParser parse: '.5') isFloat.
	
	self assert: (ExtendedNumberParser parse: '.3e2') = 30.
	self assert: (ExtendedNumberParser parse: '.3e2') isFloat.
	
	self assert: (ExtendedNumberParser parse: '-.4e2') = -40.
	self assert: (ExtendedNumberParser parse: '-.4e2') isFloat.
	
	self assert: (ExtendedNumberParser parse: '+.5e2') = 50.
	self assert: (ExtendedNumberParser parse: '+.5e2') isFloat.

	self assert: (ExtendedNumberParser parse: '+.6e+2') = 60.
	self assert: (ExtendedNumberParser parse: '+.6e+2') isFloat.

	self assert: (ExtendedNumberParser parse: '-.7e+2') = -70.
	self assert: (ExtendedNumberParser parse: '-.7e+2') isFloat.
	
	self assert: (ExtendedNumberParser parse: '+2r.1e-2') = (1/8).
	self assert: (ExtendedNumberParser parse: '+2r.1e-2') isFloat.
	
	self assert: (ExtendedNumberParser parse: '-4r.1e-2') = (-1/64).
	self assert: (ExtendedNumberParser parse: '-4r.1e-2') isFloat.