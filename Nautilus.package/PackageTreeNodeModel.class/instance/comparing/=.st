= aNode 
	self class = aNode class ifFalse: [ ^ false ].
	^ self item = aNode item.