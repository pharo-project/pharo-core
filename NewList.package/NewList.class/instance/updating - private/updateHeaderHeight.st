updateHeaderHeight
	self isInitialized ifFalse: [ ^ self ].
	
	headerHeight contents: self model getHeaderHeight.