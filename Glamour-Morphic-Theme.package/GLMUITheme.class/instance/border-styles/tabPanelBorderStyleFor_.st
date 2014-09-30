tabPanelBorderStyleFor: aTabGroup
	^ GLMTabPanelBorder new 
		width: 1;
		baseColor: ((self glamorousDarkBaseColorFor: aTabGroup));
		tabSelector: aTabGroup tabSelectorMorph