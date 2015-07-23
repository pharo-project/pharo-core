installOn: aNode 
	nodes add: aNode.
	(aNode methodNode pragmas select: [ :pragma | pragma selector == #metaLinkOptions:]) 
		do: [ :pragma | pragma asPragma sendTo: self ]