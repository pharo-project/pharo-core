getAndRemoveInvisibleMorph: aCollection
	|brick|
	brick := self retrieveLast: aCollection.
	^ brick ifNotNil: [ self band removeBrick: brick. brick morph ]