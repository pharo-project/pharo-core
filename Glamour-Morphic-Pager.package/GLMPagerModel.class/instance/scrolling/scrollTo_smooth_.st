scrollTo: aFloat smooth: isSmooth
	"notifies all listeners to scroll at the specified value"
	
	self privateRecomputeIndexesAfterScrollAt: aFloat.
	self notifyScrollPositionChanged: isSmooth.