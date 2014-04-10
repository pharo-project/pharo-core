buttonSelectedFillStyleFor: aButton
	"Return the normal button fillStyle for the given button."
	
	
	^ SolidFillStyle color: (self glamorousLightSelectionColorFor: aButton)
	
" I can't stand those blue gradients anymore. One less!	
	| top bottom |
	top := self glamorousLightSelectionColorFor: aButton.
	bottom := self glamorousLightColorFor: aButton.

	^(GradientFillStyle ramp: {
			0.0->top.
			0.7->bottom.})
		origin: aButton bounds origin;
		direction: 0 @ aButton height;
		radial: false"