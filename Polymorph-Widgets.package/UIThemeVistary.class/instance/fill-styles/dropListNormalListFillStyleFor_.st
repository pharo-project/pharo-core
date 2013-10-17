dropListNormalListFillStyleFor: aDropList
	"Return the normal fillStyle for the list of the given drop list."
	
	|c inner|
	c := aDropList paneColor alphaMixed: 0.1 with: Color white.
	inner := aDropList listMorph innerBounds.
	^(GradientFillStyle ramp: {
			0.0->c darker duller.
			0.1-> c darker.
			0.9->c twiceLighter.
			1.0->c darker})
		origin: inner topLeft;
		direction: 0 @ inner height;
		radial: false