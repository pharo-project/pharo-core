matching
createBlockFor: aRBBlockNode 
	| source |
	self replacePatternNodesIn: aRBBlockNode.
	source := aRBBlockNode formattedCode.
	^Compiler 
		evaluate: source
		for: self
		logged: false