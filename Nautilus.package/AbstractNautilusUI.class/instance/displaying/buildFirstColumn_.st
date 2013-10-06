buildFirstColumn: aWindow
		
	| buttons |
	buttons := PanelMorph new.

	self setShortcuts: #NautilusPackageShortcuts to: buttons.
		
	buttons 
		changeProportionalLayout;
		addMorph: self buildGroupsButton
		fullFrame: ( (	0@0 corner: 0.5@0 ) asLayoutFrame
						bottomRightOffset: (-2)@25 );
		addMorph: self buildToggleButton
		fullFrame: ((	0.5@0 corner: 1@0 ) asLayoutFrame
						topLeftOffset: 2@0 ; bottomRightOffset: 0@25 );
		hResizing: #spaceFill;
		vResizing: #rigid;
		height: 25.
		
	^ firstColumn := PanelMorph new
		changeProportionalLayout;
		addMorph: self buildList
		fullFrame: ( LayoutFrame identity bottomOffset: -25);
		addMorph: buttons
		fullFrame: ( (0@1 corner: 1@1 ) asLayoutFrame topOffset: -25);
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself.