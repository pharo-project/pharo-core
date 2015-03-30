exampleScrollPane
	<gtExample: 'Multiple rubric text areas in scroll pane'>
	
	^ GLMScrollPaneBrick new
		hSpaceFill;
		vSpaceFill;
		color: Color veryVeryLightGray;
		layoutMorphs: true;
		addAllBricks: ((1 to: 20) collect: [ :i | self exampleBasic ]);
		yourself