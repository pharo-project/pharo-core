buildFirstColumn: aWindow
	^ PanelMorph new
		changeProportionalLayout;
		addMorph: self buildPackageSearch fullFrame: (LayoutFrame identity
				bottomFraction: 0;
				bottomOffset: 25;
				leftOffset: -1;
				rightOffset: 1);
		addMorph: self buildPackageWidget fullFrame: (LayoutFrame identity
				topOffset: 30);
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself 