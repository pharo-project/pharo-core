exampleScrollPane
	<example: 'Two rubric text areas in scroll pane'>
	
	(GLMScrollPaneBrick new
		color: Color lightRed;
		addAllBricks: { self new. self new })
			asBrickedMorph
				extent: 300@200;
				openInWindow