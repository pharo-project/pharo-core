whenLabelChanged: aBlock
	"Set a block to performed when the text is changed"
	self deprecated: 'Instead of using aModel whenLabelChanged: aBlock, use aModel labelHolder whenChangedDo: aBlock.'.
	
	labelHolder whenChangedDo: aBlock 