buildFirstColumn: aWindow
	| buttons |

	buttons := PanelMorph new.

	self setShortcuts: #NautilusPackageShortcuts to: buttons.
		
	buttons 
		changeProportionalLayout;
		addMorph: self buildGroupsButton 
			fullFrame: ((0@0 corner: 0.5@1) asLayoutFrame 
				rightOffset: -2);
		addMorph: self buildToggleButton
			fullFrame: ((0.5@0 corner: 1@1) asLayoutFrame
				topLeftOffset: 2@0);
		hResizing: #spaceFill;
		vResizing: #spaceFill.
		
	^ PanelMorph new
		changeProportionalLayout;
		addMorph: self buildPackageWidget 
			fullFrame: (LayoutFrame identity
				topOffset: 30;
				bottomOffset: -30);
		addMorph: self buildPackageSearch 
			fullFrame: (LayoutFrame identity
				bottomFraction: 0;
				bottomOffset: 25;
				leftOffset: -1;
				rightOffset: 1);
		addMorph: buttons 
			fullFrame: ((0@1 corner: 1@1) asLayoutFrame 
				topOffset: -25;
				bottomOffset: -1);
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself.