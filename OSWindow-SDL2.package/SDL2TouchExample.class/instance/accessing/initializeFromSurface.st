initializeFromSurface.
	circle := surface createPath: [:builder |
		builder
			absolute;
			moveTo: -5@ 0 ; 
			ccwArcTo: 0@5 angle: 90 degreesToRadians ;
			ccwArcTo: 5@0 angle: 90 degreesToRadians ;
			ccwArcTo: 0@ -5 angle: 90 degreesToRadians ;
			ccwArcTo: -5@0 angle:  90 degreesToRadians 
	].
	
	imageTrack :=  surface createFormPaint: self loadTrackPadImage