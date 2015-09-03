emitMetaLinkAfterNoEnsure: aNode

	aNode hasMetalinkAfter ifFalse: [ ^self ].
	aNode afterHooks do: [ :each | effectTranslator visitNode: each body ].