visitVariableValue: aVariable
	self flag: #TBD. "needs to be extendend to other kinds of variables and cleaned"
	(aVariable isKindOf: Slot) ifTrue: [self emitMetaLinkBefore: aVariable].
	aVariable isGlobal ifTrue: [self emitMetaLinkBefore: aVariable].
	aVariable emitValue: methodBuilder.