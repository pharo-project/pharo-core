updateHeaderHeight
	self isInitialized ifFalse: [ ^ self ].
	
	headerHeight value: self model getHeaderHeight.