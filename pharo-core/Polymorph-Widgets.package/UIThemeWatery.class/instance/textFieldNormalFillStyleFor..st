fill-styles
textFieldNormalFillStyleFor: aTextField
	"Return the normal fillStyle for the given text field."
	
	|c|
	c := self windowColor.
	^(GradientFillStyle ramp: {
			0.0->c twiceDarker.
			0.05-> c lighter.
			0.15-> Color white.
			1.0->Color white})
		origin: aTextField topLeft;
		direction: 0 @ aTextField height;
		radial: false