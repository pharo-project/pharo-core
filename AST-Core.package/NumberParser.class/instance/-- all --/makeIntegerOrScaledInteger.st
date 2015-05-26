makeIntegerOrScaledInteger
	"at this point, there is no digit, nor fractionPart.
	maybe it can be a scaled decimal with fraction omitted..."
	self flag:'to be removed in favor of makeIntegerOrScaledIntegerOrFloat'.
	neg
		ifTrue: [integerPart := integerPart negated].
	self readExponent
		ifTrue: [^integerPart * (base raisedToInteger: exponent)].
	(self readScaleWithDefaultNumberOfDigits: 0)
		ifTrue: [^integerPart asScaledDecimal: scale].
	^ integerPart