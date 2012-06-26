layout
minHeight: aNumber 
	aNumber isNil 
		ifTrue: [self removeProperty: #minHeight]
		ifFalse: [self setProperty: #minHeight toValue: aNumber].
	self layoutChanged