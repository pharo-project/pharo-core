doLayout
	"contolls logic of text schrinking"
	|isFit|
	
	super doLayout.
	
	"checking if label text fits in me"
	isFit := self label isFitsInParent.
	
	(isFit & (self isDotsAdded not)) ifTrue: [ ^ self ].
	(isFit not & self isDotsAdded) ifTrue: [ ^ self ].
	
	(isFit & self isDotsAdded) ifTrue: [
		self removeBrick: self dotsBrick.
		isDotsAdded := false.
		super doLayout.
	] ifFalse: [ 
		self addBrickBack: self dotsBrick.
		isDotsAdded := true.
		super doLayout.
	]
	