layoutChildren

	|mBounds mOwner|
	"most of the time you don't want to call this method manually"
	"nice example to check is GLMLabelBrick>>doLayout"
	
	mOwner := self owner ifNil: [ self ] ifNotNil: [ self owner ].
	mBounds := mOwner isBrick ifTrue: [ mOwner globalInnerBounds ] ifFalse: [ mOwner globalBounds ].
	
	^ self layoutPolicy layout: self in: mBounds.