updating
updateLayoutForSingle

	current ifNil: [ ^ self ].
	self 
		addMorph: current
		fullFrame: (LayoutFrame 
					fractions: (0@0 corner: 1@1)).
					
	current color: Color white.
