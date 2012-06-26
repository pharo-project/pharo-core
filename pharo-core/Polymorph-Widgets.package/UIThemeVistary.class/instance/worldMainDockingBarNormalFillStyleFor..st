fill-styles
worldMainDockingBarNormalFillStyleFor: aDockingBar
	"Return the world main docking bar fillStyle for the given docking bar."
	
	|aColor  c cm cd cb|
	aColor := aDockingBar originalColor.
	c := aColor  alphaMixed: 0.1 with: Color white.
	cm := aColor alphaMixed: 0.8 with: Color white.
	cd := aColor alphaMixed: 0.6 with: Color black.
	cb := aColor alphaMixed: 0.7 with: Color white.
	^(GradientFillStyle ramp: {0.0->c. 0.49->cm. 0.5->cd. 1.0->cb})
		origin: aDockingBar topLeft;
		direction: (aDockingBar isVertical
			ifTrue: [aDockingBar width @ 0]
			ifFalse: [0 @ aDockingBar height]);
		radial: false