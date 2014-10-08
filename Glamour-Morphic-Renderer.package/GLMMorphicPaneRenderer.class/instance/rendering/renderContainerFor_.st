renderContainerFor: aPane

	contentMorph := self 
		morph: (self renderObject: aPane presentations) 
		withTitleOrNilOf: aPane presentations.
		
	container
		addMorph: contentMorph fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1));
		adoptPaneColor: Color transparent