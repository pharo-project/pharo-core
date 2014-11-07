widthBlock: aBlock
	"you can use a block to 'fake' a width or replace it's calculation logic without extending a brick"
	self setProperty: #brickWidthBlock toValue: aBlock