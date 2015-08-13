buildFirstColumn: aWindow
	^ PanelMorph new
		changeProportionalLayout;
		addMorph: self buildPackageWidget fullFrame: (LayoutFrame identity bottomOffset: -25);
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself