materializing
materializeHeaderFrom: aStream

	| aDecoder materialization header |
	aDecoder := FLDecoder on: aStream migrations: migrations.
	self verifySignatureFrom: aDecoder.
	self verifyVersionFrom: aDecoder.
	^ (materializationFactory value: aDecoder) root.
	