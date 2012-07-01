visiting
visitNode: aNode 
	| value |
	value := self performSearches: searches on: aNode.
	^value isNil 
		ifTrue: 
			[aNode acceptVisitor: self.
			aNode]
		ifFalse: [value]