updateVisible
	|invisible|
	
	self adaptor ifNil: [ ^ self ].
	self adaptor count = 0 ifTrue: [ ^ self ].
	
	invisible := self gatherInvisibleItems.
	invisible = self band subbricks & invisible isEmpty not ifTrue: [ ^ self ].
	
	self updateVisibleTop: invisible.
	self updateVisibleBottom: invisible.
	
	invisible do: [ :each | self band removeBrick: each ].
	
	visibleIndex := self getIndex: self band firstSubbrick 