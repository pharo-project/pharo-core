visiting
visitArgument: aNode 
	| value |
	value := self performSearches: argumentSearches on: aNode.
	^value isNil 
		ifTrue: 
			[aNode acceptVisitor: self.
			aNode]
		ifFalse: [value]