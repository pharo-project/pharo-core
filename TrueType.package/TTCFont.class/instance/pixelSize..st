accessing
pixelSize: aNumber
	"Make sure that we don't return a Fraction"
	self pointSize: (TextStyle pixelsToPoints: aNumber) rounded.
