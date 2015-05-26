renderCompositiePresentation: aCompositePresentation
	
	paneMorph := GLMMorphic containerMorph.
	paneMorph
		addMorph: 
			(self newColumnWith:  { (self renderObject: aCompositePresentation).  (self buttonRowFrom: self buttons) }) 
			fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1));
		"addMorphBack: (self buttonRowFrom: self buttons)  ;  "
		adoptPaneColor: paneMorph paneColor.
	
	^ paneMorph