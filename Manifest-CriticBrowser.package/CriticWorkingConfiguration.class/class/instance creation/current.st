current

	^ Current ifNil: [ Current  := self basicNew initialize ].