buildColumns: aWindow height: height
	| delta |		
	delta := StandardFonts defaultFont height + 10.
	aWindow 
		addMorph: (self buildFirstColumn: aWindow)
		fullFrame: ((0 @ 0 corner: 0.25 @ 0.5) asLayoutFrame 
						topOffset: height ).
						
	aWindow 
		addMorph: (self buildSecondColumn: aWindow)
		fullFrame: ((0.25 @ 0 corner: 0.5 @ 0.5) asLayoutFrame
						topOffset: height ).
						
	aWindow 
		addMorph: (self buildThirdColumn: aWindow)
		fullFrame: ( (0.5 @ 0 corner: 0.75 @ 0.5) asLayoutFrame
						topOffset: height ; bottomOffset: delta negated).
						
	aWindow 
		addMorph: (self buildFourthColumn: aWindow)
		fullFrame: ( (0.75 @ 0 corner: 1 @ 0.5) asLayoutFrame
						topOffset: height; bottomOffset: delta negated).
						
	aWindow
		addMorph: self buildNavigationList
		fullFrame: ((0.5 @ 0.5 corner: 1 @ 0.5) asLayoutFrame
						topOffset: delta negated ).