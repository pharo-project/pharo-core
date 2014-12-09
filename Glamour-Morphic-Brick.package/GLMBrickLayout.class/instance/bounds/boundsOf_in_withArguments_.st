boundsOf: aBrick in: owner withArguments: aHashTable
	
	^ (owner layoutProperties paddingLeft@owner layoutProperties paddingTop) extent: (self extentOf: aBrick in: owner withArguments: aHashTable)