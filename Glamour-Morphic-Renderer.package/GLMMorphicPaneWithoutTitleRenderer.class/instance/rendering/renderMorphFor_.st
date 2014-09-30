renderMorphFor: aPane
	paneMorph
		addMorph: (self renderObject: aPane presentations) fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1));
		adoptPaneColor: paneMorph paneColor