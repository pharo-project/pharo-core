height
	|height|
	self heightBlock ifNotNil: [ ^ self heightBlock cull: self ].
		
	height := self layoutProperties verticalPadding.
	self subbricks do: [ :each | height := height + each height + each layoutProperties verticalMargin ].
	^ height