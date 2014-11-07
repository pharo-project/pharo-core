extentOf: aBrick in: owner
	
	^ ((owner width * aBrick layoutProperties horizontalPercent / 100) ceiling - aBrick layoutProperties marginLeft - aBrick layoutProperties marginRight) @ (owner height - aBrick layoutProperties marginTop - aBrick layoutProperties marginBottom)