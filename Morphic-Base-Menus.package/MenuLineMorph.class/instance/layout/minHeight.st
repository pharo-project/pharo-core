minHeight
	"answer the receiver's minHeight"
	^ self isInDockingBar
		ifTrue: [owner isVertical
				ifTrue: [2]
				ifFalse: [10]]
		ifFalse: [2]