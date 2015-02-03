extentOf: aBrick in: owner withArguments: aHashTable
	|extent|
	extent := super extentOf: aBrick in: owner withArguments: aHashTable.
	^ (extent x)@(owner innerBounds height - aBrick layoutProperties verticalMargin)