events
mouseMove: evt
	| index |

	"Check if the mouse is currently dragging an object"
	evt isDraggingEvent ifFalse: [ ^ super mouseMove: evt  ].

	"Check if we are interested in this object"
	self dropEnabled ifFalse: [ ^ super mouseMove: evt ].
	(self wantsDroppedMorph: (evt hand submorphs at: 1 ifAbsent: [ ^ super mouseMove: evt ]) event: evt ) ifFalse: [ ^ super mouseMove: evt ].
	self isScrolling ifTrue: [ ^ self ].
	index := self indexAtLocation: evt position.
	self potentialDropIndex: index.
	
	(evt position y > (self topDifference + self headerHeight-10) and: [evt position y < (self topDifference + self headerHeight + 10)])
		ifTrue: [ self startStepping ].
		
	(evt position y  > (self topDifference - self headerHeight + self listSource height - 5))
		ifTrue: [ self startStepping ].