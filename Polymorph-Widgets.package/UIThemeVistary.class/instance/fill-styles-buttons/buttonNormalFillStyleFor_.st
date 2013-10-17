buttonNormalFillStyleFor: aButton
	"Return the normal button fillStyle for the given color."
	
	|aColor c cm cd cb|
	aColor := self buttonColorFor: aButton.
	c := aColor alphaMixed: 0.1 with: Color white.
	cm := aColor alphaMixed: 0.8 with: Color white.
	cd := aColor alphaMixed: 0.6 with: Color black.
	cb := aColor alphaMixed: 0.8 with: Color white.
	^(GradientFillStyle ramp: {0.0->c. 0.5->cm. 0.51->cd. 1.0->cb})
		origin: aButton bounds origin;
		direction: 0 @ aButton height;
		radial: false