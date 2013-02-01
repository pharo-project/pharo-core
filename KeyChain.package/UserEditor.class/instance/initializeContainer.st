initialize
initializeContainer
	container := PanelMorph new
		height: 120;
		width: 120;
		changeProportionalLayout;
		vResizing: #rigid;
		hResizing: #rigid;
		yourself