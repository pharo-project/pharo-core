drawOnAthensCanvas: aCanvas 

	super drawOn: aCanvas.
	aCanvas 
		morphicDrawString: self label
		in: self labelBounds
		font: self font
		color: self fontColor.
		
	
