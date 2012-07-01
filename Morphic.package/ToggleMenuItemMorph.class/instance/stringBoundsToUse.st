accessing
stringBoundsToUse
	"Answer the bounds to use when drawing the item text."
	
	^self isInDockingBar
		ifTrue: [self bounds left: self left + 4]
		ifFalse: [self bounds]