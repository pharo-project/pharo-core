private
addAll
	
	self
		addMorph: tab
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 0)
				offsets: (0 @ 0 corner: 0 @ 35)).
				
	self
		addMorph: container
		fullFrame: (LayoutFrame 
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (0 @ 35 corner: 0 @ 0)).