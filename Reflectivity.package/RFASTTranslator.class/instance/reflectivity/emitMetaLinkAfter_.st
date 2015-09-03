emitMetaLinkAfter: aNode
	aNode hasMetalinkAfter ifFalse: [ ^self ].
	methodBuilder blockReturnTop.
	methodBuilder jumpAheadTarget: #block.		
	self visitNode: aNode afterHooks.
	methodBuilder send: #ensure:.