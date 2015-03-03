whenActionChanged: aBlock
	"Set a block to performed when the action is changed"
	self deprecated: 'Instead of using aModel whenActionChanged: aBlock, use aModel actionHolder whenChangedDo: aBlock.'.
	action whenChangedDo: aBlock