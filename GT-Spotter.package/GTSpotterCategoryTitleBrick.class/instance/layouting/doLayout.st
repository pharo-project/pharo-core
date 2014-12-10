doLayout
	
	super doLayout.
	
	self amountBrick isDotsAdded ifTrue: [
		self amountBrick layoutProperties horizontalPercent: 0.
		self layoutProperties paddingLeft: (((self width - self nameBrick width) / 2) ceiling max: 0).
		super doLayout ].