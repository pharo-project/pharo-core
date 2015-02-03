addOrigin: anObject
	"anObject must be a GLMPhlowOrigin"
	
	(self origins includes: anObject) ifTrue: [ ^ self ].
	"registering new origin"
	self origins add: anObject.
	"adding myself to the outgoing transmissions of origin"
	anObject phlowObject addTransmission: self from: anObject slot name