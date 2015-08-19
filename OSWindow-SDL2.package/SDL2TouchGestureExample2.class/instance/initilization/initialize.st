initialize
	super initialize.
	circleCenter := self windowCenter.
	circleSize := 10.
	negativeColor := Color blue.
	positiveColor := Color red.
	hasAbortedSwipe := false.
	laraPosition := self defaultExtent x.