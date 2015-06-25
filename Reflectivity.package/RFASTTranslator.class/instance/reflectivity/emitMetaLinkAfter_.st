emitMetaLinkAfter: anNode
	anNode hasMetalink ifFalse: [ ^self ].
	anNode afterHooks do: [ :hook | effectTranslator visitNode: hook].