tests - Float
testFloatFromStringWithExponent
	"This covers parsing in Number>>readFrom:"

	| aFloat |
	aFloat := '1.0e-14' asNumber.
	self assert: 1.0e-14 = aFloat.
	aFloat := '1.0e-14 1' asNumber.
	self assert: 1.0e-14 = aFloat.
	aFloat := '1.0e-14e' asNumber.
	self assert: 1.0e-14 = aFloat.
	aFloat := '1.0e14e' asNumber.
	self assert: 1.0e14 = aFloat.
	aFloat := '1.0e+14e' asSmalltalkNumber. "Plus sign is not parseable in Smalltalk syntax"
	self assert: 1.0 = aFloat.
	aFloat := '1.0e+14e' asNumber. "Plus sign is parseable in extended syntax"
	self assert: 1.0e14 = aFloat.
