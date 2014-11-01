calculateSourceInterval: aNode
	| replaceDifference |
	aNode start: self start.
	aNode comments: self comments.
	aNode stop: aNode start + (self calculateInnerCommentsSize: aNode) + aNode formattedCode size - 1.
	replaceDifference := aNode stop - self stop.
	aNode method body allChildren
		do: [ :each | 
			(each children isEmpty and: [ each start > aNode start ])
				ifTrue: [ each start: each start + replaceDifference ] ].
	self checkMessageNodesIn: aNode withDifference: replaceDifference with: aNode method body