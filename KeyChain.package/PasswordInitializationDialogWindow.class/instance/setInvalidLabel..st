creation
setInvalidLabel: aString

	container removeAllMorphs.
	container 
		addMorph:  aString asMorph
		fullFrame: (LayoutFrame 
						fractions: (0@0 corner: 1@1) 
						offsets: nil).