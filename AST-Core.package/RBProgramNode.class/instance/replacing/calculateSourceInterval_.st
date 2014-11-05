calculateSourceInterval: aNode
	| replaceDifference |
	aNode start: self start.
	aNode comments: self comments.
	aNode stop: aNode start + (self calculateInnerCommentsSize: aNode) + aNode formattedCode size - 1.
	replaceDifference := aNode stop - self stop.
	self checkMessageNodesIn: aNode withDifference: replaceDifference with: aNode method body