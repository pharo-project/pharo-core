indexForItem: each
	^ (self itemFilterNameFor: each) findString: (self queryForItem: each) startingAt: 1 caseSensitive: self caseSensitive