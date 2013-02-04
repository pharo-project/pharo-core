events - mouse
mouseUpOnItemAt: index event: anEvent
	
	| item |
	index isZero ifTrue: [ ^ self ].
	index > self listSize ifTrue: [ ^ self ].
	item := self itemAtIndex: index.
	(item respondsTo: #mouseDown:)
		ifTrue: [ item mouseDown: anEvent ]