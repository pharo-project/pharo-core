openInWorld

	| panel |
	panel := PanelMorph new.
	panel 
		changeProportionalLayout;
		addMorph: listMorph fullFrame: ((0@0 corner: 1@0.5) asLayoutFrame);
		addMorph: textMorph fullFrame: ((0@0.5 corner: 1@1) asLayoutFrame); 
		yourself.
	panel openInWorld