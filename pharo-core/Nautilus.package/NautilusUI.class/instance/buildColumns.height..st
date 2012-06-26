displaying
buildColumns: aWindow height: height
	| delta |		
	delta := StandardFonts defaultFont height + 10.
	aWindow 
		addMorph: (self buildFirstColumn: aWindow)
		fullFrame: (LayoutFrame 
						fractions: (0 @ 0 corner: 0.25 @ 0.5)
						offsets: (0 @ height corner: 0 @ 0)).
						
	aWindow 
		addMorph: (self buildSecondColumn: aWindow)
		fullFrame: (LayoutFrame 
						fractions: (0.25 @ 0 corner: 0.5 @ 0.5)
						offsets: (0 @ height corner: 0 @ 0)).
						
	aWindow 
		addMorph: (self buildThirdColumn: aWindow)
		fullFrame: (LayoutFrame 
						fractions: (0.5 @ 0 corner: 0.75 @ 0.5)
						offsets: (0 @ height corner: 0 @ delta negated)).
						
	aWindow 
		addMorph: (self buildFourthColumn: aWindow)
		fullFrame: (LayoutFrame 
						fractions: (0.75 @ 0 corner: 1 @ 0.5)
						offsets: (0 @ height corner: 0 @ delta negated)).
						
	aWindow
		addMorph: self buildNavigationList
		fullFrame: (LayoutFrame 
						fractions: (0.5 @ 0.5 corner: 1 @ 0.5)
						offsets: (0 @ delta negated corner: 0 @ 0)).