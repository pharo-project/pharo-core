exampleInScrollPane
	<example>
	
	(GLMScrollPaneBrick new
		addAllBricks: (self createCollapsableArray: 10);
		yourself)
			asBrickedMorph
				extent: 500@300;
				color: (Color r: 249 g: 249 b: 249 range: 255);
				openInWindow