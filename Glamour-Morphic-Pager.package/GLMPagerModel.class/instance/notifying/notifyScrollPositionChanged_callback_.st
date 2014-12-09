notifyScrollPositionChanged: isSmooth callback: aBlock

	self announcer announce: (GLMPagerScrollPositionChanged new smooth: isSmooth; callback: aBlock; yourself).