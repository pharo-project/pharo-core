emitMetaLinkBefore: anNode
	anNode hasMetalink ifFalse: [ ^self ].
	anNode preambles do: [ :pre | self visitNode: pre].
	anNode beforeHooks do: [ :hook | effectTranslator visitNode: hook ].