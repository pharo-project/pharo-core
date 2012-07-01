private
addLined: aTTCFont

	| l |
	l := LinedTTCFont fromTTCFont: aTTCFont emphasis: 4.
	self derivativeFont: l at: l emphasis.

	l := LinedTTCFont fromTTCFont: aTTCFont emphasis: 16.
	self derivativeFont: l at: l emphasis.

	l := LinedTTCFont fromTTCFont: aTTCFont emphasis: 20.
	self derivativeFont: l at: l emphasis.
