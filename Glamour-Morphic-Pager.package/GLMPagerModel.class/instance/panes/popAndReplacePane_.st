popAndReplacePane: aMorph
	
	self popPane.
	self pushPane: aMorph smooth: false.