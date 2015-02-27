resultsPaneStyleFor: aBrick

	aBrick
		hSpaceFill: self resultsPaneWidth;
		vSpaceFill;
		color: self backgroundColor;
		with: [ :b | b band layout: GTSpotterStackedLayout new ]