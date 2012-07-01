tests
testAsNumberWithSuperfluousDecimalPoint

	| sd |
	sd := '123.s2' asSmalltalkNumber.
	self deny: ScaledDecimal == sd class description: 'It used to, but this syntax is not valid Smalltalk'.
	sd := '123.s2' asNumber.
	self assert: ScaledDecimal == sd class description: 'It is a valid extended number syntax'.
	self assert: sd scale = 2.
	self assert: '123.00s2' = sd printString.

