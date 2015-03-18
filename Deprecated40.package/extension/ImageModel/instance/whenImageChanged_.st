whenImageChanged: aBlock
	"Set a block to performed when the image is changed"
	self deprecated: 'Instead of using aModel whenImageChanged: aBlock, use aModel imageHolder whenChangedDo: aBlock.'.
	imageHolder whenChangedDo: aBlock