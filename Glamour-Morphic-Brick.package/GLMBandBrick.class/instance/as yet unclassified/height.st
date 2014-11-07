height
	|height|
	height := self layoutProperties verticalMargin.
	self subbricks do: [ :each | height := height + each layoutProperties marginTop + each layoutProperties marginBottom + each height ].
	^ height