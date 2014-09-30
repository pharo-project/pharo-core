notifyPagePushed: aMorph scrollTo: isScroll smooth: isSmooth
	
	self announcer announce: (GLMPagePushed new morph: aMorph).
	
	isScroll ifTrue: [self scrollToRight: isSmooth ]