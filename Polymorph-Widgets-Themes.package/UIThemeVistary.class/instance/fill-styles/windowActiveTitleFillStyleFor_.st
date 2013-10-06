windowActiveTitleFillStyleFor: aWindow
	"Return the window active title fillStyle for the given window."
	
	|aColor c cm cd cb|
	aColor := aWindow paneColorToUse alpha: self windowFillStyleAlpha / 2.
	c := aColor  alphaMixed: 0.1 with: Color white.
	cm := aColor alphaMixed: 0.8 with: Color white.
	cd := aColor alphaMixed: 0.6 with: Color black.
	cb := aColor alphaMixed: 0.7 with: Color white.
	^(GradientFillStyle ramp: {0.0->c. 0.46->cm. 0.47->cd. 1.0->cb})
		origin: aWindow labelArea topLeft;
		direction: 0 @ aWindow labelHeight;
		radial: false
	