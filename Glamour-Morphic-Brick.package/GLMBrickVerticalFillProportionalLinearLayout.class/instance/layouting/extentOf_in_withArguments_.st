extentOf: aBrick in: owner withArguments: aHashTable
	|extent|
	extent := super extentOf: aBrick in: owner withArguments: aHashTable.
	^ (owner brickInnerBounds width - aBrick layoutProperties horizontalMargin)@(extent y)