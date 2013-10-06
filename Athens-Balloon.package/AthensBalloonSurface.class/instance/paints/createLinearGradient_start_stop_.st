createLinearGradient: colorRamp start: pt1 stop: pt2
 
	^ AthensBalloonLinearGradient new
		colorRamp: colorRamp;
		start: pt1;
		stop: pt2;
		yourself