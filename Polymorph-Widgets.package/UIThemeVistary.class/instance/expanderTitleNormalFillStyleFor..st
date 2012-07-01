fill-styles
expanderTitleNormalFillStyleFor: anExpanderTitle
	"Return the normal expander title fillStyle for the given expander title."
	
	|aColor c cm cd cb|
	aColor := anExpanderTitle paneColor.
	c := aColor  alphaMixed: 0.1 with: Color white.
	cm := aColor alphaMixed: 0.9 with: Color white.
	cd := cm alphaMixed: 0.9 with: Color black.
	cb := aColor alphaMixed: 0.6 with: Color black.
	^(GradientFillStyle ramp: {0.0->c. 0.50->cm. 0.51->cd. 1.0->cb})
		origin: anExpanderTitle topLeft;
		direction: 0 @ anExpanderTitle height;
		radial: false