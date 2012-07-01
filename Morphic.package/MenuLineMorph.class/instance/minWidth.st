layout
minWidth
	"answer the receiver's minWidth"
	^ self isInDockingBar
		ifTrue: [owner isVertical
				ifTrue: [10]
				ifFalse: [2]]
		ifFalse: [10]