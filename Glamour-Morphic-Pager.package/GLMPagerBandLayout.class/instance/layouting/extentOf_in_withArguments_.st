extentOf: aBrick in: owner withArguments: aHashTable
	
	^ (owner width / (owner subbricksCount) - aBrick layoutProperties horizontalMargin)@(owner innerBounds height - aBrick layoutProperties verticalMargin)