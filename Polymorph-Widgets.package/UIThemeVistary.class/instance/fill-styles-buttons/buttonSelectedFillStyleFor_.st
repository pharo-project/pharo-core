buttonSelectedFillStyleFor: aButton
	"Return the button selected fillStyle for the given button."
	
	|aColor c cm cd cb selcol|
	aColor := aButton colorToUse.
	selcol := (self selectionColor adjustSaturation: 0.2 brightness: 0.5).
	c := aColor  alphaMixed: 0.1 with: Color white.
	cm := aColor alphaMixed: 0.4 with: selcol.
	cd := aColor alphaMixed: 0.6 with: Color black.
	cb := aColor alphaMixed: 0.1 with: (self selectionColor adjustSaturation: 0.7 brightness: 1.0) whiter.
	^(GradientFillStyle ramp: {
			0.0->c. 0.5->cm. 0.51->cd. 0.8->cb. 1.0->Color white})
		origin: aButton bounds origin;
		direction: 0 @ aButton height;
		radial: false