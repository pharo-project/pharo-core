extentOf: aBrick in: owner withArguments: aHashTable
	
	^ (owner innerBounds width - aBrick layoutProperties horizontalMargin)@(self originalHeightOf: aBrick)