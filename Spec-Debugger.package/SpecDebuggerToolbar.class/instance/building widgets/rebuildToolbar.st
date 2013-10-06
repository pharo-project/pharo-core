rebuildToolbar

	self widgets removeAll.
	self createWidgets.
	
	self needFullRebuild: true.
	self needRebuild: false.
	
 	self buildWithSpecLayout: self dynamicLayout