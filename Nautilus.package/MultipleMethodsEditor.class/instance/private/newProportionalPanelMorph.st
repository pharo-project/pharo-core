newProportionalPanelMorph
	| panel |
	panel := PanelMorph new
		color: Color white;
		changeProportionalLayout;
		yourself.
	^ panel