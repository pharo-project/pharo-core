transforming
placeholderNode
	| node |
	node := RBParseTreeSearcher treeMatching: self methodDelimiter
				in: modifiedParseTree.
	node isNil ifTrue: [self refactoringError: 'Cannot extract code'].
	^node