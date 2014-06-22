getHeaderHeight

	self flag: '25 should not be hardcoded'.
	 ^ self getHeaderTitleSelector 
		ifNil: [ 0 ]
		ifNotNil: [:s | 25 ]