boundsOf: aBrick in: owner withArguments: aHashTable
	
	^ (super boundsOf: aBrick in: owner withArguments: aHashTable) translateBy: (owner scrollValue@ 0).