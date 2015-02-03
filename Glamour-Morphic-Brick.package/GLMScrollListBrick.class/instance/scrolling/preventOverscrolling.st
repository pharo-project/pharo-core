preventOverscrolling

	self band hasSubbricks ifFalse: [ ^ self ].

	self isFirstAdded & self isFirstVisible ifTrue: [
			(self topOffset > 0) ifTrue: [
				self moveAllSubbricksBy: self topOffset negated.
				self moveBandTop.
				^ self update ] ].
	
	self isTopOverscrolled
		ifTrue: [ self moveBandTop. ^ self update ].
	self isBottomOverscrolled & (self isFullyVisible not)
		ifTrue: [ self moveBandBottom. ^ self update ]