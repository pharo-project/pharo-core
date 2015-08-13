buildButtonsBar
	| arrows buttons |
	arrows := PanelMorph new
		changeProportionalLayout;
		addMorph: self buildNavigationPreviousButton
			fullFrame: (0 @ 0 corner: 0.2 @ 1) asLayoutFrame;
		addMorph: self buildNavigationNextButton
			fullFrame: (0.2 @ 0 corner: 0.4 @ 1) asLayoutFrame;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself.
	buttons := PanelMorph new
		changeProportionalLayout;
		addMorph: self buildBrowseScopedButton
			fullFrame: ((0 @ 0 corner: 0.1 @ 1) asLayoutFrame topLeftOffset: 2 @ 0);
		addMorph: self buildBrowseVariablesButton
			fullFrame: ((0.1 @ 0 corner: 0.2 @ 1) asLayoutFrame topLeftOffset: 2 @ 0);
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself.
	^ PanelMorph new
		changeProportionalLayout;
		addMorph: arrows
			fullFrame:
			(LayoutFrame identity
				rightFraction: 0.10;
				yourself);
		addMorph: buttons
			fullFrame:
			(LayoutFrame identity
				leftFraction: 0.04;
				yourself);
		addMorph: self buildNavigationList fullFrame: (0.52 @ 0 corner: 1 @ 1) asLayoutFrame;
		yourself