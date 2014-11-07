extentOf: aBrick in: owner
	
	^ (owner width - aBrick layoutProperties marginLeft - aBrick layoutProperties marginRight) @ ((owner height * aBrick layoutProperties verticalPercent / 100) ceiling - aBrick layoutProperties marginTop - aBrick layoutProperties marginBottom)