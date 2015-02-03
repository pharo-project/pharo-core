extentOf: aBrick in: owner withArguments: aHashTable
	|extent|
	extent := super extentOf: aBrick in: owner withArguments: aHashTable.
	^ (owner innerBounds width - aBrick layoutProperties horizontalMargin)@(extent y)