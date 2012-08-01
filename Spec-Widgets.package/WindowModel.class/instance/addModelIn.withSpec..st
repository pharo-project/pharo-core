private
addModelIn: widget withSpec: aSpec

	self model ifNil: [ ^ self ].
	
	widget
		addMorph: (self model buildWithSpec: aSpec)
		frame: (0@0 corner: 1@1)