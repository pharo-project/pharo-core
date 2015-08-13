buildSecondColumn: aWindow
	| buttons |
	buttons := PanelMorph new.
	buttons
		changeProportionalLayout;
		addMorph: self buildHierarchyButton
			fullFrame: ((0 @ 0 corner: 0.33 @ 0) asLayoutFrame bottomRightOffset: -2 @ 25);
		addMorph: self buildInstanceButton
			fullFrame: ((0.33 @ 0 corner: 0.67 @ 0) asLayoutFrame bottomRightOffset: -2 @ 25);
		addMorph: self buildCommentButton
			fullFrame:
			((0.67 @ 0 corner: 1 @ 0) asLayoutFrame
				bottomRightOffset: -2 @ 25);
		hResizing: #spaceFill;
		vResizing: #rigid;
		height: 25.
	^ PanelMorph new
		changeProportionalLayout;
		addMorph: self buildClassWidget fullFrame: (LayoutFrame identity bottomOffset: -29);
		addMorph: buttons fullFrame: ((0 @ 1 corner: 1 @ 1) asLayoutFrame topOffset: -25);
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself