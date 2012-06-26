accessing
ifNotNilDo: aBlock ifNil: nilBlock
	"Evaluate aBlock with the receiver as its argument."

	^ aBlock value: self
