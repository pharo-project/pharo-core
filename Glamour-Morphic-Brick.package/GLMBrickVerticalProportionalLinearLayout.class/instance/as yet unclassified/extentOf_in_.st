extentOf: aBrick in: owner
	
	^ (aBrick width) @ ((owner height * aBrick layoutProperties verticalPercent / 100) ceiling - aBrick layoutProperties marginTop - aBrick layoutProperties marginBottom)