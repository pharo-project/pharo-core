fill-styles
windowActiveTitleFillStyleFor: aWindow
	"Return the window active title fillStyle for the given window."
	
	|aColor|
	aColor := self windowColor.
	^(GradientFillStyle ramp: {
			0.0->Color white.
			0.03->Color white.
			0.05-> aColor lighter.
			1.0->aColor darker})	
		origin: aWindow labelArea topLeft;
		direction: 0 @ aWindow labelHeight;
		radial: false