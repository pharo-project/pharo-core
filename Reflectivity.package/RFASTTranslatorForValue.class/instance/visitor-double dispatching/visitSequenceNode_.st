visitSequenceNode: aSequenceNode 
	| statements |
	self emitMetaLinkBefore: aSequenceNode.
	self emitPrepareLinkAfter: aSequenceNode.
	statements := aSequenceNode statements.
	statements ifEmpty: [
		methodBuilder pushLiteral: nil.
		^self].
	statements allButLastDo: [:each | effectTranslator visitNode: each].
	self visitNode: statements last.
	self emitMetaLinkAfter: aSequenceNode.