buildScrollMorph
	
	^ GLMFoundationBrick new
		brickRoot: (self newScrollMorph pagerModel: pagerModel);
		hResizing: #spaceFill;
		vResizing: #spaceFill.