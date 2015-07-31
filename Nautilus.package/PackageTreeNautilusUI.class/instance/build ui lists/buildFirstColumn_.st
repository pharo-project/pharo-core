buildFirstColumn: aWindow
	| buttons  |
	buttons := PanelMorph new.
	self setShortcuts: #NautilusPackageShortcuts to: buttons.
	browseScropedMorph := self buildBrowseScopedMorph.
	browseScropedMorph on: #mouseDown send: #restrictedBrowsePackage to: self.
	browseVariablesMorph := self buildBrowseVariablesMorph.
	browseVariablesMorph on: #mouseDown send: #browseVariableReferences: to: self.
	buttons
		changeProportionalLayout;
		addMorph: browseScropedMorph fullFrame: ((0 @ 0.2 corner: 0.33 @ 1) asLayoutFrame topLeftOffset: 2 @ 0);
		addMorph: browseVariablesMorph fullFrame: ((0.33 @ 0.2 corner: 0.65 @ 1) asLayoutFrame topLeftOffset: 2 @ 0);
		addMorph: self buildHierarchyButton fullFrame: ((0.65 @ 0 corner: 1 @ 1) asLayoutFrame topLeftOffset: 2 @ 0);
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	^ PanelMorph new
		changeProportionalLayout;
		addMorph: self buildPackageWidget
			fullFrame:
				(LayoutFrame identity
						topOffset: 30;
						bottomOffset: -30);
		addMorph: self buildPackageSearch
			fullFrame:
				(LayoutFrame identity
						bottomFraction: 0;
						bottomOffset: 25;
						leftOffset: -1;
						rightOffset: 1);
		addMorph: buttons
			fullFrame:
				((0 @ 1 corner: 1 @ 1) asLayoutFrame
						topOffset: -25;
						bottomOffset: -1);
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself