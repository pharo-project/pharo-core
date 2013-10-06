testIntToEnum

	self assert: (self primIntToEnum: 1) value = 1 .
	self assert: (self primIntToEnum: 2) value = 2.
	self assert: (self primIntToEnum: 3) value = 3.
	self assert: (self primIntToEnum: 2400) value = 2400.