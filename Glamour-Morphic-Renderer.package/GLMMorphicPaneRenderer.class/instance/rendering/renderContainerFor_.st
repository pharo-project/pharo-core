renderContainerFor: aPane
	container
		addMorph: (self renderWithTitleOrNil: aPane presentations) fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1));
		adoptPaneColor: Color transparent