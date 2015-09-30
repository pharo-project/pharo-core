metaObject: anObject
	metaObject := anObject.
	self optionInlineMetaObject ifTrue: [self invalidate].
	