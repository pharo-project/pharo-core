progressBarFillStyleFor: aProgressBar
	"Return the progress bar fillStyle for the given progress bar."
	
	|aColor area c cm cd cb|
	aColor := self progressBarColorFor: aProgressBar.
	area :=  aProgressBar bounds.
	c := aColor  alphaMixed: 0.1 with: Color white.
	cm := aColor alphaMixed: 0.8 with: Color white.
	cd := aColor alphaMixed: 0.6 with: Color black.
	cb := aColor alphaMixed: 0.7 with: Color white.
	^(GradientFillStyle ramp: {0.0->c. 0.49->cm. 0.5->cd. 1.0->cb})
		origin: area origin;
		direction: 0@area height;
		radial: false