access
brightness
	"Return the brightness of this color, a float in the range [0.0..1.0]."

	^ ((self privateRed max:
	    self privateGreen) max:
	    self privateBlue) asFloat / ComponentMax