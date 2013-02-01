creation
setInvalidLabel: aString

	container removeAllMorphs.
	container 
		addMorph: aString asMorph
		fullFrame: LayoutFrame identity
						