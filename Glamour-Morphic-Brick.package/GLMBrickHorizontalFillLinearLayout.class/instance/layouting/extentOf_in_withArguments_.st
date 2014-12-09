extentOf: aBrick in: owner withArguments: aHashTable
	
	^ (self originalWidthOf: aBrick)@(owner brickInnerBounds height - aBrick layoutProperties verticalMargin)