accessing
executeTree: aParseTree 
	| oldContext |
	oldContext := context.
	context := RBSmallDictionary new.
	answer := false.
	tree := self visitNode: aParseTree.
	context := oldContext.
	^answer