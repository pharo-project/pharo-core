minWidth
	"answer the receiver's minWidth"
	^ self isInDockingBar
		ifTrue: [owner isVertical
				ifTrue: [10]
				ifFalse: [ self theme menuBorderWidth ] ]
		ifFalse: [ 10 ]