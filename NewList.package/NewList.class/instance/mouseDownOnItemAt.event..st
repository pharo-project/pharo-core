events - mouse
mouseDownOnItemAt: index event: anEvent
	
	| item |
	item := self itemAtIndex: index.
	(item respondsTo: #mouseDown:)
		ifTrue: [ item mouseDown: anEvent ]