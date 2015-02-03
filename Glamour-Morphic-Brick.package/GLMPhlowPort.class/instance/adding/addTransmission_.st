addTransmission: aTransmission

	(self transmissions includes: aTransmission) ifTrue: [ ^ self ].
	self transmissions add: aTransmission