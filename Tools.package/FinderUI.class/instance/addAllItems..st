items creation
addAllItems: aWindow
	| container toolbar height  btnFont  btnToolbar cst |
	toolbar := self buildSearchModeToolBar: aWindow.
	height := toolbar minExtent y.
	cst := 15.
	
	aWindow 
		addMorph: toolbar
		fullFrame: (LayoutFrame 
						fractions: (0 @ 0 corner: 1 @ 0)
						offsets: (0 @ 0 corner: 0 @ height)).
	aWindow
		addMorph: self buildPackagesTree buildContents
		fullFrame: (LayoutFrame 
			fractions: (0@0 corner: 1@0.58)
			offsets: (0@height corner: 0@0)).
	btnFont := StandardFonts buttonFont.
	btnToolbar := self buildBrowseToolBar: aWindow.
	aWindow
		addMorph: btnToolbar
		fullFrame: (LayoutFrame
						fractions: (0@0.58 corner: 1@0.58)
						offsets:(0@0 corner: 0@(btnFont height +cst))).
	aWindow 
		addMorph: self sourceTextArea
		fullFrame: (LayoutFrame
						fractions: (0@0.58 corner: 1@1)
						offsets:(0@(btnFont height +cst) corner: 0@0)).
