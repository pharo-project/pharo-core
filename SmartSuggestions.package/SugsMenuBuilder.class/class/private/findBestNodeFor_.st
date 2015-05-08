findBestNodeFor: context
	| root node |
	context hasUnacceptedEdits
		ifTrue: [ 
			root := OpalCompiler new
				source: context code;
				useFaultyForParsing: true;
				parse.
			context selectedClass ifNotNil: [ :theClass | root methodNode methodClass: theClass ].
			root doSemanticAnalysis ]
		ifFalse: [ root := context selectedMethod ast ].
	node := root bestNodeFor: context selectedInterval.
	context selectedNode: node.
	^ node