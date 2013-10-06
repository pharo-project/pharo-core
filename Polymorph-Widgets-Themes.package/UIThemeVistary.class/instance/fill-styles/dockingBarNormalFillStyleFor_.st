dockingBarNormalFillStyleFor: aToolDockingBar
	"Return the normal docking bar fillStyle for the given color."
	
	|aColor c cm cd cb|
	aColor := aToolDockingBar originalColor.
	c := aColor  alphaMixed: 0.7 with: Color white.
	cm := aColor alphaMixed: 0.8 with: Color white.
	cd := aColor alphaMixed: 0.6 with: Color black.
	cb := aColor alphaMixed: 0.7 with: Color white.
	^(GradientFillStyle ramp: {0.0->c. 0.50->cm. 0.51->cd. 1.0->cb})
		origin: aToolDockingBar topLeft;
		direction: (aToolDockingBar isVertical
			ifTrue: [aToolDockingBar width @ 0]
			ifFalse: [0 @ aToolDockingBar height]);
		radial: false