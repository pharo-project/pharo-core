extentOf: aBrick in: owner withArguments: aHashTable
	
	^ (self originalWidthOf: aBrick)@(owner innerBounds height - aBrick layoutProperties verticalMargin)