drawMorph: aMorph
	(self isVisible: aMorph fullBounds)
		ifFalse: [ ^ self ].
	self draw: aMorph