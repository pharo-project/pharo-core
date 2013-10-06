visitSequenceNode: aSequenceNode
	aSequenceNode temporaries do: [:node | self declareVariableNode: node].
	
	aSequenceNode parent isMethod ifTrue: [ 
	(aSequenceNode parent pragmas detect: [:pragma | pragma isPrimitiveError] ifNone: [nil]) ifNotNil: [:pragma |
		self declareVariableNode: (RBVariableNode named: pragma arguments last value asString)]].
	aSequenceNode statements do: [:each | self visitNode: each].
	aSequenceNode temporaries do: [:node |
		node binding isUnused ifTrue: [self unusedVariable: node]].
 