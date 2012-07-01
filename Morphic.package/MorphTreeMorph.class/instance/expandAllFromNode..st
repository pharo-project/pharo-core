expanding-collapsing
expandAllFromNode: aNode
	Cursor wait showWhile: [
		self expandAll: ((self nodeMorphOfNode: aNode) ifNil: [^self]).
		self adjustSubmorphPositions]
