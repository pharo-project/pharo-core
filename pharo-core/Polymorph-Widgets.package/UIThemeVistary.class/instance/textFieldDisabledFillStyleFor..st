fill-styles
textFieldDisabledFillStyleFor: aTextField
	"Return the disabled fillStyle for the given text field."
	
	|c inner|
	c := aTextField paneColor alphaMixed: 0.3 with: Color white.
	inner := aTextField innerBounds.
	^(GradientFillStyle ramp: {
			0.0->c darker duller.
			0.15-> c darker.
			0.8->c twiceLighter.
			1.0->c darker})
		origin: inner topLeft;
		direction: 0 @ inner height;
		radial: false