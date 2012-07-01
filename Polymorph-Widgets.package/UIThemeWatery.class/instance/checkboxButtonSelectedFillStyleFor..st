fill-styles-buttons
checkboxButtonSelectedFillStyleFor: aCheckboxButton
	"Return the selected checkbox button fillStyle for the given button."
	
	|c ib|
	c := self settings scrollbarColor.
	ib := aCheckboxButton innerBounds.
	^(GradientFillStyle ramp: {
			0.0->(c alphaMixed: 0.4 with: Color white).
			0.3->(c alphaMixed: 0.4 with: Color white).
			0.4->c.
			1.0->Color white})
		origin: aCheckboxButton innerBounds origin;
		direction: 0@ib height;
		radial: false