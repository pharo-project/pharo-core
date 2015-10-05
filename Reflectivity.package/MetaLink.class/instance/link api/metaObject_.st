metaObject: anObject
	metaObject := anObject.
	nodes do: [ :node | 
		(node methodNode metaLinkOptionsFromClassAndMethod includes: #optionInlineMetaObject) ifTrue: [ self invalidate ] ].
	self optionInlineMetaObject ifTrue: [self invalidate].
	