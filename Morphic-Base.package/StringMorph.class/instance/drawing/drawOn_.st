drawOn: aCanvas
	
	aCanvas
	
		fillRectangle: self bounds 
		fillStyle: self backgroundColor;
		
		drawString: self contents 
		in: self stringBounds 
		font: self fontToUse 
		color: self stringColor.