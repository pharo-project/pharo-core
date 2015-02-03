boundsOf: aBrick in: owner withArguments: aHashTable
	
	^ (owner paddingLeft@owner paddingTop) extent: (self extentOf: aBrick in: owner withArguments: aHashTable)