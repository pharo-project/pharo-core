exampleBand
	<example: 'Two rubric text areas in band'>
	
	(GLMBandBrick new
		color: Color lightRed;
		addAllBricks: { self new. self new })
			asBrickedMorph
				extent: 300@200;
				openInWindow