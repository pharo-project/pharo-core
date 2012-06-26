fill-styles-buttons
buttonSelectedFillStyleFor: aButton
	"Return the button selected fillStyle for the given button."
	
	|c|
	c := (aButton onColor isNil or: [aButton onColor isTransparent])
		ifTrue: [self settings scrollbarColor]
		ifFalse: [aButton colorToUse].
	^(GradientFillStyle ramp: {
			0.0->c twiceLighter.
			0.3->c twiceLighter.
			0.4->c darker.
			0.7->c twiceLighter.
			1.0->Color white})
		origin: aButton topLeft;
		direction: 0 @ aButton height;
		radial: false