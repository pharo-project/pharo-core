dropListDisabledFillStyleFor: aDropList
	"Return the disabled fillStyle for the given drop list."
	
	|c inner|
	c := aDropList paneColor alphaMixed: 0.3 with: Color white.
	inner := aDropList innerBounds.
	^(GradientFillStyle ramp: {
			0.0->c darker duller.
			0.1-> c darker.
			0.9->c twiceLighter.
			1.0->c darker})
		origin: inner topLeft;
		direction: 0 @ inner height;
		radial: false