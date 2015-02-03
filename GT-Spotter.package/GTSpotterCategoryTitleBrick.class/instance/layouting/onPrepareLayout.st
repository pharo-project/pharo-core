onPrepareLayout
	super onPrepareLayout.
	
	self amountBrick layoutProperties horizontalPercent: 100.
	self layoutProperties paddingLeft: (self themer spotterThemer categoryNameMarginLeft).
	self disable.