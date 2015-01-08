textPositionVerticalCenter

	^ (0@self brickBounds height asFloat/2) + (0@self font getPreciseAscent asFloat/2) - (0@self font getPreciseDescent asFloat/2)
	