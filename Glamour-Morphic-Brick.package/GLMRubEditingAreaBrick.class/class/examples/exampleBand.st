exampleBand
	<example: 'Two rubric text areas in band'>
	
	^ GLMBandBrick new
		padding: #(20 20);
		hSpaceFill;
		vShrinkWrap;
		color: Color veryVeryLightGray;
		addAllBricks: { self new. self new };
		yourself