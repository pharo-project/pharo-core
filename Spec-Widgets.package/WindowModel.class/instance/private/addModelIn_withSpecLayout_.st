addModelIn: widget withSpecLayout: aSpec

	self model ifNil: [ ^ self ].
	
	widget
		addMorph: (self model buildWithSpecLayout: aSpec)
		frame: (0@0 corner: 1@1)