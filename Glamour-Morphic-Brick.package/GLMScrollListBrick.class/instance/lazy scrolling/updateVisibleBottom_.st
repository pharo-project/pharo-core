updateVisibleBottom: invisibleBricks
	|after|
	
	after := self band lastSubbrick.
	
	[ (self isPartiallyVisible: after) and: [ (self getIndex: after) < self adaptor count ] ] whileTrue: [
		after := self
			addItemMorph: (
				self
					getMorphAt: (self getIndex: after) + 1
					recycled: (self getAndRemoveInvisibleMorph: invisibleBricks))
			after: after ]
