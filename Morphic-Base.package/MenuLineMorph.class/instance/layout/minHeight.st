minHeight
	"answer the receiver's minHeight"
	^ self isInDockingBar
		ifTrue: [owner isVertical
				ifTrue: [ self theme menuBorderWidth ]
				ifFalse: [10]]
		ifFalse: [ self theme menuBorderWidth ]