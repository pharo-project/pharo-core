private
findFileListIndex: aMorphTreeSelectionChanged 
	| node |
	node := aMorphTreeSelectionChanged selection selectedNodePath first.
	self fileListIndex: (self fileList indexOf: node item).
