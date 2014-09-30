position: aSymbol
		"aSymbol can be:
		#center 			- 	will be centered vertically and horizontally;
		#leftCenter 		- 	will be moved to the left and be centered vertically
		#rightCenter 	- 	will be moved to the right an be centered vertically
		#leftTop 			-	will be moved to the left and top
		#rightTop 		-	will be moved to the right and top
		#leftBottom 		- 	will be moved to the left and bottom
		#rightBottom 	-	will be moved to the right and bottom"
				
	position := aSymbol.
	self notifyLabelPositionChanged.