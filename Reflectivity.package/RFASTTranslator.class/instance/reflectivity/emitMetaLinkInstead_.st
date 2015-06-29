emitMetaLinkInstead: aNode
	aNode preambles do: [ :pre | self visitNode: pre].
	super visitNode: aNode insteadHooks last.