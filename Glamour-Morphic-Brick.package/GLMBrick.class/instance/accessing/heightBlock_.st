heightBlock: aBlock
	"you can use a block to 'fake' a height or replace it's calculation logic without extending a brick"
	self setProperty: #brickHeightBlock toValue: aBlock