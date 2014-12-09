updateVisibleTop: invisibleBricks
	|before|
	
	before := self band subbricks isEmpty
		ifFalse: [ self band firstSubbrick]
		ifTrue: [ self band addBrickBack: (self getMorphAt: 1 recycled: (self getAndRemoveInvisibleMorph: invisibleBricks)) ].
		
	[ (self isPartiallyVisible: before) and: [ (self getIndex: before) > 1 ] ] whileTrue: [
		before := self
			addItemMorph: (
				self
					getMorphAt: (self getIndex: before) - 1
					recycled: (self getAndRemoveInvisibleMorph: invisibleBricks))
			before: before  ]
	