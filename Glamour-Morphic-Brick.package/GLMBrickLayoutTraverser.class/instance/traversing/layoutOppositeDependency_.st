layoutOppositeDependency: aBrick

	self opposite layoutAround: aBrick inContext: nil.
	self flag: 'set my size depending from opposite dimension'.
	self markClean: aBrick.
	self layoutChildrenOf: aBrick.
	self layoutOwnerOf: aBrick