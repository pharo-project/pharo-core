layoutMyselftDependency: aBrick
	
	"immidiately set my dimension"
	self updateDimension: aBrick.
	self markClean: aBrick.
	self layoutChildrenOf: aBrick.
	self layoutOwnerOf: aBrick