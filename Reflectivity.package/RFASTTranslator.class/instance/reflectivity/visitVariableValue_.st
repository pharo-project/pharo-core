visitVariableValue: aVariable
	aVariable isGlobal ifTrue: [self emitMetaLinkBefore: aVariable].
	aVariable emitValue: methodBuilder.