layout
minWidth: aNumber 
	aNumber isNil 
		ifTrue: [self removeProperty: #minWidth]
		ifFalse: [self setProperty: #minWidth toValue: aNumber].
	self layoutChanged