fill-styles
windowActiveTitleFillStyleFor: aWindow
	"Return the window active title fillStyle for the given window."

	|aColor aLColor |
	aColor := Color h: 224 s: 0.91 v: 0.42.
	aLColor := Color h: 211 s: 0.31 v: 0.94.
	^(GradientFillStyle ramp: {0.0 -> aColor. 1.0 -> aLColor })
		origin: aWindow topLeft;
		direction: aWindow width @ 0;
		radial: false
