printing
storeOn: aStream

	aStream << self class name << ' name: '<< self name printString <<' code: '.
	self code storeOn: aStream.
	self runOnce ifTrue: [ aStream << ' runOnce: true']