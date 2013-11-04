makeIntegerOrScaledInteger
	"at this point, there is no digit, nor fractionPart.
	maybe it can be a scaled decimal with fraction omitted..."
	
	neg
		ifTrue: [integerPart := integerPart negated].
	self readExponent
		ifTrue: [^integerPart * (base raisedToInteger: exponent)].
	self readScale
		ifTrue: [^integerPart asScaledDecimal: scale].
	^ integerPart