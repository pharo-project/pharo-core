updateLayoutForSingleWithButtons
	current ifNil: [ ^ self ].	
	self 
		addMorph: current
		fullFrame: (LayoutFrame identity 
						bottomOffset: -25).				
	self 
		addMorph: buttonsContainer
		fullFrame: ((0@1 corner: 1@1) asLayoutFrame 
						topOffset: -25).
	"current color: Color white."
