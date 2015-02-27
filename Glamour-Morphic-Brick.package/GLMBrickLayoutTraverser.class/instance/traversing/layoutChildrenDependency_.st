layoutChildrenDependency: aBrick
	
	"we need to calculate sizes of all subbricks"
	self layoutChildrenOf: aBrick.
	"first we calculate corresponding dimension"
	self updateDimension: aBrick.
	"after everything is done we can mark dimension as clean"
	self markClean: aBrick.
	"because my dimension changed, maybe my owner would like to adapt"
	self layoutOwnerOf: aBrick