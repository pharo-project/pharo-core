navigation
nextPage: newLast
	| addedNodeList |
	self lastIndex < self nodeList size
		ifTrue: [addedNodeList := self nodeList copyFrom: self lastIndex + 1 to: newLast.
			self lastIndex: newLast.
			treeMorph addSubmorphsFromNodeList: addedNodeList previouslyExpanded: treeMorph currentlyExpanded]