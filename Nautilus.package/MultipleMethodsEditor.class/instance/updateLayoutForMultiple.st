updating
updateLayoutForMultiple

	self 
		addMorph: container
		fullFrame: (LayoutFrame 
					fractions: (0@0 corner: 1@1)
					offsets: (0@0 corner: 0@(-25))).
	self 
		addMorph: buttonsContainer
		fullFrame: (LayoutFrame 
					fractions: (0@1 corner: 1@1)
					offsets: (0@(-25) corner: 0@0)).