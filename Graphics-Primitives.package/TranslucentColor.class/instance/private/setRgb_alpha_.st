setRgb: rgbValue alpha: alphaValue
	"Set the state of this translucent color. Alpha is represented internally by an integer in the range 0..255."

	rgb ifNotNil: [self attemptToMutateError].
	rgb := rgbValue.
	alpha := (255.0 * alphaValue) asInteger min: 255 max: 0.
