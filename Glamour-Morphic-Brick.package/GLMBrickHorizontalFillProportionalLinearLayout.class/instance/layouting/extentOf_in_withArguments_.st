extentOf: aBrick in: owner withArguments: aHashTable
	|extent|
	extent := super extentOf: aBrick in: owner withArguments: aHashTable.
	^ (extent x)@(owner brickInnerBounds height - aBrick layoutProperties verticalMargin)