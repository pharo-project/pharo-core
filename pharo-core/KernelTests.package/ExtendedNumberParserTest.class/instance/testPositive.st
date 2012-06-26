testing
testPositive
	"A leading + sign is allowed"
	
	self assert: (ExtendedNumberParser parse: '+1') = 1.
	self assert: (ExtendedNumberParser parse: '+22') = 22.
	self assert: (ExtendedNumberParser parse: '+2r11') = 3.
	self assert: (ExtendedNumberParser parse: '+2r+101') = 5.
	self assert: (ExtendedNumberParser parse: '+2r-101') = -5.
	self assert: (ExtendedNumberParser parse: '-2r+101') = -5.
	
	self assert: (ExtendedNumberParser parse: '+1.') isFloat.
	self assert: (ExtendedNumberParser parse: '+1.') = 1.
	self assert: (ExtendedNumberParser parse: '+21.') = 21.
	self assert: (ExtendedNumberParser parse: '+3r21.') = 7.
	self assert: (ExtendedNumberParser parse: '+3r+201.') = 19.
	self assert: (ExtendedNumberParser parse: '+3r-201.') = -19.
	self assert: (ExtendedNumberParser parse: '-3r+201.') = -19.