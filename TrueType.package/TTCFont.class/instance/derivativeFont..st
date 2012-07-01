friend
derivativeFont: aTTCFont

	| index |
	index := self indexOfSubfamilyName: (aTTCFont subfamilyName).
	index < 1 ifTrue: [
		^ self "inform: 'unknown sub family name.  This font will be skipped'".
	].

	self derivativeFont: aTTCFont at: index.

	self addLined: aTTCFont.
