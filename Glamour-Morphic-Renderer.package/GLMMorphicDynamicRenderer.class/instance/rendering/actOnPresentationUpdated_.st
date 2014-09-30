actOnPresentationUpdated: anAnnouncement
	container removeAllMorphs.
	container 
		addMorph: (self renderObject: anAnnouncement presentation currentPresentation) 
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)) 