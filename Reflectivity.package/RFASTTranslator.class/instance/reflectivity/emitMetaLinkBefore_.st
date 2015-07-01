emitMetaLinkBefore: aNode
	aNode hasMetalink ifFalse: [ ^self ].
	self emitPreamble: aNode.
	aNode beforeHooks do: [ :hook | effectTranslator visitNode: hook ].