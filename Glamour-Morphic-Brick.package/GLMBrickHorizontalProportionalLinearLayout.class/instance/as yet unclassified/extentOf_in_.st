extentOf: aBrick in: owner
	
	^ ((owner width * aBrick layoutProperties horizontalPercent / 100) ceiling - aBrick layoutProperties marginLeft - aBrick layoutProperties marginRight) @ (aBrick height)