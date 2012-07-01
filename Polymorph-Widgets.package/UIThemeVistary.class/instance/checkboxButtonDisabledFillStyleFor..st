fill-styles-buttons
checkboxButtonDisabledFillStyleFor: aCheckboxButton
	"Return the disabled checkbox button fillStyle for the given button."
	
	|c ib|
	c := aCheckboxButton colorToUse
		alphaMixed: 0.3
		with: Color white.
	ib := aCheckboxButton innerBounds.
	^(GradientFillStyle ramp: {
			0.0->c darker duller.
			0.2->c darker.
			0.5->c lighter.
			1.0->c twiceLighter})
		origin: aCheckboxButton innerBounds origin;
		direction: ib extent;
		radial: false