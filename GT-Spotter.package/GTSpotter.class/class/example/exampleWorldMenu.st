exampleWorldMenu
	
	^ GTSpotterMorph new
		width: 400;
		doLayout;
		spotterModel: (self on: World worldMenu);
		openCenteredInWorld