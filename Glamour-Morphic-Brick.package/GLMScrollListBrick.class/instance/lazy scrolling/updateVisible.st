updateVisible
	|invisible|
	
	self adaptor ifNil: [ ^ self ].
	
	invisible := self gatherInvisibleItems.
	self updateVisibleTop: invisible.
	self updateVisibleBottom: invisible.
	
	invisible do: [ :each | self band removeBrick: each ]
	
	
	
