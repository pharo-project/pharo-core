buildColumns: aWindow height: height
	aWindow
		addMorph: (self buildFirstColumn: aWindow)
		fullFrame:
			((0 @ 0 corner: 0.23 @ self navigationAreaProportion) asLayoutFrame topOffset: height).
	aWindow
		addMorph: (self buildSecondColumn: aWindow)
		fullFrame:
			((0.23 @ 0 corner: 0.52 @ self navigationAreaProportion) asLayoutFrame topOffset: height).
	aWindow
		addMorph: (self buildThirdColumn: aWindow)
		fullFrame:
			((0.52 @ 0 corner: 0.73 @ self navigationAreaProportion) asLayoutFrame topOffset: height).
	aWindow
		addMorph: (self buildFourthColumn: aWindow)
		fullFrame:
			((0.73 @ 0 corner: 1 @ self navigationAreaProportion) asLayoutFrame topOffset: height)