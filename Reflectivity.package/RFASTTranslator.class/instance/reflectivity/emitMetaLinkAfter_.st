emitMetaLinkAfter: aNode
	aNode hasMetalinkAfter ifFalse: [ ^self ].
	methodBuilder blockReturnTop.
	methodBuilder jumpAheadTarget: #block.		
	valueTranslator visitNode: aNode afterHooks.
	methodBuilder send: #ensure:.