fill-styles
tabLabelSelectedFillStyleFor: aTabLabel
	"Return the selected fillStyle for the given tab label."
	
	|aColor|
	aColor := self settings scrollbarColor.
	^(GradientFillStyle ramp: {
			0.0->aColor twiceLighter.
			0.3->aColor twiceLighter.
			0.4->aColor darker.
			0.7->aColor twiceLighter.
			1.0->Color white})
		origin: aTabLabel bounds origin;
		direction: 0 @ aTabLabel height;
		radial: false