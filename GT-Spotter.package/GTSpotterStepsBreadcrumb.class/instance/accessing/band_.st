band: aBrick

	band := aBrick.
	band layoutPolicy: (GLMBrickHorizontalFillLinearLayout new).
	band widthBlock: [ :bandBrick |
		self items isEmpty ifTrue: [ 0 ]
			ifFalse: [ |width|
				width := 0.
				self items do: [ :each | width := width + each width + each layoutProperties marginRight ].
				width - self items last layoutProperties marginRight ] ].
	
	self band data: 0.
	self addBrickBack: band.