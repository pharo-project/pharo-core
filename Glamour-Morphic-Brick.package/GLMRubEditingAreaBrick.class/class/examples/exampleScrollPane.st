exampleScrollPane
	<example: 'Two rubric text areas in scroll pane'>
	
	^ GLMScrollPaneBrick new
		hSpaceFill;
		vSpaceFill;
		color: Color veryVeryLightGray;
		layoutMorphs: true;
		addAllBricks: { self new. self new };
		yourself