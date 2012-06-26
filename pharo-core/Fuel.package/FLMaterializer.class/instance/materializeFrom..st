materializing
materializeFrom: aStream

	| aDecoder |
	aDecoder := FLDecoder on: aStream migrations: migrations.
	self verifySignatureFrom: aDecoder.
	self verifyVersionFrom: aDecoder.
	^ materializationFactory value: aDecoder