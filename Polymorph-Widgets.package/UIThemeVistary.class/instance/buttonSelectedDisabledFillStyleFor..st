fill-styles-buttons
buttonSelectedDisabledFillStyleFor: aButton
	"Return the button selected disabled fillStyle for the given color."
	
	|aColor selcol|
	aColor := aButton colorToUse.
	selcol := (aColor mixed: 0.5 with: self selectionColor) lighter whiter.
	^(GradientFillStyle ramp: {0.0->selcol. 1.0->selcol})
		origin: aButton bounds origin;
		direction: 0 @ aButton height;
		radial: false