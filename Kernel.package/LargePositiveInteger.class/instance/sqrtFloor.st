mathematical functions
sqrtFloor
	"Return the integer part of the square root of self"

	| powerOfTwo |
	(powerOfTwo := self lowBit - 1 // 2) > 1
		ifFalse: [^super sqrtFloor].
	^(self bitShift: -2 * powerOfTwo) sqrtFloor bitShift: powerOfTwo