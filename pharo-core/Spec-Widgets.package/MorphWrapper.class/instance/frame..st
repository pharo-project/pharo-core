accessing
frame: relFrame
	| frame |
	frame := LayoutFrame new.
	frame 
		leftFraction: relFrame left; 
		rightFraction: relFrame right; 
		topFraction: relFrame top; 
		bottomFraction: relFrame bottom.
	layout := frame