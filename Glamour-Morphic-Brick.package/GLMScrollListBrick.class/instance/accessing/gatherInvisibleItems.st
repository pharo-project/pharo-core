gatherInvisibleItems

	self band submorphs isEmpty ifTrue: [ ^ OrderedCollection new ].
			
	^ (OrderedCollection newFrom: (self band submorphs)) select: [ :each | (self isPartiallyVisible: each) not ]