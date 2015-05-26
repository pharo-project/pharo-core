whenTextChanged: aBlock
	self deprecated: 'Instead of using aModel whenTextChanged: aBlock, use aModel labelHolder whenChangedDo: aBlock.'.
	self whenLabelChanged: aBlock