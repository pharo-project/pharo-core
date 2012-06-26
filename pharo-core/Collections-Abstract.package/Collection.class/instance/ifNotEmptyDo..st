testing
ifNotEmptyDo: aBlock
	"Evaluate the given block with the receiver as its argument."

	self isEmpty ifFalse: [^ aBlock value: self].
