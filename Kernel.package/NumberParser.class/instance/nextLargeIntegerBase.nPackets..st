parsing-large int
nextLargeIntegerBase: aRadix nPackets: nPackets 
	"Form a Large integer with incoming digits from sourceStream.
	Return this integer, or zero if no digits found.
	Stop reading when no more digits or when nPackets elementary LargeInteger have been encountered.
	Count the number of digits and the lastNonZero digit and store them in instVar"
	
	| high nDigitsHigh low nDigitsLow halfPackets |
	halfPackets := nPackets bitShift: -1.
	halfPackets = 0 ifTrue: [^self nextElementaryLargeIntegerBase: aRadix].
	high := self nextLargeIntegerBase: aRadix nPackets: halfPackets.
	high isLarge ifFalse: [^high].
	nDigitsHigh := nDigits.
	low := self nextLargeIntegerBase: aRadix nPackets: halfPackets.
	nDigitsLow := nDigits.
	nDigits := nDigitsHigh + nDigitsLow.
	lastNonZero = 0 ifFalse: [lastNonZero := lastNonZero + nDigitsHigh].
	^high * (aRadix raisedToInteger: nDigitsLow) + low