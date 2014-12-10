boundsOf: aBrick in: owner withArguments: aHashTable
	
	^ (aBrick brickBounds origin) extent: (self extentOf: aBrick in: owner withArguments: aHashTable)