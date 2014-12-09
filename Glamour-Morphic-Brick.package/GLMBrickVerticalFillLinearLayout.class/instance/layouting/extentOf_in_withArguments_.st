extentOf: aBrick in: owner withArguments: aHashTable
	
	^ (owner brickInnerBounds width - aBrick layoutProperties horizontalMargin)@(self originalHeightOf: aBrick)