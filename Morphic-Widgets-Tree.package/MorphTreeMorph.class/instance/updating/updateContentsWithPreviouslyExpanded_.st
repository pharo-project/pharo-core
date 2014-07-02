updateContentsWithPreviouslyExpanded: aNodeList
	nodeList := nil.
	self noteRemovalOfAll: self allNodeMorphs.
	(self nodeList isNil or: [self nodeList isEmpty]) 
		ifTrue: [nodeList := nil.	
		^ self emptySelection].
	self addSubmorphsFromNodeList: self currentNodelist  previouslyExpanded: aNodeList.
