updating - private
updateHeaderHeight
	| selector |
	self isInitialized ifFalse: [ ^ self ].
	
	headerHeight contents: self model getHeaderHeight.