initialize
openInWindow

	| panel |
	panel := PanelMorph new.
	panel 
		changeProportionalLayout;
		addMorph: listMorph fullFrame: (LayoutFrame fractions: (0@0 corner: 1@0.5));
		addMorph: textMorph fullFrame: (LayoutFrame fractions: (0@0.5 corner: 1@1)); 
		yourself.
		
	panel openInWindow