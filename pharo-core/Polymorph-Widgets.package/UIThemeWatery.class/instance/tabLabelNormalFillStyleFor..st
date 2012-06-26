fill-styles
tabLabelNormalFillStyleFor: aTabLabel
	"Return the normal fillStyle for the given tab label."
	
	|aColor|
	aColor := aTabLabel paneColor.
	^(GradientFillStyle ramp: {
			0.0->Color white.
			0.3->Color white.
			0.4->aColor.
			0.6->Color white.
			1.0->Color white})
		origin: aTabLabel bounds origin;
		direction: 0 @ aTabLabel height;
		radial: false