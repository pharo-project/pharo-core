width
	|width|
	self widthBlock ifNotNil: [ ^ self widthBlock cull: self ].
		
	width := self layoutProperties horizontalPadding.
	self subbricks do: [ :each | width := width + each width + each layoutProperties horizontalMargin ].
	^ width