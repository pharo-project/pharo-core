onPrepareLayout
	super onPrepareLayout.
	
	self amountBrick layoutProperties horizontalPercent: 100.
	self layoutProperties paddingLeft: (self theme spotterWidgetThemer categoryNameMarginLeft).
	self disable.