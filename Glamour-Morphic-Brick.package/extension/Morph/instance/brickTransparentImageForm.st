brickTransparentImageForm
	|background form|
	background := self color.
	self color: Color transparent.
	form := self imageForm.
	self color: background.
	^ form