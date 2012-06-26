accessing
ifNil: nilBlock ifNotNilDo: aBlock 
	"Evaluate aBlock with the receiver as its argument."

	^ aBlock value: self
