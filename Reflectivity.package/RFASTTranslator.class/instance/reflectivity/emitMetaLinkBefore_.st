emitMetaLinkBefore: aNode
	aNode hasMetalink ifFalse: [ ^self ].
	aNode preambles do: [ :pre | self visitNode: pre].
	aNode beforeHooks do: [ :hook | effectTranslator visitNode: hook ].