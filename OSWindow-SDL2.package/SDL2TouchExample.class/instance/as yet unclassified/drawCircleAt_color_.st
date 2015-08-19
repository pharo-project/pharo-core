drawCircleAt: point color: color
	surface drawDuring:[:canvas | 
		canvas pathTransform translateBy: point.
		canvas		
			setPaint: color;
			setShape: circle;
			draw].
		