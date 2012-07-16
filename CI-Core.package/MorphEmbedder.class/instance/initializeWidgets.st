initialization
initializeWidgets

	morph whenChangedDo: [:m |
		self container removeAllMorphs.
		m ifNotNil: [
			self container 
				addMorph: m
				fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1)) ]]