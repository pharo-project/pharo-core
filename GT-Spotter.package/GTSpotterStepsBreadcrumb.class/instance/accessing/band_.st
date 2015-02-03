band: aBrick

	band := aBrick.
	band layoutPolicy: (GLMBrickHorizontalFillLinearLayout new).
	band width: [ :bandBrick |
		self items isEmpty ifTrue: [ 0 ]
			ifFalse: [ |width|
				width := 0.
				self items do: [ :each | width := width + each width ].
				width + ((self items size - 1) * self themer spotterThemer breadcrumbSeparatorWidth)] ].
	
	self band data: 0.
	self addBrickBack: band.