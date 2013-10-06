createLinearGradient: colorRamp origin: pt1 corner: pt2
 
	^ AthensBalloonLinearGradient new
		colorRamp: colorRamp;
		origin: pt1;
		corner: pt2;
		yourself